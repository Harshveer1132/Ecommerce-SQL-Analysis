use  ecommmerce_sql_practice;

SELECT * FROM customers;

select customer_name, city, state from customers;
select distinct state from customers;
select * from customers where state = 'Maharashtra';
select * from customers where age>40 ;
select * from customers where age between 25 and 35 ;
select * from customers where state = 'Maharashtra' and gender = 'Female'; 
select * from customers where state ='Delhi' or state='Rajasthan';
select * from customers where gender ='Male' and age>30;
select * from customers where customer_name like '%A%' ;


select * from products;

select * from products where price>2000;
select * from products order by price desc limit 5 ;
select * from products order by price asc limit 10 ;
select * from products where category='Electronics';
select * from products where product_name like '%Wireless%' ;
select * from products where price between 1000 and 3000 ;
select * from products where category = 'Electronics' or category= 'Sports' ;
select * from products order by price asc limit 5 ;

select * from orders ;

select * from orders where order_status = 'Cancelled';
select * from orders where payment_method = 'UPI' ;







