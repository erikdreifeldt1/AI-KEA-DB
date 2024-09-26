INSERT INTO Category (furniture, area) VALUES ('Sofas', 'living room');
INSERT INTO Category (furniture, area) VALUES ('Armchairs/Chaise longues', 'living room');


INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Söderhamn', '3-seat section', 3995, 186, 99, 83, 54.14);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Söderhamn', 'Chaise longues', 3695, 93, 151, 83, 36.78);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Kivik', '3-seat sofa', 4495, 228, 95, 83, 84.23);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Kivik', '3-seat sofa with chaise longues', 7295, 280, 163, 83, 123.08);


INSERT INTO Products (id, series, model, link, furniture_type) VALUES (59517150, 'Söderhamn', '3-seat section', 'URL', 'Sofas');
INSERT INTO Products (id, series, model, link, furniture_type) VALUES (29507156, 'Söderhamn', 'Chaise longues', 'URL', 'Armchairs/Chaise longues');
INSERT INTO Products (id, series, model, link, furniture_type) VALUES (49440597, 'Kivik', '3-seat sofa', 'URL', 'Sofas');
INSERT INTO Products (id, series, model, link, furniture_type) VALUES (39484817, 'Kivik', '3-seat sofa with chaise longues', 'URL', 'Sofas');



INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (59517150, 'white', 'Blekinge white', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (29507156, 'white', 'Blekinge white', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (49440597, 'gray', 'Tibbleby beige/grey', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (39484817, 'pink', 'Gunnared light brown-pink', 500);

