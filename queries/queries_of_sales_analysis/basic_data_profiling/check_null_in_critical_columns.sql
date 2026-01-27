-- checking null in critical columns.
SELECT
  SUM(order_id IS NULL) AS null_order_id,
  SUM(customer_id IS NULL) AS null_customer_id,
  SUM(product_id IS NULL) AS null_product_id,
  SUM(sales IS NULL) AS null_sales
FROM raw_superstore;

