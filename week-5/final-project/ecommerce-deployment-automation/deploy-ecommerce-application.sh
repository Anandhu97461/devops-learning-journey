#!/bin/bash
# deploy_ECommerce_Application.sh
# This script deploys the ECommerce Application by installing and configuring
########################################
# Function: print_color
# Description: Print a message in a specified color.
# Usage: print_color "green" "Your message here"
########################################
function print_color(){
  NC='\033[0m'  # No Color
  case $1 in
    "green") COLOR='\033[0;32m' ;;
    "red")   COLOR='\033[0;31m' ;;
    *)       COLOR='\033[0m' ;;
  esac
  echo -e "${COLOR}$2${NC}"
}


########################################
# Function: check_service_status
# Description: Check if a service is active.
# Usage: check_service_status firewalld
########################################
function check_service_status(){
  service_name=$1
  is_active=$(systemctl is-active "$service_name")
  if [ "$is_active" = "active" ]; then
    print_color "green" "$service_name Service is active"
  else
    print_color "red" "$service_name Service is not active"
    exit 1
  fi
}


########################################
# Function: check_firewalld_port
# Description: Verify that a given port is configured in the public zone firewall.
# Usage: check_firewalld_port "3306"
########################################
function check_firewalld_port(){
  port=$1
  firewall_ports=$(sudo firewall-cmd --list-all --zone=public | grep ports)
  if [[ $firewall_ports == *"$port"* ]]; then
    print_color "green" "Port $port is configured in the firewall"
  else
    print_color "red" "Port $port is not configured in the firewall"
    exit 1
  fi
}


########################################
# Function: check_item
# Description: Check if a specific item appears in the web page content.
# Usage: check_item "$web_page_content" "Laptop"
########################################
function check_item(){
  web_page_content="$1"
  item="$2"
  if [[ "$web_page_content" == *"$item"* ]]; then
    print_color "green" "Item '$item' is present on the web page"
  else
    print_color "red" "Item '$item' is not present on the web page"
  fi
}


#############################
# Database and Service Setup
#############################


# Install and configure Firewalld
print_color "green" "Installing and starting firewalld..."
sudo yum install -y firewalld
sudo service firewalld start
sudo systemctl enable firewalld
check_service_status firewalld


# Install and configure MariaDB
print_color "green" "Installing and starting MariaDB..."
sudo yum install -y mariadb-server
sudo service mariadb start
sudo systemctl enable mariadb
check_service_status mariadb


# Configure firewall for MariaDB (port 3306)
print_color "green" "Adding firewall rule for MariaDB (port 3306)..."
sudo firewall-cmd --permanent --zone=public --add-port=3306/tcp
sudo firewall-cmd --reload
check_firewalld_port "3306"


# Configure the Database
print_color "green" "Configuring the database..."
cat > configure-db.sql <<EOF
CREATE DATABASE ecomdb;
CREATE USER 'ecomuser'@'localhost' IDENTIFIED BY 'ecompassword';
GRANT ALL PRIVILEGES ON *.* TO 'ecomuser'@'localhost';
FLUSH PRIVILEGES;
EOF
sudo mysql < configure-db.sql


# Load inventory data into the database
print_color "green" "Loading inventory data into the database..."
cat > db-load-script.sql <<EOF
USE ecomdb;
CREATE TABLE products (
  id mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  Name varchar(255) DEFAULT NULL,
  Price decimal(10,2) DEFAULT NULL,
  ImageUrl varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);
INSERT INTO products (Name,Price,ImageUrl) VALUES 
  ("Laptop", "100", "c-1.png"),
  ("Drone", "200", "c-2.png"),
  ("VR", "300", "c-3.png"),
  ("Tablet", "5", "c-5.png"),
  ("Watch", "90", "c-6.png"),
  ("Phone", "80", "c-8.png"),
  ("Laptop", "150", "c-4.png");
EOF
sudo mysql < db-load-script.sql


#############################
# Web Server Configuration
#############################


print_color "green" "Installing Apache, PHP, and configuring the web server..."
sudo yum install -y httpd php php-mysql
sudo firewall-cmd --permanent --zone=public --add-port=80/tcp
sudo firewall-cmd --reload
sudo sed -i 's/index.html/index.php/g' /etc/httpd/conf/httpd.conf


sudo service httpd start
sudo systemctl enable httpd
check_service_status httpd


print_color "green" "Cloning application repository..."
sudo yum install -y git
sudo git clone https://github.com/kodekloudhub/learning-app-ecommerce.git /var/www/html/
sudo sed -i 's/172.20.1.101/localhost/g' /var/www/html/index.php


#############################
# Testing the Deployment
#############################


print_color "green" "Testing the web application..."
web_page=$(curl http://localhost)
for item in "Laptop" "Drone" "VR" "Watch" "Phone"
do
  check_item "$web_page" "$item"
done


print_color "green" "Deployment complete. The ECommerce Application is up and running."