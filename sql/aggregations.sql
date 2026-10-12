select * from customers;

select count(*) as total_customers from customers;
select count(customer_id) from customers ;
select count(*) as female_customers from customers where gender='Female';
select count(distinct city)  from customers as number_of_cities;

select min(price) as min_price from products ;
select max(price) as max_price from products ;
select avg(price) as avg_price from products ;

select sum(quantity)as total_quantity from order_items ;
select sum(quantity*unit_price*(1-discount)) as total_revenue from order_items;
select state, count(*) as customer_count from customers group by state;
select gender,count(*) as gender_count from customers  group by gender;
select gender ,avg(age)as average_age from customers group by gender;

select category, count(*) as product_count from products group by category;
select category, avg(price) as avg_price from products group by category;

select product_id, sum(quantity*unit_price*(1-discount)) as revenue from order_items group by product_id ;
select category, avg(price) as average_price from products group by category order by average_price desc;
select category, avg(price) as average_price from products group by category order by average_price desc limit 3;

select state, count(*) as cutomer_count from customers group by state having count(*) > 5 ;
select category , count(*) as product_count from products group by category having count(*) >5 ; 

select count(*) as n_o from orders ;
select order_status, count(*) as n_o from orders group by order_status;
select state, avg(age) as avg_age from customers group by state;
select product_id , sum(quantity) as num_sold from order_items group by product_id ;
select product_id , sum(quantity) as num_sold from order_items group by product_id order by num_sold desc limit 5 ;
select category , avg(price) as avg_p from products group by category having avg_p >2000 ;
select avg(price), min(price) , max(price) from products;
select product_name , avg(price), min(price) , max(price) from products group by product_name ;


