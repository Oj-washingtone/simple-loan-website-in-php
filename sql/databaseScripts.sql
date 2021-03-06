CREATE DATABASE loanApp;

USE loanAPP;

CREATE TABLE IF NOT EXISTS loans(
loanId VARCHAR(1000) NOT NULL PRIMARY KEY UNIQUE,
ID_number INT(255) UNSIGNED NOT NULL,
amount INT(255) NOT NULL,
date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP) ENGINE = InnoDB CHARSET = utf8;

CREATE TABLE IF NOT EXISTS loanRepayments(
id INT(255) NOT NULL PRIMARY KEY AUTO_INCREMENT,
ID_number INT(255) UNSIGNED NOT NULL,
loanId VARCHAR(1000) NULL UNIQUE,
amountPaid INT(255) NOT NULL,
transactionCode VARCHAR(255) NOT NULL UNIQUE,
date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP)ENGINE = InnoDB CHARSET = utf8;

CREATE TABLE IF NOT EXISTS users(
id INT(255) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
surname VARCHAR(50) NOT NULL,
phone INT(255) UNSIGNED NOT NULL UNIQUE,
ID_number INT(255) UNSIGNED NOT NULL UNIQUE,
password VARCHAR(255) NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8;