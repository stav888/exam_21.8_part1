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
  FOREIGN KEY (television_id) REFERENCES televisions(id) ON DELETE CASCADE
);

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, release_year, smart_tv, os, panel_type)
VALUES ('TV1', 'Xiaomi', 'SQ32CR', 65, 'Full HD', 2022, TRUE, 'MI', 'QLED');

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, release_year, smart_tv, os, panel_type)
VALUES ('TV2', 'Samsung', 'KV80C', 80, '4K', 2023, TRUE, 'Tizen', 'LED');

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, release_year, smart_tv, os, panel_type)
VALUES ('TV3', 'Hisense', 'R76DC', 90, '8K', 2025, FALSE, 'Android', 'OLED');

INSERT INTO storage (television_id, stock_quantity, price)
VALUES (1, 9, 1199.99);

INSERT INTO storage (television_id, stock_quantity, price)
VALUES (2, 4, 1600.00);

INSERT INTO storage (television_id, stock_quantity, price)
VALUES (3, 3, 2200.00);

select * from televisions


SELECT *
FROM televisions t
INNER JOIN storage s ON t.id = s.television_id;
