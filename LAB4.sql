create database lab4;
use lab4;
create table category( CAT_ID int, CAT_NAME varchar(20), primary key(CAT_ID));
create table product( PRO_ID int, PRO_NAME varchar(50), PRO_DES varchar(100), CAT_ID int, primary key(PRO_ID), foreign key(CAT_ID) references category(CAT_ID));
create table supplier( SUPP_ID int, SUPP_NAME varchar(50) not null, SUPP_CITY varchar(50) not null, SUPP_PHONE varchar(50) not null);
alter table supplier modify column SUPP_ID int primary key;
create table supplier_pricing(PRICING_ID int primary key, PRO_ID int, SUPP_ID int, SUPP_PRICE int default 0, foreign key(PRO_ID) references product(PRO_ID), foreign key(SUPP_ID) references supplier(SUPP_ID));
create table customer( CUS_ID int primary key, CUS_NAME varchar(50) not null, CUS_PHONE varchar(50) not null, CUS_CITY varchar(50) not null, CUS_GENDER char);
create table orders( ORD_ID int primary key, ORD_AMOUNT int not null, ORD_DATE date not null, CUS_ID int, PRICING_ID int, foreign key(CUS_ID) references customer(CUS_ID), foreign key(PRICING_ID) references supplier_pricing(PRICING_ID));
create table rating( RAT_ID int primary key, ORD_ID int, RAT_RATSTARS int not null, foreign key(ORD_ID) references orders(ORD_ID));
insert into category values(1, "Books");
insert into category values(2, "Games");
insert into category values(3, "Groceries");
insert into category values(4, "Electronics");
insert into category values(5, "Clothes");
insert into product values(1, "GTA V", "Windows 7 and above with i5 processor and 8GB RAM", 2);
insert into product values(2, "TSHIRT", "size-L with black, blue and white variations", 5);
insert into product values(3, " ROG LAPTOP", "Windows 10 with 15 inch screen i7 processor 1TB SSD", 4);
insert into product values(4, "OATS", "Highly nutritious from Nestle", 3);
insert into product values(5, " HARRY POTTER", "Best collection of all time by JK Rowling", 1);
insert into product values(6, "MILK", " 1L Toned milk", 3);
insert into product values(7, "Boat Earphones", "1.5 meter long Dolby Atoms", 4);
insert into product values(8, "JEANS", "Stretchable Denim Jeans with various sizes and color", 5);
insert into product values(9, "Project IGI", "Compatible with windows 7 and above", 2);
insert into product values(10, "Hoodie", "Black GUCCI for 13 years and above", 5);
insert into product values(11, " RICH DAD POOR DAD", "written by Robert Kiyosaki",1);
insert into product values(12, "Train your brain", "By Shireen Stephen",1); 
select * from product;
insert into supplier values(1, " Rajesh Retails", "Delhi", "1234567890");
insert into supplier values(2, "Appario Ltd", "Mumbai", "2589631470");
insert into supplier values(3, "Knome products", "Bangalore", "9087654321");
insert into supplier values(4, "Bansai Retails", "Kochi", "8976543210");
insert into supplier values(5, "Mittal Ltd", "Lucknow", "7898456532");
insert into supplier_pricing values (1, 1, 2, 1500);
insert into supplier_pricing values(2, 3, 5, 30000);
insert into supplier_pricing values(3, 5, 1, 3000);
insert into supplier_pricing values(4, 2, 3, 2500);
insert into supplier_pricing values(5, 4, 1, 1000);
insert into supplier_pricing values(6, 12, 2, 780);
insert into supplier_pricing values(7, 12, 4, 780);
insert into supplier_pricing values(8, 3, 1, 31000);
insert into supplier_pricing values(9, 1, 5, 1450);
insert into supplier_pricing values(10, 4, 2, 999);
insert into supplier_pricing values(11, 7, 3, 549);
insert into supplier_pricing values(12, 7, 4, 529);
insert into supplier_pricing values(13, 6, 2, 105);
insert into supplier_pricing values(14, 6, 1, 99);
insert into supplier_pricing values(15, 2, 5, 2999);
insert into supplier_pricing values(16, 5, 2, 2999);
insert into customer values(1, "Aakash", "9999999999", "Delhi", "M");
insert into customer values(2, "Aman", "9876543201", "Nodia", "M");
insert into customer values(3, "Neha", "8887654321", "Mumbai", "F");
insert into customer values(4, "Megha", "9988764512", "Kolkata", "F");
insert into customer values(5, "Pulkit", "8799008876", "Lucknow", "M");
select * from customer;
insert into orders values( 101, 1500, "2021-10-06", 2, 1);
insert into orders values( 102, 1000, "2021-10-12", 3, 5);
insert into orders values( 103, 30000, "2021-09-16", 5, 2);
insert into orders values( 104, 1500, "2021-10-05", 1, 1);
insert into orders values( 105, 3000, "2021-08-16", 4, 3);
insert into orders values( 106, 1450, "2021-08-18", 1, 9);
insert into orders values( 107, 789, "2021-09-01", 3, 7);
insert into orders values( 108, 780, "2021-09-07", 5, 6);
insert into orders values( 109, 3000, "2021-09-10", 5, 3);
insert into orders values( 110, 2500, "2021-09-10", 2, 4);
insert into orders values( 111, 1000, "2021-09-15", 4, 5);
insert into orders values( 112, 789, "2021-09-16", 4, 7);
insert into orders values( 113, 31000, "2021-09-16", 1, 8);
insert into orders values( 114, 1000, "2021-09-16", 1, 8);
insert into orders values( 115, 3000, "2021-09-16", 5, 3);
insert into orders values( 116, 99, "2021-09-17", 2, 14);
select * from orders;
insert into rating values ( 1, 101, 4);
insert into rating values (2, 102, 3);
insert into rating values (3, 103, 1);
insert into rating values (4, 104, 2);
insert into rating values (5, 105, 4);
insert into rating values (6, 106, 3);
insert into rating values (7, 107, 4);
insert into rating values (8, 108, 4);
insert into rating values (9, 109, 3);
insert into rating values (10, 110, 5);
insert into rating values (11, 111, 3);
insert into rating values (12, 112, 4);
insert into rating values (13, 113, 2);
insert into rating values (14, 114, 1);
insert into rating values (15, 115, 1);
insert into rating values (16, 116, 0);
select * from rating;
/*Display the total number of customers based on gender who have placed individual orders of worth at least Rs.3000.*/
select CUS_GENDER, COUNT(*) as Total_Customers from customer inner join orders on customer.CUS_ID = orders.CUS_ID where ORD_AMOUNT >= 3000 group by CUS_GENDER;

