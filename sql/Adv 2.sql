
select max(price) as secon_hi
from products
where price<(select max(price) from products) ;

SELECT customer_name,COUNT(*) AS occurrences
FROM customers
GROUP BY customer_name
HAVING COUNT(*) > 1;

select p.product_name,p.category,p.price
from products p
where p.price > (select avg(p.price) from products p where p.category=p.category ) ; 

select c.customer_name ,
sum(oi.quantity * oi.unit_price*(1-oi.discount)) as spending
from customers c 
join  orders o 
on c.customer_id=o.customer_id
join order_items oi 
on o.order_id=oi.order_id
group by c.customer_id,c.customer_name
having spending>5000
order by spending desc ;

select
sum( case when order_status ='Delivered' then 1 else 0 end ) as delivered_orders ,
sum( case when order_status ='Cancelled' then 1 else 0 end ) as cancelled_orders ,
sum( case when order_status ='Pending' then 1 else 0 end ) as Pending_orders 
from orders ;

select p.category , sum(oi.quantity) as units_sold,
sum(oi.quantity * oi.unit_price*(1-oi.discount)) as revenue
from products p
join  order_items oi 
on p.product_id=oi.product_id
join orders o 
on oi.order_id=o.order_id
where o.order_status ='Delivered'
group by p.category
order by revenue desc ;

SELECT customer_id, MIN(order_date) AS first_order_date
FROM orders
GROUP BY customer_id;

SELECT customer_id,
MIN(order_date) AS first_order,
MAX(order_date) AS latest_order,
DATEDIFF(MAX(order_date), MIN(order_date)) AS days_between
FROM orders
GROUP BY customer_id;

