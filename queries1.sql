use project1;
/* QUERY1 - SELECTION
shortlisting doctor with specialization in dermatology and fee<400*/
SELECT * FROM DOCTOR
WHERE specialization="Dermatologist" AND consultation_fee <500;

/* QUERY2 - PROJECTION
Displaying the membership details of customers with their id,name and phone no*/
Select customer_id,first_name,last_name,phone_number,membership_details from customer;

/* QUERY3 - RENAME
Displaying the membership details of customers with their id,name and phone no*/
select * from customer;
select CUSTOMER_ID,first_NAME,last_name,PHONE_NUMBER
FROM CUSTOMER
WHERE CUSTOMER.MEMBERSHIP_DETAILS="Prime";

/* QUERY4- JOIN CART AND CUSTOMER */
SELECT customer.customer_id,customer.first_name,customer.last_name,customer.phone_number,customer.address,cart.cart_id,cart.product_id
FROM customer
JOIN cart on cart.customer_id=customer.customer_id;

/* QUERY4- CART VALUE */
DROP table temp_table;
CREATE TABLE temp_table AS
SELECT cart.customer_id,cart.cart_id,cart.product_id, product.price
FROM cart
join product on cart.product_id=product.product_id;
select * from temp_table;

/* QUERY5  - DIPLAYING CART VALUE WITH CART_ID */
CREATE TABLE finalcart_value AS
SELECT cart_id,SUM(price) AS Total_Price
FROM temp_table
GROUP BY cart_id;
select * from finalcart_value;

/* QUERY6 - UPDATING PRODUCT TABLE BY ADDING SELLER_IDS FOR SOME PRODUCTS */
UPDATE product
set seller_id=1
where product_id in (13,23,48,50);
select * from product;

/* QUERY7  - DISPLAYING DETAILS OF ALL SELLERS ASSOCIATED WITH A CUSTOMER */
CREATE TABLE sellerdetails_table AS
SELECT cart.cart_id,cart.product_id,cart.customer_id, product.seller_id,seller.seller_name,seller.contact_details
FROM cart
join product on cart.product_id=product.product_id
join seller on product.seller_id=seller.seller_id;
select * from sellerdetails_table;

CREATE table prescription
( problem varchar(50),
doctor_id int,
customer_id int,
test_name varchar(100),
product_id int,
foreign key (doctor_id) references doctor(doctor_id), 
foreign key (customer_id) references customer(customer_id),
foreign key (test_name) references labtest(test_name),
foreign key (product_id) references product(product_id));
INSERT INTO prescription
VALUES("Fever",10,1,"T1",13),
("Fever",10,1,null,48);
select * FROM PRESCRIPTION;

select * from cart;

/* QUERY7  - DISPLAYING THE PRODUCTS RECOMMENDED BY DOCTOR THAT WERE BOUGHT BY CUSTOMER */
DROP TABLE inner_join;
CREATE TABLE inner_join as
SELECT prescription.customer_id,prescription.product_id,cart.cart_id
FROM prescription
INNER JOIN cart ON cart.customer_id=prescription.customer_id AND cart.product_id=prescription.product_id;
select * from inner_join;
select * from labtest;
use project1;
create table books(
customer_id int,
test_name varchar(50),
foreign key (customer_id) references customer(customer_id),
foreign key (test_name) references labtest(test_name));
select * from BOOKS;
INSERT INTO BOOKS
VALUES(1,"T3"),
(1,"T1");

/* QUERY8  - DISPLAYING THE LABTESTS RECOMMENDED BY DOCTOR THAT WERE BOOKED BY CUSTOMER */
CREATE TABLE inner_join1 as
SELECT prescription.customer_id,prescription.test_name
FROM prescription
INNER JOIN books ON books.customer_id=prescription.customer_id AND books.test_name=prescription.test_name;
select * from inner_join1;

/* QUERY9  - DISPLAYING THE LABTESTS RECOMMENDED BY DOCTOR THAT WERE BOOKED BY CUSTOMER */
ALTER TABLE SUBSCRIPTION
DROP DISOCUNT;
ALTER TABLE SUBSCRIPTION
ADD Discount int;
insert into subscription
values("VIP",3000,20);
UPDATE SUBSCRIPTION
SET discount=10
where subscription_type="prime";
select * from temp_table;
/* QUERY12 - CHECKOUT CART */
CREATE TABLE Checkout_Cart AS
SELECT customer.customer_id,customer.membership_details,finalcart_value.cart_id,finalcart_value.total_price, subscription.subscription_type,subscription.discount
FROM finalcart_value
JOIN customer on customer.customer_id=finalcart_value.cart_id
join subscription on customer.membership_details=subscription.subscription_type;
select * from checkout_cart;

select cart_id,ROUND((total_price-(total_price*discount/100)),2) as discounted_price
from checkout_cart;
