CREATE TABLE public.payment (
  payment_id SERIAL PRIMARY KEY,
  customer_id INT NOT NULL,
  payment_method VARCHAR(255) NOT NULL,
  amount DECIMAL(10, 2) NOT NULL,
  payment_date DATE NOT NULL,
  payment_status VARCHAR(255) NOT NULL,
  coupon_id INT,
  remarks VARCHAR(255),
  FOREIGN KEY (customer_id) REFERENCES Customer (customer_id),
  FOREIGN KEY (coupon_id) REFERENCES Coupon (coupon_id)
);


