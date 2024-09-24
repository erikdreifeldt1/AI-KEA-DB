/*
In Neon, databases are stored on branches. By default, a project has one branch and one database.
You can select the branch and database to use from the drop-down menus above.

Try generating sample data and querying it by running the example statements below, or click
New Query to clear the editor.
*/
CREATE TABLE IF NOT EXISTS playing_with_neon(id SERIAL PRIMARY KEY, name TEXT NOT NULL, value REAL);
INSERT INTO playing_with_neon(name, value)
  SELECT LEFT(md5(i::TEXT), 10), random() FROM generate_series(1, 10) s(i);
SELECT * FROM playing_with_neon;

CREATE TABLE Products 

CREATE TABLE IF NOT EXISTS colour (
product_id int primary key REFERENCES Products.id,
colour_category varchar(50) not null,
colour_name varchar(50) not null,
price int not null);

CREATE TABLE IF NOT EXISTS Models (
series CHAR NOT NULL,
model CHAR NOT NULL, 
price INT NOT NULL,
width INT NOT NULL,
depth INT NOT NULL,
height INT NOT NULL,
weight INT NOT NULL,
PRIMARY KEY (series, model)
);

CREATE TABLE IF NOT EXISTS Products (
id INT PRIMARY KEY,  /* xxx.xxx.xx  where x are ints*/
series CHAR NOT NULL,
model CHAR NOT NULL, 
link CHAR NOT NULL,
furniture_type CHAR NOT NULL REFERENCES Category.furniture,
FOREIGN KEY (series, model) REFERENCES Models(series, model)
);

CREATE TABLE IF NOT EXISTS Category (
furniture CHAR PRIMARY KEY,
area CHAT NOT NULL
);