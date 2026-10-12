
select order_id , order_date,row_number()
over(order by order_date desc) as row_num
from orders ;

select product_name,price, rank() over(order by price desc) as price_rank
from products;

select product_name,price,dense_rank() over (order by price desc ) as price_rank
from products ;

select customer_id,order_id,order_date, row_number () 
over (partition by customer_id order by order_date desc) as order_number
from orders;





























