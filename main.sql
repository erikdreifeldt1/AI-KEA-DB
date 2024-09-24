CREATE TABLE IF NOT EXISTS colour (
product_id int primary key REFERENCES Products.id,
colour_category varchar(50) not null,
colour_name varchar(50) not null,
price int not null
);

CREATE TABLE IF NOT EXISTS Models (
series CHAR NOT NULL,
model CHAR NOT NULL, 
price INT NOT NULL,
width INT NOT NULL,
depth INT NOT NULL,
height INT NOT NULL,
weight NUMBER NOT NULL,
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