select customer_name,age,
case 
when age<25 then 'Young'
when age<=40 then 'Adult'
else 'Senior'
end as age_group
from customers;

select product_name,price,
case
when price<1000 then 'Budget'
when price<=3000 then 'Mid-Range'
else 'Premium'
end as price_range
from products ;

select 
case 
when order_status = 'Deliverd' then 'Completed'
when order_status = 'Cancelled' then 'Cancelled'
else 'In Progress'
end as status_category,
count(*) as total_orders
from orders
group by status_category;

select order_id,
year(order_date) as order_year,
month(order_date) as order_month
from orders;

select date_format(order_date ,'%Y-%m') as order_month, count(*) as total_orders
from orders 
group by  order_month
order by order_month;

select * 
from orders 
where order_date >='2024-01-01'
and order_date < '2024-02-01' ;

select c.customer_name , o.order_id, datediff(o.order_date , c.signup_date) as days_to_order
from customers c 
join orders o on c.customer_id=o.customer_id ;

select upper(customer_name) as customer_name from customers ;
select product_name, length(product_name) as name_length from products ;
select product_name, left(product_name, 3) as short_name from products ;
select replace(product_name, ' ','_') as new_name from products ;

select order_id,sum(quantity*unit_price*(1-discount)) as order_value,
case
when sum(quantity*unit_price*(1-discount)) > 5000 then 'High Value'
else 'Rergular'
end as order_category
from order_items
group by order_id ;

select year(order_date) as order_year, count(*) as total_orders 
from orders  group by year(order_date) ;

select * from customers where customer_name like 'A%' ;

select product_id, avg(rating) as average_rating from reviews group by product_id;

select product_name, price from products
where price> (select avg(price) from products) ;

select customer_name, customer_id from customers
where customer_id in (select customer_id from orders group by customer_id having count(*) > 3) ;

select product_name from products p 
where not exists ( select 1 from order_items oi where oi.product_id = p.product_id);

SELECT product_name, price FROM products
WHERE price > (SELECT MAX(price) FROM products WHERE category = 'Sports' ) ;


