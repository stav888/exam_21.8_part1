CREATE TABLE televisions(
  id SERIAL PRIMARY KEY,
  catalog_number TEXT NOT NULL UNIQUE,
  brand TEXT NOT NULL,
  model TEXT NOT NULL,
  screen_size INT NOT NULL,
  resolution TEXT CHECK (resolution IN ('4K', '8K', 'Full HD')),
  release_year INT NOT NULL,
  smart_tv BOOLEAN DEFAULT FALSE,
  os TEXT NULL,
  panel_type TEXT CHECK (panel_type IN ('OLED', 'QLED', 'LED'))
);

CREATE TABLE storage(
  id SERIAL PRIMARY KEY,
  television_id INT NOT NULL,
  stock_quantity INT DEFAULT 0,
  price DECIMAL NOT NULL,
  release_year INT NOT NULL,
  smart_tv BOOLEAN DEFAULT FALSE,
  FOREIGN KEY (television_id) REFERENCES televisions(id) ON DELETE CASCADE
);

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, os, panel_type)
VALUES ('TV1', 'Xiaomi', 'SQ32CR', 65, 'Full HD', 'MI', 'QLED');

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, os, panel_type)
VALUES ('TV2', 'Samsung', 'KV80C', 80, '4K', 'Tizen', 'LED');

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, os, panel_type)
VALUES ('TV3', 'Hisense', 'R76DC', 90, '8K', 'Android', 'OLED');

INSERT INTO storage (television_id, stock_quantity, price, release_year, smart_tv)
VALUES (1, 9, 1199.99, 2022, TRUE);

INSERT INTO storage (television_id, stock_quantity, price, release_year, smart_tv)
VALUES (2, 4, 1600.00, 2023, TRUE);

INSERT INTO storage (television_id, stock_quantity, price, release_year, smart_tv)
VALUES (3, 3, 2200.00, 2025, FALSE);

select * from televisions

SELECT t.*, S.*
FROM televisions t
INNER JOIN storage s ON t.id = s.television_id;
