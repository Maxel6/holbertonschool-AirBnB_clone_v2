-- Script that prepares a MySQL server

CREATE DATABASE IF NOT EXISTS hbnb_test_db;

-- Create the user if it does not exist, and set the password
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';

-- Grant all privileges to the user
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';

GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';

-- Make sure the privileges are applied immediately
FLUSH PRIVILEGES;
