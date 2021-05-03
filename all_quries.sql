prompt some DDL operations.....


alter table doctor add sex varchar2(15) ;
alter table doctor modify email varchar2(15);
alter table doctor_patient_relation rename column v_date to visit_date;
alter table doctor drop column sex;

prompt ***************** doctor table ******************* 
describe doctor;
prompt ***************** doctor_patient_relation table *******************
describe doctor_patient_relation;



prompt ********************* some DML operations********************

select * from patient;
select * from doctor;
select * from doctor_patient_relation;
select * from blood_donor;
select * from blood_taker;
select * from donor_taker_relation;
select * from donor_patient_relation;
 
 update patient set name='hamim' where patient_id=1;
 delete from patient where name='piyas';
 update blood_donor set name='D1' where blood_donor_id=1;
 delete from donor_taker_relation where blood_donor_id=8 and blood_taker_id=8;
 select name from blood_donor where age>=20 and age <=27; 
 select  distinct age from blood_donor;
 select (age/2) from blood_donor ;
 select (age/2) as age_divided_by_2 from blood_donor;
 select name from blood_taker where blood_taker_id between 1 and 5; 
 select name from doctor where doctor_id in(3,7);
 select name from patient where name like '%mim%';
 select name from blood_donor order by age; 
select name from blood_donor order by age,blood_donor_id desc;

prompt *************** some Aggregate_function  operations***************

select count(*) as total from patient;
select count(name) from blood_taker;
select count (patient_id) as how_many_time_patient_id_1 from doctor_patient_relation where patient_id=1;  
select count (distinct age) as distinct_age from blood_donor;
select sum(age) as summation_of_age from blood_donor;
select avg(age) as avg_of_age from blood_donor;
select max(age) as maximum_age from blood_donor;
select min(age) as minimum_age from blood_donor;
select avg(nvl(age,0)) as avg_of_age from blood_donor;
select doctor_id,count(patient_id) from doctor_patient_relation group by (doctor_id);
select blood_donor_id,count(blood_taker_id) from donor_taker_relation group by(blood_donor_id);
select blood_donor_id,count(patient_id) from donor_patient_relation group by(blood_donor_id);
select blood_donor_id,count(patient_id) from donor_patient_relation where blood_donor_id>=3 group by(blood_donor_id);
select blood_donor_id,count(blood_taker_id) from donor_taker_relation group by(blood_donor_id) having count(blood_taker_id)>=3;

prompt ******************* subquery_set_operations**********************

SELECT name  FROM blood_donor WHERE name IN (SELECT name FROM blood_donor WHERE blood_donor_id=1);
		
		select name from patient where  patient_id in (select patient_id from doctor_patient_relation where doctor_id=1);
		select name from doctor where  doctor_id in (select doctor_id from doctor_patient_relation where patient_id=1);
		select name from blood_taker where blood_taker_id in(select blood_taker_id from donor_taker_relation where blood_donor_id=1);
		select name from blood_donor where blood_donor_id in(select blood_donor_id from donor_taker_relation where blood_taker_id=3);
		select name from patient where patient_id in(select patient_id from donor_patient_relation where blood_donor_id=2);
		
prompt ********************* 2 subquery operations*********************

select name from doctor where doctor_id in( select doctor_id from doctor_patient_relation where patient_id in(select patient_id from donor_patient_relation where blood_donor_id=1));		
		

 