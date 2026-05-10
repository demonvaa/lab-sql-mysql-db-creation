CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Desactivar foreign keys para evitar errores al borrar
SET FOREIGN_KEY_CHECKS = 0; 

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

SET FOREIGN_KEY_CHECKS = 1; 

-- ===========================
-- TABLE: salespersons
-- ===========================
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT NOT NULL,
    staff_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- ===========================
-- TABLE: cars
-- ===========================
CREATE TABLE cars (
    id INT AUTO_INCREMENT NOT NULL,
    vin VARCHAR(20) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

-- ===========================
-- TABLE: customers
-- ===========================
CREATE TABLE customers (
    id INT AUTO_INCREMENT NOT NULL,
    customer_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state_province VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    zip_postal_code VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

-- ===========================
-- TABLE: invoices
-- ===========================
CREATE TABLE invoices (
    id INT AUTO_INCREMENT NOT NULL,
    invoice_number INT NOT NULL,
    date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    staff_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (staff_id) REFERENCES salespersons(id)
);

-- Comprobación opcional
SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM invoices;

