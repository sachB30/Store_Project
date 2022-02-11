Insert into ONLINESTOREDB.REGIONS (REGIONID,REGIONNAME) values (1,'Asia ');
Insert into ONLINESTOREDB.REGIONS (REGIONID,REGIONNAME) values (2,'Africa');
Insert into ONLINESTOREDB.REGIONS (REGIONID,REGIONNAME) values (3,'North America');
Insert into ONLINESTOREDB.REGIONS (REGIONID,REGIONNAME) values (4,'South America');
Insert into ONLINESTOREDB.REGIONS (REGIONID,REGIONNAME) values (5,'Antarctica');
Insert into ONLINESTOREDB.REGIONS (REGIONID,REGIONNAME) values (6,'Europe');
Insert into ONLINESTOREDB.REGIONS (REGIONID,REGIONNAME) values (7,'Australia');

---------------------------------------------------------------------------------------

Insert into ONLINESTOREDB.COUNTRIES (COUNTRYID,COUNTRYNAME,REGION) values (1,'India',1);
Insert into ONLINESTOREDB.COUNTRIES (COUNTRYID,COUNTRYNAME,REGION) values (2,'Nigeria',2);
Insert into ONLINESTOREDB.COUNTRIES (COUNTRYID,COUNTRYNAME,REGION) values (3,'Ghana',2);
Insert into ONLINESTOREDB.COUNTRIES (COUNTRYID,COUNTRYNAME,REGION) values (4,'Kenya',2);
Insert into ONLINESTOREDB.COUNTRIES (COUNTRYID,COUNTRYNAME,REGION) values (5,'Japan',1);
Insert into ONLINESTOREDB.COUNTRIES (COUNTRYID,COUNTRYNAME,REGION) values (6,'China',1);
Insert into ONLINESTOREDB.COUNTRIES (COUNTRYID,COUNTRYNAME,REGION) values (7,'France',6);
Insert into ONLINESTOREDB.COUNTRIES (COUNTRYID,COUNTRYNAME,REGION) values (8,'Italy',6);
Insert into ONLINESTOREDB.COUNTRIES (COUNTRYID,COUNTRYNAME,REGION) values (9,'Germany',6);
Insert into ONLINESTOREDB.COUNTRIES (COUNTRYID,COUNTRYNAME,REGION) values (10,'Greece',6);

---------------------------------------------------------------------------------------------


Insert into ONLINESTOREDB.Locations values(1122,'ABC','110092','Delhi','Delhi',1);
Insert into ONLINESTOREDB.Locations values(1123,'ABD','343443','Tokyo','Tokyo',5);
Insert into ONLINESTOREDB.Locations values(1124,'ABE','43324','Noida','UP',1);
Insert into ONLINESTOREDB.Locations values(1125,'ABF','110092','Delhi','Delhi',1);
Insert into ONLINESTOREDB.Locations values(1126,'ABG','453555','Ambala','Punjab',1);
Insert into ONLINESTOREDB.Locations values(1127,'ABH','343432','Delhi','Delhi',1);
Insert into ONLINESTOREDB.Locations values(1128,'ABI','343244','Paris','Paris',7);
Insert into ONLINESTOREDB.Locations values(1129,'ABJ','434424','Mumbai','Mumbai',1);
Insert into ONLINESTOREDB.Locations values(1203,'ABK','434344','Jammu','JK',1);
Insert into ONLINESTOREDB.Locations values(1463,'ABL','434344','Etieo','Etieo',7);

---------------------------------------------------------------------

Insert into ONLINESTOREDB.Warehouses values(222,'ADDL Lmt.',1126);
Insert into ONLINESTOREDB.Warehouses values(103,'GKEE Lmt.',1122);
Insert into ONLINESTOREDB.Warehouses values(357,'TTHY Lmt.',1122);
Insert into ONLINESTOREDB.Warehouses values(568,'SSDW Lmt.',1124);
Insert into ONLINESTOREDB.Warehouses values(541,'BBFW Lmt.',1203);
Insert into ONLINESTOREDB.Warehouses values(431,'HHRE Lmt.',1463);
Insert into ONLINESTOREDB.Warehouses values(889,'ERYR Lmt.',1128);
Insert into ONLINESTOREDB.Warehouses values(114,'WDGF Lmt.',1128);
Insert into ONLINESTOREDB.Warehouses values(458,'RTYH Lmt.',1122);
Insert into ONLINESTOREDB.Warehouses values(999,'RGHU Lmt.',1122);

------------------------------------------------------------------

Insert into ONLINESTOREDB.Product_category values(100,'Mobile');
Insert into ONLINESTOREDB.Product_category values(101,'Camera');
Insert into ONLINESTOREDB.Product_category values(102,'Photo & Accessories');
Insert into ONLINESTOREDB.Product_category values(103,'Monitor');
Insert into ONLINESTOREDB.Product_category values(104,'Chargers');
Insert into ONLINESTOREDB.Product_category values(105,'Batteries & Power Supplies');
Insert into ONLINESTOREDB.Product_category values(106,'Card Readers');
Insert into ONLINESTOREDB.Product_category values(107,'Cleaners');
Insert into ONLINESTOREDB.Product_category values(108,'Computer Hardware & Software');
Insert into ONLINESTOREDB.Product_category values(109,'Earphone & Headphone');
Insert into ONLINESTOREDB.Product_category values(110,'Routers');

