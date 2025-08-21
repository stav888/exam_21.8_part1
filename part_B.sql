  create table televisions(
  id INT serial not NULL PRIMARY KEY,
  catalog_number INT not NULL UNIQUE,
  brand TEXT not NULL,
  model TEXT not NULL,
  screen_size INT,
  resultion TEXT CHECK (resolution IN ('4K', '8K', 'Full HD')),
  price INT not NULL,
  stock_quantity INT DEFAULT 0,
  relese_year INT not NULL,
  smart_tv TEXT NULL,
  os TEXT NULL,
  panel_type TEXT CHECK (panel_type IN ('OLED', 'QLED', 'LED'))
)

insert into televisions(catalog_number, brand, model, price, relese_year, ) VALUES()

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type)
VALUES ('TV001', 'Samsung', 'QN90C', 65.00, '4K', 1499.99, 10, 2023, TRUE, 'Tizen', 'QLED');
