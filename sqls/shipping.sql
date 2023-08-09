CREATE TABLE public.shipping (
  shipping_id SERIAL PRIMARY KEY,
  order_id INT NOT NULL,
  shipping_date DATE NOT NULL,
  estimated_delivery_date DATE NOT NULL,
  shipping_carrier VARCHAR(255) NOT NULL,
  tracking_number VARCHAR(255) NOT NULL,
  shipping_cost DECIMAL(10, 2) NOT NULL,
  shipping_address VARCHAR(255) NOT NULL,
  shipping_status VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (order_id) REFERENCES order (order_id)
);


