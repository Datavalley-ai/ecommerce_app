CREATE TABLE category(
  category_id SERIAL PRIMARY KEY,
  parent_id INT,
  category_name VARCHAR(255) NOT NULL,
  category_description VARCHAR(255),
  icon VARCHAR(255),
  image_path VARCHAR(255),
  active BOOLEAN NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
