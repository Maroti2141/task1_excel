Create table Product_Details(
	id serial primary key,
	Product_id varchar(100),
	Product_name varchar(500),
	Category varchar(150),
	sub_category varchar(150),
        is_active boolean
)

select*from Product_Details

insert into Product_Details (product_id,product_name,category,sub_category)
values('FUR-FU-3036','Advantus Light Bulb Black','Furniture','Furnishings')
,('OFF-AR-6106','Stanley Canvas Easy-Erase','Office Supplies','Art')
,('OFF-FA-3022','Advantus Clamps Metal','Office Supplies','Fasteners')
,('FUR-CH-5409','Novimex Steel Folding Chair Set of Two','Furniture','Chairs')
,('TEC-PH-5832','Samsung Office Telephone with Caller ID','Technology','Phones')
,('TEC-MA-5003','Konica Card Printer Red','Technology','Machines')
,('TEC-AC-4186','Enermax Router Erganomic','Technology','Accessories')
,('OFF-SU-4116','Elite Box Cutter Easy Grip','Office Supplies','Supplies')
,('OFF-EN-4446','GlobeWeis Mailers with clear poly window','Office Supplies','Envelopes')

select*from Product_Details

create table Sales_data(
	id serial primary key,
	Sales int,
	Quantity int,
	Discount int,
	profit int,
	shiping_cost int,
	Order_priority varchar(150),
	is_active boolean
)

select*from Sales_data

insert into Sales_data(Sales,Quantity,Discount,Profit,Shiping_cost,Order_priority)
Values(26.76,2,0,7.84,2.04,'high')
,(132.6,4,0,35.76,6.203,'Medium')
,(12.94,1,0,1.02,1.464,'Medium')
,(169,3,0,40.5,55.024,'Critical')
,(391.3,9,0,144.72,28.183,'Medium')
,(344.6,3,0,165.42,26.202,'Medium')
,(341.5,2,0,13.64,17.341,'Medium')
,(97.36,4,0,19.44,6.863,'Medium')
,(56.12,2,0,21.32,4.108,'Medium')

select*from Sales_data

create table Report2018(
	id serial primary key,
	Customer_Name varchar(150),
	Order_id varchar(150),
	Order_date date,
	Ship_date date,
	Ship_mode varchar(150),
	Customer_id varchar(150),
	Segment varchar(50),
	city varchar(50),
	State_country varchar(150),
	Region varchar(150),
	market varchar(50),
	Product_Details_id int,
	Sales_data_id int, 
	FOREIGN KEY (Product_Details_id) REFERENCES Product_Details(id),
	FOREIGN KEY (Sales_data_id) REFERENCES Sales_data(id)

)
	
Select*from Report2018

insert into Report2018 (Customer_name, Order_id, Order_date, Ship_date, Ship_mode, Customer_id, Segment, city, State_country, Region, market, Product_Details_id, Sales_data_id )
Values('Sarah Foster','MX-2014-SF2020018','11-06-2014','16-06-2014','Standard Class','SF-2020018','Consumer','SaoBenedito','Ceara_Brazil','South America','LATAM',1,1)
,('Jim Karlsson','MX-2017-JK1562518','18-10-2017','23-10-2017','Standard Class','JK-1562518','Consumer','Brasilia','FederalDistrict_Brazil','South America','LATAM',2,2)
,('Lindsay Castell','MX-2017-LC1696018','16-01-2017','17-01-2017','Same Day','LC-1696018','Home Office','Goiania','Goias_Brazil','South America', 'LATAM',3,3)
,('Darrin Sayre','MX-2016-DS1303018','11-10-2016','17-10-2016','Standard Class','DS-1303018','Home Office','Pinheiro','Maranhao_Brazil','South America','LATAM',4,4)
,('Darren Powers','MX-2016-DP1300018','27-09-2016','01-10-2016','Standard Class','DP-1300018','Consumer','Sao Paulo','Sao Paulo_Brazil','South America','LATAM',5,5)
,('Ted Butterfield','MX-2016-TB2105526','29-10-2016','02-11-2016','Second Class','TB-2105526','Consumer','Santiago','Santiago_Chile','South America','LATAM',6,6)
,('Mitch Gastineau','MX-2017-MG1820528','06-05-2017','10-05-2017','Standard Class','MG-1820528','Corporate','Medellin','Antioquia_Colombia', 'South America','LATAM',7,7)
,('Kelly Williams','MX-2015-KW1657028','15-10-2015','20-10-2015','Standard Class','KW-1657028','Consumer','Dos Quebradas','Risaralda_Colombia','South America','LATAM',8,8)
,('Shaun Chance','MX-2017-SC2044031','04-07-2017','07-07-2017','Second Class','SC-2044031','Corporate','Artemisa','Artemisa_Cuba','Caribbean','LATAM',9,9)


Select*from Report2018

