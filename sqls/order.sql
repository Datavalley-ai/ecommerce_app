CREATE TABLE order (
  order_id SERIAL PRIMARY KEY,
  customer_id INT NOT NULL,
  order_date DATE NOT NULL,
  order_status VARCHAR(255) NOT NULL,
  shipping_id INT NOT NULL,
  payment_id INT,
  coupon_id INT,
  FOREIGN KEY (customer_id) REFERENCES Customer (customer_id),
  FOREIGN KEY (shipping_id) REFERENCES Shipping (shipping_id),
  FOREIGN KEY (payment_id) REFERENCES Payment (payment_id),
  FOREIGN KEY (coupon_id) REFERENCES Coupon (coupon_id)
);