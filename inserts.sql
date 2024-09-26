DELETE FROM Category;
DELETE FROM Models;
DELETE FROM Products;
DELETE FROM Colour;

INSERT INTO Category (furniture, area) VALUES ('Sofas', 'living room');
INSERT INTO Category (furniture, area) VALUES ('Armchairs/Chaise longues', 'living room');
INSERT INTO Category (furniture, area) VALUES ('Coffee and side tables', 'living room');
INSERT INTO Category (furniture, area) VALUES ('Storage and organisation', 'living room');
INSERT INTO Category (furniture, area) VALUES ('Rugs', 'living room');
INSERT INTO Category (furniture, area) VALUES ('Decoration', 'living room');
INSERT INTO Category (furniture, area) VALUES ('TV and media furniture', 'living room');
INSERT INTO Category (furniture, area) VALUES ('Lighting', 'living room');
INSERT INTO Category (furniture, area) VALUES ('Curtain and blinds', 'living room');
INSERT INTO Category (furniture, area) VALUES ('Textiles', 'living room');
INSERT INTO Category (furniture, area) VALUES ('Dining tables', 'living room');



INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Söderhamn', '3-seat section', 3995, 186, 99, 83, 54.14);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Söderhamn', 'Chaise longues', 3695, 93, 151, 83, 36.78);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Kivik', '3-seat sofa', 4495, 228, 95, 83, 84.23);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Kivik', '3-seat sofa with chaise longues', 7295, 280, 163, 83, 123.08);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Stockholm', 'Coffee  table', 2995, 180, 59, 40, 20.70);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Holmerud', 'Side table', 449, 81, 31, 52, 12.5);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Listerby', 'Console table', 649, 92, 38, 71, 15);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Stockholm', 'Nest of tables, set of 2', 1995, 72, 47, 36, 11.13);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Eket', 'Cabinet with 2 doors and 1 shelf', 795, 70, 30, 70, 16.4);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Kleppstad', 'Wardrobe with 2 doors', 995, 79, 55, 176, 55.41);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Råskog', 'Trolley', 399, 35, 45, 78, 7.46);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Stoense', 'Rug, low pile', 1695, 200, 300, 1.8, 15.9);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Rangstrup', 'Rug, flatwoven', 249, 70, 180, 1, 1.72);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Storabo', 'Rug', 99, 133, 75, 1, 0.98);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Rödalm', 'Frame', 49, 23, 3, 32, 0.55);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Skådis', 'Pegboard', 199, 76, 56, 1, 2.5);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Hovet', 'Mirror', 995, 78, 196, 1, 15.23);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Oskarshamn', 'Wing chair', 2795, 82, 86, 99, 26);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Dyvlinge', 'Armchair', 1995, 63, 75, 68, 13.91);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Kallax', 'TV bench', 699, 146.6, 39.2, 59.6, 18.34);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Havsta', 'TV storage comnbination/glass doors', 12885, 322, 47, 212, 110.05);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Spiksmed', 'TV bench', 699, 97, 32, 44, 15.8);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Fado', 'Table lamp', 199, 25, 25, 24, 1.36);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Länsport', 'LED portable lamp, battery operated', 179, 18, 18, 22, 0.46);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Ökensand' , 'Floor lamp', 599, 48, 48, 154, 2.72);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Hilja', 'Curtains, 1 pair', 199, 145, 0.2, 250, 0.92);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Majgull', 'Blackout curtains, 1 pair', 399, 145, 0.2, 250, 1.9);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Alvine spets', 'Net curtains, 1 pair', 119, 145, 0.2, 250, 0.5);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Kura', 'Bed curtain', 300, 167, 96, 115, 0.84);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Soaré', 'Place mat', 49, 37, 37, 1, 0.26);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Svartsenap', 'Table-runner', 39, 130, 35, 0.1, 0.2);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Skansnäs', 'Extendable table', 7495, 170, 115, 75, 47.04);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Skogsta', 'Dining table', 7495, 235, 100, 73, 84);
INSERT INTO Models (series, model, price, width, depth, height, weight) VALUES ('Lisabo', 'Table', 1795, 88, 78, 74, 17.7);



