-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

CREATE TABLE Category (
    id int NOT PRIMARY KEY NULL AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL
)

CREATE TABLE Product (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(20) NOT NULL,
    stock int NOT NULL DEFAULT 10,
    category_id int NOT NULL
)

CREATE TABLE Tag (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tag_name VARCHAR(100)
)

CREATE TABLE ProductTag (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id int NOT NULL,
    tag_id int NOT NULL
)