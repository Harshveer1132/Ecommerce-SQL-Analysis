select * from customers;
select * from products;
select * from orders ;
select * from reviews;
select * from order_items;

SELECT o.order_id, o.order_date, o.order_status, c.customer_name
FROM orders o 
INNER JOIN customers c ON o.customer_id = c.customer_id;

select c.customer_name,c.city,o.order_id from customers c 
inner join orders o on  c.customer_id=o.customer_id;

select c.customer_name,c.state,o.order_id,o.order_date
from orders o 
inner join customers c on c.customer_id=o.customer_id  
where state='Maharashtra';

select o.order_id,p.product_name,o.quantity 
from order_items o
inner join products p on o.product_id = p.product_id ;

select c.customer_name,oi.order_id,p.product_name,oi.quantity 
from customers c 
inner join orders o on c.customer_id=o.customer_id
inner join order_items oi on  o.order_id=oi.order_id
inner join products p on oi.product_id = p.product_id;

select c.customer_id,c.customer_name, o.order_id 
from customers c 
left join orders o on c.customer_id = o.customer_id ;

select c.customer_id , c.customer_name
from customers c 
left join orders o on c.customer_id = o.customer_id
where o.order_id is null ;

select c.customer_id , c.customer_name,
count(o.order_id) as order_count
from customers c 
left join orders o on c.customer_id=o.customer_id 
group by c.customer_id, c.customer_name ;

select c.customer_id , c.customer_name,
count(o.order_id) as order_count
from customers c 
left join orders o on c.customer_id=o.customer_id
group by c.customer_id,c.customer_name
order by order_count desc limit 10;

select p.product_id,p.product_name,
sum(oi.quantity*oi.unit_price * (1-oi.discount)) as revenue
from products p 
inner join order_items oi on p.product_id = oi.product_id
group by p.product_id, p.product_name
order by revenue desc ;

select p.category, sum(oi.quantity*oi.unit_price*(1-oi.discount)) as revenue
from products p 
inner join order_items oi on p.product_id = oi.product_id
group by p.category
order by revenue desc ;

select c.state, count(c.customer_id) as customers     
from customers c 
inner join orders o on c.customer_id=o.customer_id
group by c.state ;

select c.customer_id , c.customer_name, sum(oi.quantity*oi.unit_price*(1-oi.discount)) as revenue
from customers c
inner join orders o on c.customer_id=o.customer_id
inner join order_items oi on o.order_id=oi.order_id
group by c.customer_id ,c.customer_name 
order by revenue desc limit 5 ;

select c.city, sum(oi.quantity*oi.unit_price*(1-oi.discount)) as revenue
from customers c
inner join orders o on c.customer_id=o.customer_id
inner join order_items oi on o.order_id=oi.order_id
group by c.city 
order by revenue desc  ;

select p.product_id , p.product_name
from products p 
left join order_items oi on p.product_id=oi.product_id
where oi.product_id is null ;

select p.category , sum(oi.quantity*oi.unit_price*(1-oi.discount)) as revenue
from products p 
inner join order_items oi on p.product_id=oi.product_id
group by p.category
having revenue > 100000;

SELECT
(SUM(oi.quantity * oi.unit_price * (1 - oi.discount))
/ COUNT(DISTINCT o.order_id),2) AS average_order_value
FROM orders o
INNER JOIN order_items oi
ON o.order_id = oi.order_id;







