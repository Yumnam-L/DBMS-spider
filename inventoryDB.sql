CREATE DATABASE inventoryDB;
USE inventoryDB;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(150),
    price DECIMAL(10, 2),
    quantity INT,
    category VARCHAR(150)
);

DESCRIBE products;

INSERT INTO products (name, description, price, quantity, category) VALUES 
('Apple', 'Fresh', 10.50, 100, 'Fruits'),
('Brocolli', 'Fresh', 20.75, 200, 'Vegetable'),
('Banana', 'Fresh', 30.00, 150, 'Fruits'),
('Strawberry', 'Ripe', 40.25, 250, 'Fruits'),
('Tomato', 'Ripe', 50.00, 300, 'Vegetable');

SELECT * FROM products;

SELECT * FROM products WHERE price < 30.00;

SELECT * FROM products WHERE quantity > 200;

UPDATE products SET price = 15.00 WHERE name = 'Apple';

DELETE FROM products WHERE name = 'Tomato';