------------------------------------------------------------

Insert into ONLINESTOREDB.Products values(1001,'Samsung M42','Mobile Phone',1160,1800,100);
Insert into ONLINESTOREDB.Products values(1002,'One Plus 10','Mobile Phone',2360,2500,100);
Insert into ONLINESTOREDB.Products values(1003,'Oppo X11','Mobile Phone',1400,1500,100);
Insert into ONLINESTOREDB.Products values(1004,'Dell Power Bank','Power Bank',1700,1700,105);
Insert into ONLINESTOREDB.Products values(1005,'HP Monitor','LED Monitor 16 inch',800,900,103);
Insert into ONLINESTOREDB.Products values(1006,'HCL Monitor','LED Monitor 15 inch',600,700,103);
Insert into ONLINESTOREDB.Products values(1007,'Boat Headphone','Rockerez 350',400,500,109);
Insert into ONLINESTOREDB.Products values(1008,'Vivo V23','Mobile Phone',2400,2500,100);
Insert into ONLINESTOREDB.Products values(1009,'DDR4 RAM','16 GB Memory',700,750,108);
Insert into ONLINESTOREDB.Products values(1103,'Nokia B12','Mobile Phone',1800,1900,100);

------------------------------------------------------------
-------------------------------------------------------------

Insert into ONLINESTOREDB.Inventory values(11,300,1001,222);
Insert into ONLINESTOREDB.Inventory values(12,400,1002,103);
Insert into ONLINESTOREDB.Inventory values(13,200,1003,357);
Insert into ONLINESTOREDB.Inventory values(14,100,1005,999);
Insert into ONLINESTOREDB.Inventory values(15,250,1001,889);
Insert into ONLINESTOREDB.Inventory values(16,700,1001,431);
Insert into ONLINESTOREDB.Inventory values(17,300,1008,114);
Insert into ONLINESTOREDB.Inventory values(18,300,1006,568);
Insert into ONLINESTOREDB.Inventory values(19,800,1001,222);
Insert into ONLINESTOREDB.Inventory values(20,600,1001,458);

-------------------------------------------------------------

Insert into ONLINESTOREDB.Department values(10,'Finance',1122);
Insert into ONLINESTOREDB.Department values(20,'Finance',1123);
Insert into ONLINESTOREDB.Department values(30,'Sales',1125);
Insert into ONLINESTOREDB.Department values(40,'HR',1127);
Insert into ONLINESTOREDB.Department values(50,'Finance',1124);
Insert into ONLINESTOREDB.Department values(60,'HR',1122);
Insert into ONLINESTOREDB.Department values(70,'RESEARCH',1127);
Insert into ONLINESTOREDB.Department values(80,'RESEARCH',1128);
Insert into ONLINESTOREDB.Department values(90,'Inventory',1129);
Insert into ONLINESTOREDB.Department values(99,'Inventory',1463);
-------------------------------------------------------------

Insert into ONLINESTOREDB.Employees values(7369,'Amit','Kapoor','abc@gmail.com',3437893,'16-Dec-2013','30-Apr-1983',800000,7698,'Manager',40);
Insert into ONLINESTOREDB.Employees values(7499,'Rahul','Kapoor','abc@gmail.com',3467893,'16-Dec-2013','30-Apr-1983',500000,7902,'Manager',20);
Insert into ONLINESTOREDB.Employees values(7521,'Sonu','Kapoor','abc@gmail.com',1437893,'16-Dec-2013','30-Apr-1983',700000,7698,'Manager',10);
Insert into ONLINESTOREDB.Employees values(7566,'Monu','Shanrma','abc@gmail.com',3487893,'16-Dec-2013','30-Apr-1983',800000,7839,'Manager',10);
Insert into ONLINESTOREDB.Employees values(7698,'Mohan','Garg','abc@gmail.com',3437893,'16-Dec-2013','30-Apr-1983',600000,7839,'Manager',80);
Insert into ONLINESTOREDB.Employees values(7782,'Dev','Kapoor','abc@gmail.com',3437993,'16-Dec-2013','30-Apr-1983',800000,7566,'Manager',70);
Insert into ONLINESTOREDB.Employees values(7839,'Sahil','Kapoor','abc@gmail.com',9437893,'16-Dec-2013','30-Apr-1983',800000,7902,'Manager',50);
Insert into ONLINESTOREDB.Employees values(7900,'Aman','Kapoor','abc@gmail.com',8437893,'16-Dec-2013','30-Apr-1983',600000,7902,'Manager',90);
Insert into ONLINESTOREDB.Employees values(7934,'Ravi','Kapoor','abc@gmail.com',5437893,'16-Dec-2013','30-Apr-1983',700000,7902,'Manager',99);
Insert into ONLINESTOREDB.Employees values(7902,'Ashish','Kapoor','abc@gmail.com',8437893,'16-Dec-2013','30-Apr-1983',800000,7902,'Manager',60);

