create table ecom_all(
	customer_id	varchar,
	customer_name varchar,
	segment varchar,
	age	int,
	country varchar,
	city varchar,
	state varchar,
	postal_code int,
	region varchar,
	order_line int,
	order_id varchar,
	order_date date,
	ship_date date,
	ship_mode varchar,
	product_id varchar,
	sales float,
	quantity float,
	discount float,
	profit float,
	category varchar,
	sub_category varchar,
	product_name varchar(255)


)

select*from ecom_all

select distinct order_line, order_id, order_date, ship_date, ship_mode, customer_id,
	product_id,sales,quantity, discount, profit from ecom_all

create table sales as 
select distinct order_line, order_id, order_date, ship_date, ship_mode, customer_id,
	product_id,sales,quantity, discount, profit from ecom_all

	
select distinct customer_id, customer_name,segment,age,country,city,state,postal_code, region from ecom_all

create table customer as
select distinct customer_id, customer_name,segment,age,country,city,state,postal_code, region from ecom_all

	
select distinct  product_id, category, sub_category, product_name from ecom_all
	
create table product as
select distinct  product_id, category, sub_category, product_name from ecom_all



select*from product
select distinct category,sub_category from product
	
create table sub_dim_product_category as
select distinct category,sub_category from product

select*from sub_dim_product_category
	
ALTER TABLE sub_dim_product_category
ADD COLUMN category_id SERIAL PRIMARY KEY;

select*from product

select p.product_id,p.product_name,su.category_id from product as p
inner join sub_dim_product_category as su
on p.sub_category=su.sub_category

create table dim_product as
select p.product_id,p.product_name,su.category_id from product as p
inner join sub_dim_product_category as su
on p.sub_category=su.sub_category

select* from dim_product

select* from customer

select distinct postal_code, city, state, region from customer
	
create table dim_customer_region as 
select distinct postal_code, city, state, region from customer

select*from dim_customer_region

select* from customer

select customer_id, customer_name, segment, age, postal_code from customer

create table dim_customer as
select customer_id, customer_name, segment, age, postal_code from customer

select*from dim_customer
	

select distinct age from customer
	




create table dim_sub_customer_age_category as
SELECT DISTINCT age,
  CASE
    WHEN age <= 18 THEN 'teenage'
    WHEN age <= 40 THEN 'adult'
    WHEN age <= 55 THEN 'senior'
    ELSE 'elder'
  END AS age_category
FROM customer;

select* from dim_sub_customer_age_category










