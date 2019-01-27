DROP DATABASE IF EXISTS chat;

CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  /* Describe your table here.*/
  user_id INTEGER NOT NULL AUTO_INCREMENT,
  username VARCHAR(100) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (user_id)
);

/* Create other tables and define schemas for them here! */
CREATE TABLE messages (
  messages_id INTEGER NOT NULL AUTO_INCREMENT,
  message VARCHAR(140) NULL,
  user_id_users INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (messages_id)
);

CREATE TABLE rooms (
  rooms_id INTEGER NOT NULL AUTO_INCREMENT,
  roomname VARCHAR(100) NULL,
  PRIMARY KEY (rooms_id)
);

CREATE TABLE friends (
  friend_id INTEGER NOT NULL AUTO_INCREMENT,
  user_id_users INTEGER NULL DEFAULT NULL,
  name VARCHAR(100) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (friend_id)
);
/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

