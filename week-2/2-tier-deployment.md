# 2-Tier Application Deployment - Week 2

## Localhost Setup

- Installed Apache, PHP, MariaDB.
- Created database and user.
- Deployed PHP-based e-commerce app to `/var/www/html/`.
- Updated index.php to point to localhost DB.

## Distributed Setup

- Setup web server and DB server on two different Linux systems.
- Changed DB connection from localhost to IP of DB server.
- Allowed remote DB access using `%` in user host:
  ```sql
  CREATE USER 'ecomuser'@'%' IDENTIFIED BY 'ecompassword';