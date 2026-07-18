\# SmartWarehouseDB

\## Project Overview

SmartWarehouseDB is an advanced MySQL portfolio project that simulates a real-world warehouse management system. It is designed to help businesses manage products, suppliers, customers, warehouses, purchases, sales, and current inventory.

The project demonstrates practical database design, realistic business logic, and analytical SQL queries that support inventory management and business decision-making. It uses normalized tables, foreign key relationships, and business reports to answer common operational questions such as:

\* What is the current stock of each product?

\* Which products are running low on inventory?

\* Which products generate the highest revenue?

\* Which warehouses perform best?

\* Which customers spend the most?

This project was built using MySQL Workbench and focuses on creating a database that is easy to understand, maintain, and explain during technical interviews.

\## Business Problem

Companies that store products in multiple warehouses need an efficient way to track inventory, purchases, sales, suppliers, and customers. Without a centralized database, businesses may face problems such as inaccurate stock information, delayed deliveries, duplicate records, and poor inventory planning.

Managers also need reliable business reports to answer important questions, such as:

\* Which products are running low on stock?

\* Which products sell the most?

\* Which warehouse generates the highest revenue?

\* Which suppliers provide the most inventory?

\* Which customers contribute the most sales?

A well-designed relational database helps organize this information, maintain data consistency, and provide accurate reports for better business decisions.

\## Solution

SmartWarehouseDB provides a structured relational database that manages the core operations of a warehouse management system.

The database stores separate information for products, suppliers, customers, warehouses, purchases, sales, and inventory. Purchase and sales transactions are recorded independently, while the inventory table maintains the current stock available in each warehouse.

Using SQL queries, the system generates business reports that help managers monitor inventory levels, analyze sales performance, evaluate supplier contributions, identify top customers, and support inventory planning.

The project focuses on practical database design, realistic business scenarios, and analytical SQL queries rather than building a complete warehouse application.

## Database Design

The database is designed using a relational model, where each table represents a specific business entity. This keeps the data organized, reduces redundancy, and improves maintainability.

| Table          | Purpose                                                                                                                                                                                  |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **suppliers**  | Stores supplier information for products.                                                                                                                                                |
| **products**   | Stores product details, category, unit price, and supplier information.                                                                                                                  |
| **warehouses** | Stores warehouse locations where products are stocked.                                                                                                                                   |
| **customers**  | Stores customer information for sales transactions.                                                                                                                                      |
| **purchases**  | Records every purchase transaction from suppliers to warehouses. This table maintains the complete purchase history.                                                                     |
| **sales**      | Records every product sale made to customers from a warehouse. This table maintains the complete sales history.                                                                          |
| **inventory**  | Stores the current stock available for each product in each warehouse. It acts as a snapshot of the latest inventory instead of recalculating stock from transaction history every time. |

## Key Design Decisions

- **Separate Purchase and Sales History:** Purchase and sales transactions are stored in separate tables to simplify the database design, improve readability, and make business reporting easier.

- **Inventory Snapshot:** Instead of calculating stock from the purchase and sales history every time, the `inventory` table stores the current stock available in each warehouse. This provides faster inventory reporting while preserving the complete transaction history.

- **Product Distribution Across Multiple Warehouses:** A product can be stored in multiple warehouses. This reflects real business operations, where inventory is distributed across different locations to improve product availability and reduce delivery time.

- **One Supplier per Product:** Each product is assigned to a single supplier. Although real businesses may purchase the same product from multiple suppliers, this design keeps the project focused while still demonstrating realistic database relationships.

- **Normalized Transaction History:** Purchase and sales records are stored separately from the inventory table. Historical transactions are never overwritten, allowing the business to maintain a complete audit trail.

- **Current Inventory Maintained Separately:** The inventory table represents the latest stock position, while purchase and sales tables preserve historical records. This separation supports both operational reporting and historical analysis.

- **Manual Inventory Updates:** Inventory is updated manually after purchase or sales transactions. Automatic updates using triggers were intentionally not implemented because triggers are outside the scope of this project.

## Known Limitations

This project was designed as an advanced SQL portfolio project rather than a complete enterprise warehouse management system. The following features were intentionally kept outside the project scope:

- Inventory is updated manually after purchase and sales transactions. Automatic updates using triggers or stored procedures were not implemented.

- Exact historical profit is not calculated because the database does not track which purchase batch was used to fulfill each sale. Implementing accurate inventory costing methods such as FIFO, LIFO, or Weighted Average Cost would require additional business logic beyond the scope of this project.

- Each product is associated with a single supplier. While real businesses may purchase the same product from multiple suppliers, this simplified design keeps the database easier to understand while still demonstrating relational database principles.

These decisions were made intentionally to keep the project focused on database design, SQL analysis, and interview-ready business scenarios.

## Technologies Used

- MySQL 8.0
- MySQL Workbench
- SQL
- Git
- GitHub

---

## SQL Files

```text
- 01_create_schemas.sql
- 02_insert_sample_data.sql
- 03_schema_updates.sql
- 04_analytical_queries.sql
- 05_indexing_analysis.sql


```

---

## Business Queries

The project includes analytical SQL queries that answer real business questions, including:

- Current inventory available in each warehouse.
- Products running low on stock.
- Best-selling products.
- Highest revenue-generating products.
- Top customers by total spending.
- Monthly sales revenue trend.
- Supplier contribution analysis.
- Products that have never been sold.
- Inventory value of each warehouse.
- Number of products in each category.
- Products stored in multiple warehouses.
- Average selling price of each product.
- Customers with the highest number of orders.
- Warehouse revenue comparison.
- Most frequently purchased products.
- Number of products supplied by each supplier.

---

## Interview Summary

SmartWarehouseDB is an advanced MySQL database project that simulates the core operations of a warehouse management system. The project manages products, suppliers, customers, warehouses, purchases, sales, and inventory using a relational database design.

One of the key design decisions was separating transaction history from current inventory. Purchase and sales tables preserve historical records, while the inventory table stores the latest stock snapshot for faster reporting. The project also supports realistic business reporting through analytical SQL queries that help monitor inventory, sales performance, warehouse performance, supplier contribution, and customer activity.

During development, the focus was placed on database design, business logic, and maintainable SQL rather than simply creating tables. The project intentionally excludes advanced ERP features such as automatic inventory updates and inventory costing methods to keep the scope focused while maintaining realistic business scenarios.
