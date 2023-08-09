CREATE TABLE public.product (
  product_id SERIAL PRIMARY KEY,
  product_name VARCHAR(255) NOT NULL,
  product_description VARCHAR(255),
  regular_price DECIMAL(10, 2) NOT NULL,
  discount_price DECIMAL(10, 2),
  quantity INT NOT NULL,
  category_id INT NOT NULL,
  published BOOLEAN NOT NULL,
  product_weight DECIMAL(10, 2),
  product_note VARCHAR(255),
  img_link VARCHAR(255),
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (category_id) REFERENCES product_category (category_id)
);