DROP VIEW IF EXISTS ProductInfo CASCADE;

CREATE VIEW ProductDetails AS
SELECT 
    Products.id,
    Models.series,
    Models.model,
    (Models.price + Colour.price) AS totalprice,
    Models.width,
    Models.depth,
    Models.height,
    Colour.colour_name,
    Models.weight,
    Products.url
FROM 
    Products
JOIN 
    Models ON Products.series = Models.series AND Products.model = Models.model
JOIN 
    Colour ON Products.id = Colour.product_id;

CREATE VIEW MainCategoryProducts AS
SELECT 
    Products.id,
    Models.series,
    Models.model,
    (Models.price + Colour.price) AS totalprice,
    Colour.colour_name,
    Products.url
FROM 
    Products
JOIN 
    Models ON Products.series = Models.series AND Products.model = Models.model
JOIN 
    Colour ON Products.id = Colour.product_id
WHERE 
    Colour.colour_category IN ('brown');

SELECT * FROM ProductDetails;

SELECT * FROM MainCategoryProducts;