INSERT INTO Products (id, series, model, url, furniture_type) VALUES (59517150, 'Söderhamn', '3-seat section', 'https://www.ikea.com/se/sv/p/soederhamn-3-sits-sektion-fridtuna-ljusbeige-s99449642/', 'Sofas');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (29507156, 'Söderhamn', 'Chaise longues', 'https://www.ikea.com/se/sv/p/soederhamn-schaeslong-blekinge-vit-s29501756/#content', 'Armchairs/Chaise longues');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (49440597, 'Kivik', '3-seat sofa', 'https://www.ikea.com/se/sv/p/kivik-3-sitssoffa-tibbleby-beige-gra-s49440597/', 'Sofas');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (99484777, 'Kivik', '3-seat sofa with chaise longues', 'https://www.ikea.com/se/sv/p/kivik-3-sitssoffa-med-schaeslong-tallmyra-beige-s99484777/#content', 'Sofas');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (70239710, 'Stockholm', 'Coffee  table', 'https://www.ikea.com/se/en/p/stockholm-coffee-table-walnut-veneer-70239710/', 'Coffee and side tables');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (40541421, 'Holmerud', 'Side table', 'https://www.ikea.com/se/en/p/holmerud-side-table-oak-effect-40541421/', 'Coffee and side tables');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (50562248, 'Listerby', 'Console table', 'https://www.ikea.com/se/en/p/listerby-console-table-dark-brown-beech-veneer-50562248/', 'Coffee and side tables');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (10239713, 'Stockholm', 'Nest of tables, set of 2', 'https://www.ikea.com/se/en/p/stockholm-nest-of-tables-set-of-2-walnut-veneer-10239713/', 'Coffee and side tables');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (20333951, 'Eket', 'Cabinet with 2 doors and 1 shelf', 'https://www.ikea.com/se/en/p/eket-cabinet-w-2-doors-and-1-shelf-white-20333951/', 'Storage and organisation');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (80437234, 'Kleppstad', 'Wardrobe with 2 doors', 'https://www.ikea.com/se/en/p/kleppstad-wardrobe-with-2-doors-white-80437234/', 'Storage and organisation');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (90333976, 'Råskog', 'Trolley', 'https://www.ikea.com/se/en/p/raskog-trolley-black-90333976/', 'Storage and organisation');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (20426808, 'Stoense', 'Rug, low pile', 'https://www.ikea.com/se/en/p/stoense-rug-low-pile-off-white-20426808/', 'Rugs');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (20470919, 'Rangstrup', 'Rug, flatwoven', 'https://www.ikea.com/se/en/p/rangstrup-rug-flatwoven-handmade-cotton-assorted-colours-20470919/', 'Rugs');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (70356822, 'Storabo', 'Rug', 'https://www.ikea.com/se/en/p/storabo-rug-green-70356822/', 'Rugs');   
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (50566393, 'Rödalm', 'Frame', 'https://www.ikea.com/se/en/p/roedalm-frame-oak-effect-50566393/', 'Decoration');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (10321618, 'Skådis', 'Pegboard', 'https://www.ikea.com/se/en/p/skadis-pegboard-white-10321618/', 'Decoration');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (70515915, 'Hovet', 'Mirror', 'https://www.ikea.com/se/en/p/hovet-mirror-black-70515915/', 'Decoration');    
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (00503671, 'Oskarshamn', 'Wing chair', 'https://www.ikea.com/se/en/p/oskarshamn-wing-chair-gunnared-black-grey-00503671/', 'Armchairs/Chaise longues');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (60555153, 'Dyvlinge', 'Armchair', 'https://www.ikea.com/se/en/p/dyvlinge-kelinge-green-60555153/', 'Armchairs/Chaise longues');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (70562087, 'Kallax', 'TV bench', 'https://www.ikea.com/se/en/p/kallax-tv-bench-white-70562087/', 'TV and media furniture');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (39534817, 'Havsta', 'TV storage comnbination/glass doors', 'https://www.ikea.com/se/en/p/havsta-tv-storage-combination-glass-doors-grey-beige-s39534817/', 'TV and media furniture');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (90520869, 'Spiksmed', 'TV bench', 'https://www.ikea.com/se/en/p/spiksmed-tv-bench-light-grey-90520869/', 'TV and media furniture');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (80096372, 'Fado', 'Table lamp', 'https://www.ikea.com/se/en/p/fado-table-lamp-white-80096372/', 'Lighting');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (60575919, 'Länsport', 'LED portable lamp, battery operated', 'https://www.ikea.com/se/en/p/laensport-led-portable-lamp-battery-operated-white-dark-grey-60575919/', 'Lighting');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (00541526, 'Ökensand', 'Floor lamp', 'https://www.ikea.com/se/en/p/oekensand-floor-lamp-beech-white-00541526/', 'Lighting');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (50430818, 'Hilja', 'Curtains, 1 pair', 'https://www.ikea.com/se/en/p/hilja-curtains-1-pair-white-50430818/', 'Curtain and blinds');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (50586027, 'Majgull', 'Blackout curtains, 1 pair', 'https://www.ikea.com/se/en/p/majgull-block-out-curtains-1-pair-dark-green-50586027/', 'Curtain and blinds');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (20112011, 'Alvine spets', 'Net curtains, 1 pair', 'https://www.ikea.com/se/en/p/alvine-spets-net-curtains-1-pair-off-white-20112011/', 'Curtain and blinds');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (20506145, 'Kura', 'Bed curtain', 'https://www.ikea.com/se/en/p/kura-bed-curtain-market-stall-pattern-20506145/', 'Textiles');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (40082536, 'Soaré', 'Place mat', 'https://www.ikea.com/se/en/p/soare-place-mat-water-hyacinth-40082536/', 'Textiles');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (10533069, 'Svartsenap', 'Table-runner', 'https://www.ikea.com/se/en/p/svartsenap-table-runner-grey-10533069/', 'Textiles');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (70563237, 'Skansnäs', 'Extendable table', 'https://www.ikea.com/se/en/p/skansnaes-extendable-table-brow-beech.veneer-70563237/', 'Dining tables');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (70419265, 'Skogsta', 'Dining table', 'https://www.ikea.com/se/en/p/skogsta-dining-table-acacia-black-70419265/', 'Dining tables');
INSERT INTO Products (id, series, model, url, furniture_type) VALUES (40563776, 'Lisabo', 'Table', 'https://www.ikea.com/se/en/p/lisabo-table-ash-veneer-40563776/', 'Dining tables');


INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (59517150, 'white', 'Blekinge white', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (29507156, 'white', 'Blekinge white', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (49440597, 'grey', 'Tibbleby beige/grey', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (99484777, 'beige', 'Tallmyra beige', 2200);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (70239710, 'brown', 'Walnut veneer', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (40541421, 'brown', 'Oak effect', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (50562248, 'brown', 'Dark brown beech veneer', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (10239713, 'brown', 'Walnut veneer', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (20333951, 'white', 'White', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (80437234, 'white', 'White', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (90333976, 'black', 'Black', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (20426808, 'white', 'Off-white', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (20470919, 'assorted', 'Handmade/Cotton assorted colours', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (70356822, 'green', 'Green', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (50566393, 'brown', 'Oak effect', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (10321618, 'white', 'White', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (70515915, 'black', 'Black', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (00503671, 'black', 'Gunnared black/grey', 200);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (60555153, 'green', 'Kelinge green', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (70562087, 'white', 'White', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (39534817, 'grey', 'Grey-beige', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (90520869, 'grey', 'Light grey', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (80096372, 'white', 'White', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (60575919, 'white', 'White/dark grey', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (00541526, 'white', 'Beech/white', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (50430818, 'white', 'White', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (50586027, 'green', 'Dark green', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (20112011, 'white', 'Off-white', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (20506145, 'assorted', 'Market stall pattern', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (40082536, 'brown', 'Water hyacinth', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (10533069, 'grey', 'Grey', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (70563237, 'brown', 'Brown beech/veneer', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (70419265, 'brown', 'Acacia/black', 0);
INSERT INTO Colour (product_id, colour_category, colour_name, price) VALUES (40563776, 'brown', 'Ash veneer', 0);