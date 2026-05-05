CREATE TABLE deliveries (
  id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  driver_id INT,
  assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  status VARCHAR(50) DEFAULT 'assigned',
  latitude DECIMAL(10,7),
  longitude DECIMAL(10,7),
  FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE,
  FOREIGN KEY (driver_id) REFERENCES users(id) ON DELETE SET NULL
);

CREATE TABLE driver_locations (
  driver_id INT PRIMARY KEY,
  latitude DECIMAL(10,7),
  longitude DECIMAL(10,7),
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
