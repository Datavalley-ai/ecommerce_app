CREATE TABLE public.coupon (
  coupon_id SERIAL PRIMARY KEY,
  coupon_code VARCHAR(255) NOT NULL,
  coupon_description VARCHAR(255),
  discount_type VARCHAR(255) NOT NULL,
  discount_value DECIMAL(10, 2) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  minimum_purchase DECIMAL(10, 2),
  maximum_discount DECIMAL(10, 2),
  usage_limit INT,
  usage_count INT,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

