
with product_revenue as 
(select product_id, sum(quantity * unit_price * (1-discount))
 from order_items group by product_id ) 
 select p.product_name, pr.revenue as revenue
 from product_revenue pr 
 join products p 
 on pr.product_id=p.product_id
 order by revenue desc;
 
 with customer_spending as (select c.customer_id,c.customer_name,sum(oi.quantity*oi.unit_price*(1-oi.discount)) as spending
 from customer c 
 join orders o
 on c.customer_id=o.customer_id
 join order_items oi 
 on o.order_id=oi.order_id
 group by c.customer_id,c.customer_name)
 select customer_name,spending
 from customer_spending 
 order by spendig desc;

 
 
 
 
 
 
 
 
 
 
 