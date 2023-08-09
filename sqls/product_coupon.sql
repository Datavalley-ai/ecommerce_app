CREATE TABLE product_coupon (
  product_id INT NOT NULL,
  coupon_id INT NOT NULL,
  PRIMARY KEY (product_id, coupon_id),
  FOREIGN KEY (product_id) REFERENCES Product (product_id),
  FOREIGN KEY (coupon_id) REFERENCES Coupon (coupon_id)
);