-------------------------------------------------------------

Insert into ONLINESTOREDB.Customer values(111,'Manpreet','Delhi','dlfdff.com','','','');
Insert into ONLINESTOREDB.Customer values(112,'Jagpreet','Paris','dlfdff.com','','','');
Insert into ONLINESTOREDB.Customer values(113,'Harpreet','Delhi','','','dfdfdfdf','');
Insert into ONLINESTOREDB.Customer values(114,'Mandeep','Delhi','dlfdff.com','','','');
Insert into ONLINESTOREDB.Customer values(115,'HariRam','Faridabad','dlfdff.com','','','');
Insert into ONLINESTOREDB.Customer values(116,'Manjeet','Delhi','','','','dfdfdf');
Insert into ONLINESTOREDB.Customer values(117,'Jaideep','Agra','dlfdff.com','','','');
Insert into ONLINESTOREDB.Customer values(118,'Mansukh','Delhi','dlfdff.com','','','');
Insert into ONLINESTOREDB.Customer values(119,'Jaimaan','Noida','dlfdff.com','','fdfdfdf','');
Insert into ONLINESTOREDB.Customer values(120,'Harman','Thane','dlfdff.com','','','');

-------------------------------------------------------------

Insert into ONLINESTOREDB.Contacts values(121,'FDFD','FDSFD','dlfdff@gmail.com',343432,111);
Insert into ONLINESTOREDB.Contacts values(122,'DFDS','FDFDF','TESTS@gmail.com',342342,112);
Insert into ONLINESTOREDB.Contacts values(123,'HFGF','FDFS','dlfdff@gmail.com',6463634,113);
Insert into ONLINESTOREDB.Contacts values(124,'GFGF','FDSFD','dlfdff@gmail.com',65777,114);
Insert into ONLINESTOREDB.Contacts values(125,'RGRD','FDSFD','HHH@gmail.com',7577,115);
Insert into ONLINESTOREDB.Contacts values(126,'FDFD','FDSF','TEST@gmail.com',75777,116);
Insert into ONLINESTOREDB.Contacts values(127,'RGD','FDSFD','dlfdff@gmail.com',4555,117);
Insert into ONLINESTOREDB.Contacts values(128,'GGFG','HHR','dlfdff@gmail.com',6466,118);
Insert into ONLINESTOREDB.Contacts values(129,'DFFF','ERTTR','TEST@gmail.com',633636,119);
Insert into ONLINESTOREDB.Contacts values(130,'DFSF','TRE','TEST@gmail.com',3463463,120);


-------------------------------------------------------------


Insert into ONLINESTOREDB.Orders values(1000,111,'SHIPPED',343,SYSDATE,SYSDATE+3);
Insert into ONLINESTOREDB.Orders values(1001,112,'SHIPPED',345,SYSDATE+1,SYSDATE+3);
Insert into ONLINESTOREDB.Orders values(1002,113,'COMPLETED',343,SYSDATE,SYSDATE+3);
Insert into ONLINESTOREDB.Orders values(1003,114,'SHIPPED',343,SYSDATE,SYSDATE+3);
Insert into ONLINESTOREDB.Orders values(1004,115,'COMPLETED',348,SYSDATE,SYSDATE+3);
Insert into ONLINESTOREDB.Orders values(1005,112,'SHIPPED',343,SYSDATE,SYSDATE+3);
Insert into ONLINESTOREDB.Orders values(1006,117,'PENDING',343,SYSDATE,SYSDATE+3);
Insert into ONLINESTOREDB.Orders values(1007,118,'SHIPPED',843,SYSDATE,SYSDATE+3);
Insert into ONLINESTOREDB.Orders values(1008,118,'PENDING',343,SYSDATE,SYSDATE+3);
Insert into ONLINESTOREDB.Orders values(1009,119,'CANCELED',943,SYSDATE,SYSDATE+3);
Insert into ONLINESTOREDB.Orders values(1012,112,'COMPLETED',345,SYSDATE+1,SYSDATE+3);

-------------------------------------------------------------


Insert into ONLINESTOREDB.OrderItems values(501,1000,1005,10,900,18,222);
Insert into ONLINESTOREDB.OrderItems values(502,1001,1003,50,1500,14,431);
Insert into ONLINESTOREDB.OrderItems values(503,1002,1005,10,900,16,999);
Insert into ONLINESTOREDB.OrderItems values(504,1000,1004,50,1700,17,999);
Insert into ONLINESTOREDB.OrderItems values(505,1001,1005,10,900,18,431);
Insert into ONLINESTOREDB.OrderItems values(506,1004,1001,70,1800,11,541);
Insert into ONLINESTOREDB.OrderItems values(509,1004,1007,30,900,18,999);
Insert into ONLINESTOREDB.OrderItems values(507,1003,1006,10,700,11,541);
Insert into ONLINESTOREDB.OrderItems values(508,1006,1005,20,900,17,541);
Insert into ONLINESTOREDB.OrderItems values(510,1005,1001,90,1800,18,431);
Insert into ONLINESTOREDB.OrderItems values(511,1012,1001,100,1800,18,431);

Commit;

