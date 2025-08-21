CREATE TABLE televisions(
  id SERIAL PRIMARY KEY,
  catalog_number TEXT NOT NULL UNIQUE,
  brand TEXT NOT NULL,
  model TEXT NOT NULL,
  screen_size INT NOT NULL,
  resolution TEXT CHECK (resolution IN ('4K', '8K', 'Full HD')),
  price DECIMAL NOT NULL,
  stock_quantity INT DEFAULT 0,
  release_year INT NOT NULL,
  smart_tv BOOLEAN DEFAULT FALSE,
  os TEXT NULL,
  panel_type TEXT CHECK (panel_type IN ('OLED', 'QLED', 'LED'))
);

CREATE TABLE storage(
  id SERIAL PRIMARY KEY,
  television_id INT NOT NULL,
  stock_units INT DEFAULT 0,
  FOREIGN KEY (television_id) REFERENCES televisions(id) ON DELETE CASCADE
);

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, price, release_year, smart_tv, os, panel_type)
VALUES ('TV1', 'Xiaomi', 'SQ32CR', 65, 'Full HD', 1199.99, 2022, TRUE, 'MI', 'QLED');

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, price, release_year, smart_tv, os, panel_type)
VALUES ('TV2', 'Samsung', 'KV80C', 80, '4K', 1600.00, 2023, TRUE, 'Tizen', 'LED');

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, price, release_year, smart_tv, os, panel_type)
VALUES ('TV3', 'Hisense', 'R76DC', 90, '8K', 2200.00, 2025, FALSE, 'Android', 'OLED');

INSERT INTO storage (television_id, stock_units)
VALUES (1, 9);

INSERT INTO storage (television_id, stock_units)
VALUES (2, 4);

INSERT INTO storage (television_id, stock_units)
VALUES (3, 3);

select * from televisions
