create table product_master(
PRODUCTNO						VARCHAR2(6)	,	
DESCRIPTION						VARCHAR2(15),	
PROFITPERCENT		NUMBER(4,2),
UNITMEASURE					VARCHAR2(10),	
QTYONHAND						NUMBER(8),		
REORDERLVL						NUMBER(8,2),
SELLPRICE						NUMBER(8,2),
COSTPRICE						NUMBER(8,2)
);

insert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P00001',	'1.44floppies' ,5	,	'Piece'	,	200	,50	,350, 250); 
insert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P03453','Monitors', 6, 'Piece'	,150	,50, 500,	350); 
insert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P06734','Mouse' ,5	,'Piece'	,100, 20, 600	,450); 
VALUESinsert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P07865','1.22floppies', 5,'Piece',100,	20,750,500); 
insert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P07868',	'Keyboards' ,2	,'Piece',150, 50, 850	,550); 
insert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P07885','CDDrive',2.5,'Piece',80	,30	,700	,450); 
insert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P07965',	'540 HDD', 4,	'Piece',100,40, 350	,250); 
insert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P07975', '1.44Drive' ,5	,'Piece',	70, 30, 300	,175); 
insert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P08865', '1.22Drive', 5,	'Piece',75,30,450,300); 
insert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P00001',	'1.44floppies' ,5	,	'Piece'	,	200	,50	,350, 250); 
insert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P03453','Monitors', 6, 'Piece'	,150	,50, 500,	350); 
insert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P06734','Mouse' ,5	,'Piece'	,100, 20, 600	,450); 
VALUESinsert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P07865','1.22floppies', 5,'Piece',100,	20,750,500); 
insert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P07868',	'Keyboards' ,2	,'Piece',150, 50, 850	,550); 
insert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P07885','CDDrive',2.5,'Piece',80	,30	,700	,450); 
insert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P07965',	'540 HDD', 4,	'Piece',100,40, 350	,250); 
insert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P07975', '1.44Drive' ,5	,'Piece',	70, 30, 300	,175); 
insert into product_master(PRODUCTNO,DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND	,REORDERLVL, SELLPRICE, COSTPRICE) VALUES('P08865', '1.22Drive', 5,	'Piece',75,30,450,300); 
select name from client_master;
select name,city from client_master;
select description from product_master;
select * from client_master where city='bombay';
select * from client_master where clientno in('C00001','C000002');
select * from product_master where description in('1.44Drive','1.22Drive');
select * from product_master where SELLPRICE>5000;
select * from client_master where city in('Bombay','Delhi','Madras');
select * from product_master where SELLPRICE>2000 and SELLPRICE<5000 ;
select name, state, city from client_master where state <> 'Maharashtra';
update product_master
set sellprice=1150
where description='1.44floppies';
delete from client_master
where clientno='C00001';
select productno, description,sellprice*15 as new_selling_price from product_master where sellprice>1500;
select * from client_master where city like '_a%';
select * from client_master where name like '_a%';
select * from product_master order by description;
select sum(reorderlvl) from product_master;
select avg(costprice) from product_master;
select min(costprice) from product_master;
select  man(costprice)max_price,  min(costprice)min_price from product_master;
select count(productno) from product_master where sellprice>=1500;
select * from product_master order by sellprice;
select * from product_master order by sellprice desc;
