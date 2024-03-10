
# /usr/local/mysql/bin/mysql -u root -p

CREATE DATABASE IF NOT EXISTS manimdata;


USE manimdata;


CREATE TABLE users(
   userid INT AUTO_INCREMENT PRIMARY KEY,
   username VARCHAR(255) NOT NULL,
   password VARCHAR(255) NOT NULL,
   videos_count INT,
   colors VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS videos (
   videoID INT AUTO_INCREMENT PRIMARY KEY,
   userID INT,
   title VARCHAR(255),
   videos_count INT,
   colors VARCHAR(255),
   FOREIGN KEY (userID) REFERENCES users(userid)
);


INSERT INTO users (userid, username, password)
VALUES (12,'John', 'blue');