/*Display all the orders along with product name ordered by a customer having Customer_Id=2*/
select orders.ORD_ID, product.PRO_NAME from orders inner join product on orders.PRICING_ID = product.PRO_ID where orders.CUS_ID = 2;

/*Display the Supplier details who can supply more than one product.*/
select supplier.* from supplier inner join supplier_pricing on supplier.SUPP_ID = supplier_pricing.SUPP_ID group by supplier.SUPP_ID,supplier.SUPP_NAME having COUNT(distinct supplier_pricing.PRO_ID) > 1;

/*Find the least expensive product from each category and print the table with category id, name, product name and price of the product */
select category.CAT_ID, category.CAT_NAME, product.PRO_NAME, supplier_pricing.SUPP_PRICE from category
inner join product on category.CAT_ID = product.CAT_ID
inner join supplier_pricing on product.PRO_ID = supplier_pricing.PRO_ID
where supplier_pricing.SUPP_PRICE = ( select MIN(SUPP_PRICE) from supplier_pricing where supplier_pricing.PRO_ID = product.PRO_ID);

/*Display the Id and Name of the Product ordered after “2021-10-05”*/
select product.PRO_ID, product.PRO_NAME from orders inner join product on orders.PRICING_ID = product.PRO_ID where orders.ORD_DATE > '2021-10-05';

/*Display customer name and gender whose names start or end with character 'A'.*/
select CUS_NAME, CUS_GENDER from customer where CUS_NAME like 'A%' or CUS_NAME like '%A';