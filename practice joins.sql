use T388;
select * from customers_large;
select * from orders_large;
drop table customers_large; 

select customers_large.customer_id,name_c,amount from
customers_large
left join
orders_large
on customers_large.customer_id = orders_large.customer_id;
DESCRIBE customers_large;
