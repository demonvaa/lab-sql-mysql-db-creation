USE lab_mysql;
INSERT INTO cars (vin, manufacturer, model, car_year, color)
VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers 
(name, phone_number, email, address, city, state_province, country, zip_postal_code)
VALUES
('Pablo Picasso', '+34 636 17 63 82', NULL , 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
( 'Abraham Lincoln', '+1 305 907 7086', NULL , '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
( 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL , '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

# Si tu tabla Customers tiene AUTO_INCREMENT , No te dejará insertar IDs manuales.
# VA A DAR FALLO POR EL - de email

INSERT INTO salespersons (name, store)
VALUES
('Petey Cruiser', 'Madrid'),
('Anna Sthesia', 'Barcelona'),
('Paul Molive', 'Berlin'),
('Gail Forcewind', 'Paris'),
('Paige Turner', 'Mimia'),
( 'Bob Frapples', 'Mexico City'),
( 'Walter Melon', 'Amsterdam'),
( 'Shonda Leer', 'São Paulo');

# Si tu tabla "Salespersons" tiene AUTO_INCREMENT , No te dejará insertar IDs manuales.


INSERT INTO invoices (invoice_number, invoice_date, car_id, customer_id, staff_id)
VALUES
(852399038, '2018-08-22', 1, 1, 3),
(731166526, '2018-12-31', 3, 2, 5),
(271135104, '2019-01-22', 2, 3, 7);
	


