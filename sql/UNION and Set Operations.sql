select customer_name as name from customers
union
select product_name as name from products ;

select customer_name as name from customers
union all
select product_name as name from products ;

select customer_id , customer_name ,state from customers
where state = 'Maharashtra'
union
select customer_id,customer_name, state from customers
where state = 'Gujarat' ; 

select product_name , price from products
where price<500
union
select product_name, price from products
where price>2000;

select order_id, order_status from orders
where order_status = 'Delivered'
union
select order_id,order_status from orders
where order_status ='Cancelled';

SELECT customer_name AS name FROM customers
UNION
SELECT product_name AS name FROM products
ORDER BY name;






