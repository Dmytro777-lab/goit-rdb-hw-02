-- CREATE DATABASE goit_rdb_hw02;
USE goit_rdb_hw02;

CREATE TABLE clients(
client_id  INT PRIMARY KEY,
client_name VARCHAR(100) NOT NULL,
address VARCHAR(255) NOT NULL
);

CREATE TABLE orders(
order_id INT PRIMARY KEY,
order_date DATE NOT NULL,
client_id INT NOT NULL,
FOREIGN KEY( client_id ) REFERENCES clients(client_id)
);

CREATE TABLE order_items (
    order_id INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, product_name),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
); 