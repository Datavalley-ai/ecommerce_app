CREATE TABLE public.customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  phone_number VARCHAR(255),
  address_1 VARCHAR(255),
  address_2 VARCHAR(255),
  city VARCHAR(255),
  state VARCHAR(255),
  pincode VARCHAR(255),
  country VARCHAR(255),
  registered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
