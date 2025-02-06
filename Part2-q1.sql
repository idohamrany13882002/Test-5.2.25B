--QUESTION A
CREATE TABLE tv (
id INTEGER PRIMARY KEY AUTOINCREMENT,
catalog_number INTEGER UNIQUE,
brand TEXT CHECK (brand IN ('Samsung','LG','Sony')),
model TEXT,
screen_size REAL,
resolution TEXT CHECK (resolution IN ('4K', '8K', 'FULL HD')),
price REAL,
stock_quantity INTEGER,
release_year INTEGER,
smart_tv INTEGER CHECK (smart_tv <=1),
os TEXT DEFAULT NULL,
panel_type TEXT CHECK (panel_type IN ('OLED','QLED','LED'))
);

--QUESTION B
INSERT INTO tv (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year , smart_tv, os, panel_type)   VALUES
(37593, 'Samsung', 'THA FRAME', 85, '4K', 1500, 3, 2017, 1, 'Tizen', 'QLED');

INSERT INTO tv (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year , smart_tv, os, panel_type)   VALUES
(73485, 'LG', 'OLED evo', 83, '8K', 1250, 7, 2019, 0, 'Web OS', 'OLED');

INSERT INTO tv (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year , smart_tv, os, panel_type)   VALUES
(45924, 'Sony', 'B