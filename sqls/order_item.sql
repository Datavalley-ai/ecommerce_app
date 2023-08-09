CREATE TABLE public.order_item (
  orderitems_id SERIAL PRIMARY KEY,
  product_id INT NOT NULL,
  order_id INT NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  quantity INT NOT NULL,
  shipping_id INT NOT NULL,
  FOREIGN KEY (product_id) REFERENCES Product (product_id),
  FOREIGN KEY (order_id) REFERENCES Order (order_id),
  FOREIGN KEY (shipping_id) REFERENCES Shipping (shipping_id)
);