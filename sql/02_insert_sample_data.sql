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




INSERT INTO purchases
(supplier_id, product_id, warehouse_id, quantity, purchase_price, purchase_date)
VALUES

-- Business Laptop
(1, 1, 1, 20, 61000.00, '2026-01-05'),
(1, 1, 2, 15, 61250.00, '2026-02-08'),

-- Monitor
(1, 2, 1, 25, 11200.00, '2026-01-07'),

-- Mechanical Keyboard
(5, 3, 2, 40, 2900.00, '2026-01-10'),

-- Wireless Mouse
(5, 4, 1, 60, 900.00, '2026-01-12'),

-- Laser Printer
(4, 5, 3, 12, 16500.00, '2026-01-15'),

-- HD Webcam
(5, 6, 2, 30, 2000.00, '2026-01-18'),

-- Notebook Pack
(2, 7, 1, 100, 220.00, '2026-01-20'),

-- Blue Pen Pack
(2, 8, 2, 150, 100.00, '2026-01-22'),

-- Office Chair
(3, 12, 3, 25, 7200.00, '2026-01-25'),

-- Office Desk
(3, 13, 3, 15, 10200.00, '2026-01-28'),

-- Refrigerator
(4, 16, 1, 10, 28500.00, '2026-02-02'),

-- Air Purifier
(4, 18, 2, 20, 12500.00, '2026-02-05'),

-- 1TB SSD
(5, 20, 1, 35, 5600.00, '2026-02-09'),

-- Wi-Fi Router
(5, 22, 3, 30, 2300.00, '2026-02-12');



INSERT INTO purchases
(supplier_id, product_id, warehouse_id, quantity, purchase_price, purchase_date)
VALUES

-- Business Laptop (reorder)
(1, 1, 3, 18, 61500.00, '2026-02-18'),

-- 24-inch Monitor (reorder)
(1, 2, 2, 20, 11350.00, '2026-02-20'),

-- Notebook Pack (reorder)
(2, 7, 3, 120, 225.00, '2026-02-22'),

-- Office Chair (reorder)
(3, 12, 1, 18, 7300.00, '2026-02-25'),

-- Microwave Oven
(4, 17, 2, 12, 9800.00, '2026-02-27'),

-- Vacuum Cleaner
(4, 19, 3, 15, 7800.00, '2026-03-02'),

-- 64GB USB Drive
(5, 21, 1, 80, 700.00, '2026-03-04'),

-- UPS Backup
(5, 23, 2, 25, 4700.00, '2026-03-06'),

-- External Hard Drive
(5, 24, 3, 22, 6100.00, '2026-03-08'),

-- Barcode Scanner (reorder)
(7, 25, 1, 20, 3900.00, '2026-03-10'),

-- Bookshelf
(3, 14, 2, 12, 6100.00, '2026-03-12'),

-- Storage Cabinet
(3, 15, 1, 10, 8400.00, '2026-03-15'),

-- Magnetic Whiteboard
(2, 9, 3, 18, 3900.00, '2026-03-18'),

-- Heavy-duty Stapler
(2, 10, 2, 40, 650.00, '2026-03-20'),

-- File Folder Set
(2, 11, 1, 60, 380.00, '2026-03-22');


INSERT INTO sales
(customer_id, product_id, warehouse_id, quantity, sale_price, sale_date)
VALUES

-- Business Laptop
(1, 1, 1, 2, 65000.00, '2026-01-15'),
(2, 1, 2, 1, 65000.00, '2026-02-15'),

-- 24-inch Monitor
(3, 2, 1, 3, 12000.00, '2026-01-18'),

-- Mechanical Keyboard
(4, 3, 2, 5, 3500.00, '2026-01-22'),

-- Wireless Mouse
(5, 4, 1, 8, 1200.00, '2026-01-25'),

-- Laser Printer
(6, 5, 3, 2, 18000.00, '2026-01-28'),

-- HD Webcam
(7, 6, 2, 4, 2500.00, '2026-02-02'),

-- Notebook Pack
(8, 7, 1, 20, 300.00, '2026-02-05'),

-- Blue Pen Pack
(9, 8, 2, 35, 150.00, '2026-02-08'),

-- Office Chair
(10, 12, 3, 3, 8500.00, '2026-02-12'),

-- Refrigerator
(11, 16, 1, 1, 32000.00, '2026-02-16'),

-- Air Purifier
(12, 18, 2, 2, 14000.00, '2026-02-20'),

-- 1TB SSD
(13, 20, 1, 6, 6500.00, '2026-02-25'),

-- Wi-Fi Router
(14, 22, 3, 5, 2800.00, '2026-03-02'),

-- Office Desk
(15, 13, 3, 2, 12000.00, '2026-03-08');


INSERT INTO sales
(customer_id, product_id, warehouse_id, quantity, sale_price, sale_date)
VALUES

-- Repeat customers
(1, 20, 1, 2, 6500.00, '2026-03-10'),
(2, 4, 2, 4, 1200.00, '2026-03-12'),
(3, 7, 3, 15, 300.00, '2026-03-15'),

-- Office supplies
(5, 8, 2, 30, 150.00, '2026-03-18'),
(6, 10, 2, 10, 800.00, '2026-03-20'),
(7, 11, 1, 25, 500.00, '2026-03-22'),

-- Furniture
(8, 12, 1, 2, 8500.00, '2026-03-24'),
(9, 14, 2, 1, 7000.00, '2026-03-26'),
(10, 15, 1, 1, 9500.00, '2026-03-28'),

-- Electronics
(11, 2, 2, 2, 12000.00, '2026-03-29'),
(12, 6, 2, 3, 2500.00, '2026-03-30'),

-- Home Appliances
(13, 17, 2, 2, 11000.00, '2026-03-31'),

-- Computer Accessories
(14, 21, 1, 15, 900.00, '2026-04-02'),
(15, 23, 2, 3, 5500.00, '2026-04-04'),

-- Business Laptop (repeat sale)
(4, 1, 3, 2, 65000.00, '2026-04-06');



-- ============================================
-- Populate Inventory Snapshot
-- Current Stock = Total Purchased - Total Sold
-- ============================================

INSERT INTO inventory
(product_id, warehouse_id, current_stock)

SELECT
    p.product_id,
    p.warehouse_id,
    p.total_purchased - COALESCE(s.total_sold, 0) AS current_stock
FROM
(
    SELECT
        product_id,
        warehouse_id,
        SUM(quantity) AS total_purchased
    FROM purchases
    GROUP BY product_id, warehouse_id
) AS p
LEFT JOIN
(
    SELECT
        product_id,
        warehouse_id,
        SUM(quantity) AS total_sold
    FROM sales
    GROUP BY product_id, warehouse_id
) AS s
ON p.product_id = s.product_id
AND p.warehouse_id = s.warehouse_id;