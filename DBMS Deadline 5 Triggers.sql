/* TRIGGER 1 - CREDIT FOR COMPANIES AUTOMATICALLY SET TO THEIR NO+10 */
create trigger credit
before insert
on Company
for each row
set new.total_no = new.total_no + 10;
/* insert into company
values(101,"Delmed",101); */

/* TRIGGER 2 - UPADTING DOCTOR CONSULTATION FEE */
create trigger salary_diff
before update on Doctor
for each row
set new.consultation_fee = old.consultation_fee + 100;

