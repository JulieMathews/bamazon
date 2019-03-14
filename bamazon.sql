DROP DATABASE IF EXISTS Bamazon_DB;
CREATE DATABASE Bamazon_DB;

USE Bamazon_DB;

CREATE TABLE products (
	item_ID INTEGER(11) AUTO_INCREMENT NOT NULL,
    product_Name VARCHAR(45) NOT NULL,
    department_Name VARCHAR(45) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT(10) NOT NULL,
    PRIMARY KEY (item_ID)
);

INSERT INTO products (product_Name, department_Name, price, stock_quantity)
    VALUES 
    ('Apples', 'Fruit', 1, 150),
    ('Pillows', 'Bedding', 5, 200),
    ('Fans', 'Office', 10, 150),
    ('Hats', 'Clothing', 15, 120),
    ('Toothpaste', 'Bath', 2, 150),
    ('Picture Frames', 'Home', 15, 110),
    ('Dolls', 'Toys', 10, 110),
    ('Remotes', 'Electronics', 10, 150),
    ('Shovels', 'Gardening', 5, 150),
    ('Mixers', 'Kitchen', 100, 150);