CREATE TABLE sales (
  sales_id SERIAL PRIMARY KEY,
  product_id INT NOT NULL,
  quantity INT NOT NULL,
  total_price DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (product_id) REFERENCES Product (product_id)
);

