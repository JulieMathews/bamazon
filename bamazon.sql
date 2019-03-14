DROP DATABASE IF EXISTS bamazonDB;
CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE products (
    item_ID INT NOT NULL AUTO_INCREMENT,
    product_Name VARCHAR(45) NOT NULL,
    department_Name VARCHAR(45) NOT NULL,
    price MONEY NOT NULL,
    stock_quantity INT NOT NULL,
    PRIMARY KEY (item_ID),
);

INSERT INTO products (product_Name)
    VALUES 
    (Banana),
    (Apple),
    (Kiwi),
    (Orange),
    (Starfruit),
    (Strawberry),
    (Lemon),
    (Cherry),
    (Grape),
    (Papya);