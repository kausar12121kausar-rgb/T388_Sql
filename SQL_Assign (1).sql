create database pizza_sales_analysis;
show databases;
CREATE TABLE `order` (
    id INT,
    date DATE
);
ALTER TABLE `order`
ADD COLUMN time TIME AFTER date;
RENAME TABLE `order` TO orders;
ALTER TABLE orders
ADD PRIMARY KEY (id);

describe orders;


select * from orders;