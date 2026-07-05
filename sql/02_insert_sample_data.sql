INSERT INTO suppliers (supplier_name, phone, email)
VALUES
('TechNova Supplies', '9876500001', 'contact@technova.com'),
('Apex Office Solutions', '9876500002', 'sales@apexoffice.com'),
('Urban Furniture Co.', '9876500003', 'info@urbanfurniture.com'),
('HomeTech Distributors', '9876500004', 'support@hometech.com'),
('Elite Components', '9876500005', 'contact@elitecomponents.com'),
('Bright Electricals', '9876500006', 'sales@brightelectricals.com'),
('Metro Industrial Supply', '9876500007', 'info@metroindustrial.com'),
('Smart Retail Wholesale', '9876500008', 'contact@smartretail.com');

INSERT INTO warehouses (warehouse_name, city)
VALUES
('Mumbai Central Warehouse', 'Mumbai'),
('Pune Distribution Center', 'Pune'),
('Bengaluru South Warehouse', 'Bengaluru');


INSERT INTO customers (customer_name, phone, email, city)
VALUES
('Rahul Sharma', '9876510001', 'rahul.sharma@email.com', 'Mumbai'),
('Priya Patel', '9876510002', 'priya.patel@email.com', 'Pune'),
('Amit Verma', '9876510003', 'amit.verma@email.com', 'Bengaluru'),
('Sneha Iyer', '9876510004', 'sneha.iyer@email.com', 'Chennai'),
('Vikram Singh', '9876510005', 'vikram.singh@email.com', 'Hyderabad'),
('Neha Joshi', '9876510006', 'neha.joshi@email.com', 'Mumbai'),
('Rohan Mehta', '9876510007', 'rohan.mehta@email.com', 'Pune'),
('Ananya Rao', '9876510008', 'ananya.rao@email.com', 'Bengaluru'),
('Karan Malhotra', '9876510009', 'karan.malhotra@email.com', 'Delhi'),
('Pooja Nair', '9876510010', 'pooja.nair@email.com', 'Kochi'),
('Arjun Desai', '9876510011', 'arjun.desai@email.com', 'Ahmedabad'),
('Meera Kapoor', '9876510012', 'meera.kapoor@email.com', 'Jaipur'),
('Siddharth Kulkarni', '9876510013', 'siddharth.k@email.com', 'Nagpur'),
('Ishita Roy', '9876510014', 'ishita.roy@email.com', 'Kolkata'),
('Manoj Kumar', '9876510015', 'manoj.kumar@email.com', 'Lucknow');


INSERT INTO products (supplier_id, product_name, category, unit_price)
VALUES
-- Electronics
(1, 'Business Laptop',  'Electronics', 65000.00),
(1, '24-inch Monitor',  'Electronics', 12000.00),
(5, 'Mechanical Keyboard', 'Electronics', 3500.00),
(5, 'Wireless Mouse', 'Electronics', 1200.00),
(4, 'Laser Printer', 'Electronics', 18000.00),
(5, 'HD Webcam', 'Electronics', 2500.00),

-- Office Supplies
(2, 'Notebook Pack', 'Office Supplies', 300.00),
(2, 'Blue Pen Pack', 'Office Supplies', 150.00),
(2, 'Magnetic Whiteboard', 'Office Supplies', 4500.00),
(2, 'Heavy-duty Stapler', 'Office Supplies', 800.00),
(2, 'File Folder Set', 'Office Supplies', 500.00),

-- Furniture
(3, 'Office Chair', 'Furniture', 8500.00),
(3, 'Office Desk', 'Furniture', 12000.00),
(3, 'Bookshelf', 'Furniture', 7000.00),
(3, 'Storage Cabinet', 'Furniture', 9500.00),

-- Home Appliances
(4, 'Refrigerator', 'Home Appliances', 32000.00),
(4, 'Microwave Oven', 'Home Appliances', 11000.00),
(4, 'Air Purifier', 'Home Appliances', 14000.00),
(4, 'Vacuum Cleaner', 'Home Appliances', 9000.00),

-- Computer Accessories
(5, '1TB SSD', 'Computer Accessories', 6500.00),
(5, '64GB USB Drive', 'Computer Accessories', 900.00),
(5, 'Wi-Fi Router', 'Computer Accessories', 2800.00),
(5, 'UPS Backup', 'Computer Accessories', 5500.00),
(5, 'External Hard Drive', 'Computer Accessories', 7200.00),

-- Industrial
(7, 'Barcode Scanner', 'Industrial Equipment', 4500.00);