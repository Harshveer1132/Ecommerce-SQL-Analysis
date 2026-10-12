
select p.product_name, sum(oi.quantity*oi.unit_price *(1-oi.discount)) as revenue
from products p 
join order_items oi on p.product_id=oi.product_id
group by p.product_name
order by revenue desc 
limit 5 ;

select date_format(o.order_date , '%Y-%m') as sales_month,
SUM(oi.quantity * oi.unit_price * (1 - oi.discount)) AS revenue
from orders o 
join order_items oi 
on o.order_id=oi.order_id
where o.order_status='Delivered'
group by date_format(o.order_date , '%Y-%m')
order by sales_month ;

select 
sum(case when order_status = 'Cancelled' then 1 else 0 end ) *100.0/count(*) 
as canellation_percentage 
from orders ;

select
SUM(oi.quantity * oi.unit_price * (1 - oi.discount))/ COUNT(DISTINCT o.order_id)
as average_order_value 
from orders o  join order_items oi 
on o.order_id=oi.order_id
where o.order_status ='Delivered';

select c.customer_id, c.customer_name
from customers c join orders o 
on c.customer_id=o.customer_id
where o.order_id is null ; 








