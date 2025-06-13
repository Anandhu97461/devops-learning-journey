# Databases - Week 2

## Relational Databases (MySQL, MariaDB)

- Installed MySQL and MariaDB.
- Used `systemctl` to enable the service.
- Extracted temporary MySQL password from `/var/log/mysqld.log`.
- Logged in with: `mysql -u root -p`
- Set a new password with:
  ```sql
  SET PASSWORD = 'newpass';
Created a database:

```sql
CREATE DATABASE ecomdb;
Created a user and granted access:

```sql
CREATE USER 'ecomuser'@'localhost' IDENTIFIED BY 'ecompassword';
GRANT ALL PRIVILEGES ON *.* TO 'ecomuser'@'localhost';
NoSQL Databases (MongoDB)
Installed and enabled mongod service.

Log file path: /var/log/mongodb/mongod.log

Configuration file: /etc/mongod.conf

Accessed Mongo shell via mongo

Created DBs and collections:

```js
use devDB
db.createCollection("products")
db.products.insert({ name: "laptop", price: 1200 })
db.products.find()

