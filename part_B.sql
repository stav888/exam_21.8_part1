  create table televisions(
  id serial not NULL PRIMARY KEY,
  catalog_number INT not NULL UNIQUE,
  brand TEXT not NULL,
  model TEXT not NULL,
  screen_size INT,
  resoltion TEXT CHECK (resolution IN ('4K', '8K', 'Full HD')),
  price DECIMAL not NULL,
  stock_quantity INT DEFAULT 0,
  relesae_year INT not NULL,
  smart_tv BOOLEAN DEFAULT FALSE,
  os TEXT NULL,
  panel_type TEXT CHECK (panel_type IN ('OLED', 'QLED', 'LED'))
);

insert into televisions(catalog_number, brand, model, price, relese_year, ) VALUES()

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type)
VALUES ('TV1', 'Xiaomi', 'SQ32CR', 65.00, 'Full HD', 1199.99, 10, 2022, TRUE, 'MI', 'QLED');

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type)
VALUES ('TV2', 'Samsung', 'KV80C', 80.00, '4K', 1600.00, 10, 2023, TRUE, 'Tizen', 'LED');

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type)
VALUES ('TV3', 'Hisense', 'R76DC', 90.00, '8K', 2200.00, 10, 2025, TRUE, 'Android', 'OLED');

