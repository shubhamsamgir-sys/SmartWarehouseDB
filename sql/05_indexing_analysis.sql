-- Purpose: Index creation and query plan analysis

CREATE INDEX idx_sales_product_id ON sales(product_id);


-- Before: check current query plan
EXPLAIN 
SELECT p.product_name, SUM(s.quantity) AS total_units_sold
FROM sales AS s
JOIN products AS p 
ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_units_sold DESC;

/*

output before INDEX -
id select_type  table  partitions  type	 possible_keys	       key    key_len    ref                            rows      filtered  Extra
1   SIMPLE	s	NULL 	   ALL	 product_id            NULL    NULL     null                           30	100.00   Using temporary; Using filesort
1   SIMPLE	p	NULL	 eq_ref	 PRIMARY	      PRIMARY	4     smartwarehousedb.s.product_id	1	100.00		NULL	

*/


-- After: re-run EXPLAIN, compare
EXPLAIN 
SELECT p.product_name, SUM(s.quantity) AS total_units_sold
FROM sales AS s
JOIN products AS p 
ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_units_sold DESC;


/*

output after INDEX - 
id select_type  table  partitions  type	 possible_keys	       key    key_len    ref                            rows      filtered  Extra
1   SIMPLE	s	NULL 	   ALL	 idx_sales_product_id  NULL    NULL     null                           30	100.00   Using temporary; Using filesort
1   SIMPLE	p	NULL	 eq_ref	 PRIMARY	      PRIMARY	4     smartwarehousedb.s.product_id	1	100.00		NULL	

*/