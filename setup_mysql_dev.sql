-- Script that prepares a MySQL server

CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

-- Create the user if it does not exist, and set the password
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

-- Grant all privileges to the user
GRANT ALL PRIVILEGES ON hbnb_dev.* TO 'hbnb_dev'@'localhost';

GRANT SELECT performance_schema.* TO 'hbnb_dev'@'localhost';

-- Make sure the privileges are applied immediately
FLUSH PRIVILEGES;
