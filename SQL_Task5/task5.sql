select*from report2018
select*from product_details
select*from sales_data

alter table sales_data drop column is_active

--all customer name and there sales

select r.customer_name, avg(s.sales) as "average_sale", sum(s.sales) as "Cust_sales" from report2018 as r
left join sales_data as s
on r.sales_data_id=s.sales_data_id  
group by r.customer_name

select r.customer_name, r.order_date, r.ship_date, s.order_priority, avg(s.sales) as "avg_sales", sum(s.sales) as "Cust_sales" from report2018 as r
right join sales_data as s
on r.sales_data_id=s.sales_data_id  
group by r.customer_name, r.order_date, r.ship_date, s.order_priority

select*from report2018
select*from product_details
select*from sales_data
	

sum(sales)
avg(sales)
sum(sales)<100
decending order of sales
select distinct city from customer
select distinct ship_mode from sales
select distinct sub_category from prodyct

select r.city, pr.category, s.order_priority, sum(s.sales), avg(s.sales)
from report2018 as r
inner join sales_data as s
on r.sales_data_id=s.sales_data_id
inner join product_details as pr
on r.product_details_id=pr.product_details_id
group by r.city, pr.category, s.order_priority
having sum(s.sales)<100
order by sum(s.sales) desc
	




