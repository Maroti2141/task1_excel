select*from sales


select c.city , sum(s.sales) as "city sales", sum(s.quantity) as "qty sold in city", sum(s.profit) as "profit in city",
sum(s.discount)as "discount in city"
from sales as s
inner join customer as c
on c.customer_id = s.customer_id 
group by city
order by sum(s.sales)


create view city_report as 
select c.city , sum(s.sales) as "city sales", sum(s.quantity) as "qty sold in city", sum(s.profit) as "profit in city",
sum(s.discount)as "discount in city"
from sales as s
inner join customer as c
on c.customer_id = s.customer_id 
group by city
order by sum(s.sales)


select* from city_report

alter view city_report rename column "city sales" to "city_sales"

alter view city_report rename column "qty sold in city" to "qty_sold_in_city"

select* from city_report
