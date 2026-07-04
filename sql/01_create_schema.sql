CREATE DATABASE SmartWarehouseDB;

USE SmartWarehouseDB;

CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE warehouses (
    warehouse_id INT PRIMARY KEY AUTO_INCREMENT,
    warehouse_name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_id INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL CHECK (unit_price > 0),

    FOREIGN KEY (supplier_id)
        REFERENCES suppliers(supplier_id)
);

CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT NOT NULL,
    warehouse_id INT NOT NULL,
    current_stock INT NOT NULL DEFAULT 0 CHECK (current_stock >= 0),

    FOREIGN KEY (product_id)
        REFERENCES products(product_id),

    FOREIGN KEY (warehouse_id)
        REFERENCES warehouses(warehouse_id)
);





CREATE TABLE purchases (
    purchase_id INT PRIMARY KEY AUTO_INCREMENT,

    supplier_id INT NOT NULL,
    product_id INT NOT NULL,
    warehouse_id INT NOT NULL,

    quantity INT NOT NULL CHECK(quantity > 0),

    purchase_price DECIMAL(10,2) NOT NULL
        CHECK(purchase_price > 0),

    purchase_date DATE NOT NULL,

    FOREIGN KEY (supplier_id)
        REFERENCES suppliers(supplier_id),

    FOREIGN KEY (product_id)
        REFERENCES products(product_id),

    FOREIGN KEY (warehouse_id)
        REFERENCES warehouses(warehouse_id)
);