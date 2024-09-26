DROP TABLE IF EXISTS colour CASCADE;
DROP TABLE IF EXISTS Models CASCADE;
DROP TABLE IF EXISTS Products CASCADE;
DROP TABLE IF EXISTS Category CASCADE;


CREATE TABLE Models (
series VARCHAR(50) NOT NULL,
model VARCHAR(50) NOT NULL, 
price INT NOT NULL,
width NUMERIC NOT NULL,
depth NUMERIC NOT NULL,
height NUMERIC NOT NULL,
weight NUMERIC NOT NULL,
PRIMARY KEY (series, model)
);

CREATE TABLE Category (
furniture VARCHAR(50) PRIMARY KEY,
area VARCHAR(50) NOT NULL
);

CREATE TABLE Products (
id INT PRIMARY KEY,  /* xxx.xxx.xx  where x are ints*/
series VARCHAR(50) NOT NULL,
model VARCHAR(50) NOT NULL, 
url VARCHAR(200) NOT NULL,
furniture_type VARCHAR(50) NOT NULL REFERENCES Category(furniture),
FOREIGN KEY (series, model) REFERENCES Models(series, model)
);

CREATE TABLE colour (
product_id int primary key REFERENCES Products(id),
colour_category VARCHAR(50) not null,
colour_name VARCHAR(50) not null,
price int not null
);

