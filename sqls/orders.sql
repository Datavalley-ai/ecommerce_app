CREATE TABLE public.order (
  order_id SERIAL PRIMARY KEY,
  customer_id INT NOT NULL,
  order_date DATE NOT NULL,
  order_status VARCHAR(255) NOT NULL,
  shipping_id INT NOT NULL,
  payment_id INT,
  billing_address VARCHAR(255),
  coupon_id INT,
  FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
  FOREIGN KEY (shipping_id) REFERENCES shipping (shipping_id),
  FOREIGN KEY (payment_id) REFERENCES payment (payment_id),
  FOREIGN KEY (coupon_id) REFERENCES coupon (coupon_id)
);