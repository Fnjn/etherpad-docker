CREATE USER 'etherpaduser'@'localhost' IDENTIFIED BY 'PASSWORD';
CREATE DATABASE `etherpad_lite_db` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
GRANT ALL PRIVILEGES ON etherpad_lite_db. * TO 'etherpaduser'@'localhost';
FLUSH PRIVILEGES;
