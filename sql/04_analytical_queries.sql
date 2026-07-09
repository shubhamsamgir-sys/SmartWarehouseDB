-- Show the current stock of every product in every warehouse.
SELECT
    p.product_name,
    w.warehouse_name,
    i.current_stock
FROM inventory AS i
JOIN products AS p
ON i.product_id = p.product_id
JOIN warehouses AS w
ON i.warehouse_id = w.warehouse_id
ORDER BY
    p.product_name,
    w.warehouse_name;

-- Which products need replenishment because their current stock is below 15?
SELECT
    p.product_name,
    w.warehouse_name,
    i.current_stock
FROM inventory AS i
JOIN products AS p
ON i.product_id = p.product_id
JOIN warehouses AS w
ON i.warehouse_id = w.warehouse_id
WHERE i.current_stock < 15
ORDER BY
    i.current_stock ASC,
    p.product_name;



-- Which products sold the most units?
SELECT
    p.product_name,
    SUM(s.quantity) AS total_units_sold
FROM sales AS s
JOIN products AS p
ON s.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name
ORDER BY total_units_sold DESC;

-- Which products generated the most revenue?
SELECT
    p.product_name,
    SUM(s.quantity * s.sale_price) AS total_revenue
FROM sales AS s
JOIN products AS p
ON s.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name
ORDER BY total_revenue DESC;

-- Which customers spent the most money?
SELECT
    c.customer_name,
    SUM(s.quantity * s.sale_price) AS total_spent
FROM sales AS s
JOIN customers AS c
ON s.customer_id = c.customer_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY total_spent DESC;

-- How much revenue did the business generate each month?
SELECT
    DATE_FORMAT(sale_date, '%Y-%m') AS sales_month,
    SUM(quantity * sale_price) AS monthly_revenue
FROM sales
GROUP BY DATE_FORMAT(sale_date, '%Y-%m')
ORDER BY sales_month;

-- Which suppliers supplied the most inventory?
SELECT
    s.supplier_name,
    SUM(p.quantity) AS total_units_supplied
FROM purchases AS p
JOIN suppliers AS s
ON p.supplier_id = s.supplier_id
GROUP BY
    s.supplier_id,
    s.supplier_name
ORDER BY total_units_supplied DESC;

-- Which products generated the highest profit?
SELECT
    pr.product_name,
    SUM((s.sale_price - pu.purchase_price) * s.quantity) AS total_profit
FROM sales AS s
JOIN purchases AS pu
ON s.product_id = pu.product_id
JOIN products AS pr
ON s.product_id = pr.product_id
GROUP BY
    pr.product_id,
    pr.product_name
ORDER BY total_profit DESC;

-- Which products have never been sold?
SELECT
    p.product_name,
    p.unit_price
FROM products AS p
LEFT JOIN sales AS s
ON p.product_id = s.product_id
WHERE s.sale_id IS NULL;

-- What is the total inventory value in each warehouse?
SELECT
    w.warehouse_name,
    SUM(i.current_stock * p.unit_price) AS inventory_value
FROM inventory AS i
JOIN warehouses AS w
ON i.warehouse_id = w.warehouse_id
JOIN products AS p
ON i.product_id = p.product_id
GROUP BY
    w.warehouse_id,
    w.warehouse_name
ORDER BY inventory_value DESC;

-- How many different products belong to each category?
SELECT
    category,
    COUNT(*) AS total_products
FROM products
GROUP BY category
ORDER BY total_products DESC;

-- Which products are available in more than one warehouse?
SELECT
    p.product_name,
    COUNT(i.warehouse_id) AS warehouse_count
FROM inventory AS i
JOIN products AS p
ON i.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name
HAVING COUNT(i.warehouse_id) > 1
ORDER BY warehouse_count DESC, p.product_name;

-- What is the average selling price of each product?
SELECT
    p.product_name,
    AVG(s.sale_price) AS average_selling_price
FROM sales AS s
JOIN products AS p
ON s.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name
ORDER BY average_selling_price DESC;

-- Which customers placed the most orders?
SELECT
    c.customer_name,
    COUNT(s.sale_id) AS total_orders
FROM customers AS c
JOIN sales AS s
ON c.customer_id = s.customer_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY total_orders DESC;

-- Which warehouse generated the highest sales revenue?
SELECT
    w.warehouse_name,
    SUM(s.quantity * s.sale_price) AS total_revenue
FROM sales AS s
JOIN warehouses AS w
ON s.warehouse_id = w.warehouse_id
GROUP BY
    w.warehouse_id,
    w.warehouse_name
ORDER BY total_revenue DESC;

-- Which products were purchased from suppliers most frequently?
SELECT
    pr.product_name,
    COUNT(p.purchase_id) AS purchase_transactions
FROM purchases AS p
JOIN products AS pr
ON p.product_id = pr.product_id
GROUP BY
    pr.product_id,
    pr.product_name
ORDER BY purchase_transactions DESC;

-- How many different products does each supplier provide?
SELECT
    s.supplier_name,
    COUNT(p.product_id) AS products_supplied
FROM suppliers AS s
JOIN products AS p
ON s.supplier_id = p.supplier_id
GROUP BY
    s.supplier_id,
    s.supplier_name
ORDER BY products_supplied DESC;
