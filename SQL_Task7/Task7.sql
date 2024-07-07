create schema maroti_data

create table maroti_data.first_table(
	customer_id serial primary key,
	customer_age int,
	customer_income int,
	home_ownership varchar(100),
	employment_duration int,
	loan_intent varchar(100),
	loan_grade varchar(10),
	loan_amnt int,
	loan_int_rate float,
	term_years int,
	historical_default varchar(10),
	cred_hist_length int,
	Current_loan_status varchar(50)
	
)

select*from maroti_data.first_table


create table maroti_data.second_table(
	name varchar(100),
	Position varchar(100),
	Age int,
	Club varchar(100),
	Height int,
	Foot varchar(20),
	Caps int,
	Goals int,
	MarketValue int,
	Country varchar(100)

)

select*from maroti_data.second_table

create table maroti_data.third_table(
	report_id int,
	customer_name varchar(100),
	order_id varchar(100),
	order_date date,
	ship_date date,
	ship_mode varchar(100),
	customer_id varchar(50),
	segment varchar(50),
	city varchar(50),
	state_country varchar(100),
	region varchar(50),
	market varchar(50)
)

select*from maroti_data.third_table

create schema Data2

create table data2.vegitable(
	Sr_id serial primary key,
	name_of_item varchar(50),
	qty int,
	price float,
	total_price float
)

insert into data2.vegitable (name_of_item,qty,price,total_price) 
	values('onion',2,40,80),
('carrot',3,45,135),
('cabage',4,20,80),
('chilli',2,2,40),
('tomato', 4,40,160)

select*from data2.vegitable

create table data2.student(
	student_id serial primary key,
	Student_name varchar(100),
	class_id int
	
)

select*from data2.student


create table data2.shops(
	id int primary key,
	name varchar(150),
	no_of_items int,
	catogory varchar(15),
	no_of_emp int,
	owner_name varchar(150),
	address varchar(150),
	mo_no int,
	sales int,
	revenue int,
	is_active boolean
	
)
select*from data2.shops

	insert into data2.shops values(1,'rajkamal',100,'retail',20,'raju bhai','rajkamal chowk',8080,100000,20000,true)
	,(2,'nilkamal',100,'retail',10,'vamanrai parekh','east mumbai',800129115,300000,30000,true)
	,(3,'dmart',10000,'wholesale',30,'radha damani','nana chowk mumbai',90939000,25000,400,true)
	,(4,'ramsham super bazar',20000,'retail',5,'ramsham nikhare','ganeshpur bhandara',84522256,230000,7000,true)
	,(5,'shriram shop',510,'online',10,'manoj godselwar','gandhi chowkh bhandara',98622252,70000,20000,true)
	,(6,'ambika kirana',2000,'retail',2,'ramchandra pokale','shrikrishna nagar nagpur',7562000,100000,35000,true)
	,(7,'ramu cycle',300,'wholesale',30,'ramu kaka','jagnade chowk nagpur',75123645,500000,25000,true)
	,(8,'gajanan general store',50000,'wholesale',15,'gajanan kohad','panchawati amravati',654785,350000,15000,true)
	,(9,'venkatesh hotes',250,'online',10,'venkatesh anna','gandhi chowk akola',845212,190000,5000,true)
	,(10,'bhagat autoparts',100,'wholesale',3,'bhagat nanhe','ambedkar chowk gumgaon',7584441,60000,6000,true)
	,(11,'arun motors',100,'wholesale',15,'arun kalbandhe','bharatpur shegaon',568212,1000000,250000,true)
	,(12,'vijay medical',5400,'wholesale',5,'vijay khande','tilak nagar bhopal',8546952,120000,13000,true)
	,(13,'vishal hot chips',250,'retail',10,'vishal bhange','suresh nagar akola',7542136,190000,50000,true)
	,(14,'manoj egg center',32,'wholesale',4,'manoj raut','panchashil chowk gondia',9865755,50000,5000,true)
	,(15,'ajay bartan bhandar',1000,'wholesale',1,'ajay sahu','lal bahadur chowk amgaon',75426892,20000,3000,true)
	,(16,'gajanand medical shop',4500,'online',8,'gajanan kohad','vidya nagar sakoli',75869965,780000,52000,true)
	,(17,'hanuman cycle store',240,'online',5,'hanuman bhandarkar','kondu nagar akola',84521221,870000,80000,true)
	,(18,'pappu vegitable shop',60,'wholesale',3,'pappu shivankar','bhande chowk nasik',6589421,680000,56000,true)
	,(19,'shashank wine shop',50,'retial',6,'shashank dekate','hanuman nagar surat',88855545,458000,300000,true)
	,(20,'kavya plastic shops',300,'wholesale',7,'kavya thakur','saraswati nagar mumbai',6582221,900000,75000,true)
	,(21,'namrata cloths',360,'retail',15,'namrata pilare','rajiv gandhi chowk nanded',7689214,1200000,250000,true)
	,(22,'vikki garments',900,'wholesale',10,'vikki salve','vijay nagar buldana',7522201,780000,25000,true)
	,(23,'prajwal hardware',5000,'wholesale',3,'prajwal chavhan','nagar pune',8456221,60000,4500,true)
	,(24,'pappu auto dealer',200,'retail',19,'pappu meshram','sanjay nagar chandrapur',6547315,1000000,60000,true)
	,(25,'bhavna hona showroom',25,'retail',16,'bhavna nimje','sahu nagar chindwada',7125462,800000,250000,true)
	,(26,'babbu matton shop',6,'retail',8,'babbu khan','ambedkar chowk indor',9562148,650000,60000,true)
	,(27,'mudra electricals',250,'dealer',8,'mudra dekate','dongar gaon gumgaon',6582147,520000,255000,true)
	,(28,'megha water purifire',29,'wholesale',29,'megha sonkusare','manish nagar hydrabad',95647852,250000,25000,true)
	,(29,'sanjay shose center',260,'online',8,'sanjay chakole','amritsar panjab',65822455,652000,30000,true)
	,(30,'fantasy hair wig',300,'online',4,'parul mehta','vishal nagar indor',9568123,300000,300000,true)
	,(31,'parul beauty products',460,'online',12,'parul shukla','taj chowk agra',7852112,50000,3000,true)
	,(32,'himalaya care',300,'wholesale',32,'himesh bhagat','ramnagar nagpur',785469,500000,60000,true)
	,(33,'guddu electricals',500,'wholesale',8,'guddu shane','shantinagar bhopal',8545552,80000,8000,true)
	,(34,'abhay handloom',230,'wholesale',16,'abhay sontakke','bhande nagar wardha',6548933,560000,25000,true)
	,(35,'jeenat mehandi',200,'wholesale',3,'jeenat khan','gajanand nagar sakoli',9658522,100000,25000,true)
	,(36,'bhagwan tire tube',36,'retail',2,'rahul pathak','tilak road delhi',55558222,50000,2500,true)
	,(37,'v tiers',300,'online',50,'vishal devke','tilak raod bhandra',7878942,620000,40000,true)
	,(38,'bhavna kinara shop',2300,'wholesale',6,'bhavna pande','chandani nagar pune',66544221,350000,36000,true)
	,(39,'prajwal fruit center',460,'wholesale',8,'prajwal kumale','bharat nagar panjab',75421222,1200000,65000,true)
	,(40,'Karishma dryfruits',1200,'wholesale',5,'karishma ninave','ujwal nagar bharatpur',7452000,1500000,78000,true)

select*from data2.shops