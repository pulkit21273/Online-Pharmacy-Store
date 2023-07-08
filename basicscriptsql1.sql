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
select * from seller;