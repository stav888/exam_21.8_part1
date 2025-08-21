create table televisions(
  id INT not NULL serial,
  catalog_number INT not NULL UNIQUE,
  brand TEXT not NULL,
  model TEXT not NULL,
  screen_size INT,
  resultion TEXT,
  price INT not NULL,
  stock_quantity INT,
  relese_year INT not NULL,
  smart_tv TEXT,
  os TEXT,
  panel_type TEXT
)
