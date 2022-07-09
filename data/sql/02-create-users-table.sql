CREATE TABLE addresses (
  id INT PRIMARY KEY AUTO_INCREMENT,
  street VARCHAR(200) NOT NULL,
  postal_code VARCHAR(200) NOT NULL,
  city VARCHAR(200) NOT NULL
);

CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(200) NOT NULL,
  password VARCHAR(200),
  full_name VARCHAR(200),
  address_id INT,
  FOREIGN KEY (address_id) REFERENCES addresses (id) ON DELETE CASCADE
);
