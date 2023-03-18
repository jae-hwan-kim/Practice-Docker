CREATE DATABASE wordpress;
CREATE USER 'jaekim'@'localhost' IDENTIFIED BY 'jaekim';
GRANT ALL PRIVILEGES ON wordpress.* TO 'jaekim'@'localhost' WITH GRANT OPTION;
USE wordpress;
