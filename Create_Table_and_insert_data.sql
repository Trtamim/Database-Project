drop table donor_taker_relation;
drop table donor_patient_relation;
drop table doctor_patient_relation;
drop table patient;
drop table doctor;
drop table blood_donor;
drop table blood_taker;
create table patient
(
	patient_id number(3),
	name	varchar2(10) not null,
	address varchar2(10) not null,
                  phone_no varchar(11) ,
                  PRIMARY KEY (patient_id)
        );
         
		
create table doctor
(
	doctor_id number(3),
	name	varchar2(10) not null,
	address varchar2(10),
      email varchar(15),    
	phone_no varchar2(11),
                  PRIMARY KEY (doctor_id)
        );
		
		
create table doctor_patient_relation
(
	patient_id number(3),
	doctor_id number(3),
	v_date date not null,
	   PRIMARY KEY (patient_id,doctor_id),
                 FOREIGN KEY (patient_id) REFERENCES  patient (patient_id) ON DELETE CASCADE,
                 FOREIGN KEY (doctor_id) REFERENCES doctor (doctor_id) ON DELETE CASCADE
 );
		
create table blood_donor
(
blood_donor_id number(3),
name varchar2 (10) not null,
age integer check(age>=18),
permanent_address varchar2(10),
phone_no varchar2 (11),
blood_group varchar2(10),
blood_status varchar2(10),
present_address varchar2(10),
primary key(blood_donor_id)
);		

	 

create table blood_taker
(
blood_taker_id number(3),
name varchar2 (10) not null,
permanent_address varchar2(10),
phone_no varchar2 (11),
present_address varchar2(10),
primary key(blood_taker_id)
);		



create table donor_taker_relation
(
blood_donor_id number(3),
blood_taker_id number(3),
delivery_date date not null,
delivery_time varchar2(15) not null,
primary key(blood_donor_id,blood_taker_id),
                 FOREIGN KEY (blood_donor_id) REFERENCES blood_donor (blood_donor_id) ON DELETE CASCADE,
                 FOREIGN KEY (blood_taker_id) REFERENCES blood_taker (blood_taker_id) ON DELETE CASCADE
);	

create table donor_patient_relation
(
blood_donor_id number(3),
patient_id number(3),
delivary date not null,
PRIMARY KEY (blood_donor_id,patient_id),
FOREIGN KEY (blood_donor_id) REFERENCES blood_donor (blood_donor_id) ON DELETE CASCADE ,
FOREIGN KEY (patient_id) REFERENCES patient (patient_id) ON DELETE CASCADE
);


		 insert into patient values (1,'mim','kuet','01674536911');
         insert into patient values (2,'tamim','BUET','01774536911');
         insert into patient values (3,'luna','dhaka','01874536911');
		 insert into patient values (4,'wasi','dhaka','01874536911');
		 insert into patient values (5,'waniya','dhaka','01874536911');
		 insert into patient values (6,'adiyan','dhaka','01874536911');
		 insert into patient values (7,'arisha','dhaka','01874536911');
		 insert into patient values (8,'polash','dhaka','01874536911');
		 insert into patient values (9,'piyas','dhaka','01874536911');
		 
		 
		 	insert into doctor values (1,'A','kuet','A@gmail.com','01674536911');		
		insert into doctor values (2,'B','Buet','B@gmail.com','01672236911');		
		insert into doctor values (3,'C' ,'Cuet','C@gmail.com','01634536911');		
		insert into doctor values (4,'D' ,'DU','C@gmail.com','01634536911');		
		insert into doctor values (5,'E' ,'KMC','C@gmail.com','01634536911');		
		insert into doctor values (6,'F' ,'DHAKA','C@gmail.com','01634536911');		
		insert into doctor values (7,'G' ,'SYlhet','C@gmail.com','01634536911');		
		insert into doctor values (8,'H' ,'RMC','C@gmail.com','01634536911');		
		insert into doctor values (9,'I' ,'DMC','C@gmail.com','01634536911');		
		
	
	insert into doctor_patient_relation values(1,1,'05-may-2015');	
	insert into doctor_patient_relation values(2,2,'03-may-2015');	
	insert into doctor_patient_relation values(3,3,'01-may-2015');	
	insert into doctor_patient_relation values(1,2,'05-may-2015');	
	insert into doctor_patient_relation values(1,3,'05-may-2015');	
	insert into doctor_patient_relation values(3,1,'05-may-2015');	
	insert into doctor_patient_relation values(2,1,'05-may-2015');	
	insert into doctor_patient_relation values(3,2,'05-may-2015');	
	insert into doctor_patient_relation values(2,3,'05-may-2015');	
	insert into doctor_patient_relation values(9,3,'05-may-2015');	
	insert into doctor_patient_relation values(6,5,'05-may-2015');	
	insert into doctor_patient_relation values(4,9,'05-may-2015');	
	insert into doctor_patient_relation values(8,7,'05-may-2015');	
	insert into doctor_patient_relation values(7,8,'05-may-2015');	
	insert into doctor_patient_relation values(5,5,'05-may-2015');	
	insert into doctor_patient_relation values(5,9,'05-may-2015');	
	insert into doctor_patient_relation values(9,4,'05-may-2015');	
	insert into doctor_patient_relation values(9,2,'05-may-2015');	
	insert into doctor_patient_relation values(8,1,'05-may-2015');	
	insert into doctor_patient_relation values(8,8,'05-may-2015');	
	insert into doctor_patient_relation values(7,7,'05-may-2015');	
	insert into doctor_patient_relation values(1,8,'05-may-2015');	
	insert into doctor_patient_relation values(9,7,'05-may-2015');	
	insert into doctor_patient_relation values(4,4,'05-may-2015');	
	
	
	insert into blood_donor values(1,'D0',27,'dhaka','01674536911','A+','good','kuet');	
     insert into blood_donor values(2,'D2',19,'magura','01674536911','B+','good','du');	
     insert into blood_donor values(3,'D3',20,'mongla','01674536911','A-','v.good','khulna');	
insert into blood_donor values(4,'D4',20,'khulna','01674536911','B-','good','sylhet');	
insert into blood_donor values(5,'D5',20,'chittagong','01674536911','O+','v.good','rajshahi');	
insert into blood_donor values(6,'D6',20,'uttara','01674536911','A-','good','bogura');	
insert into blood_donor values(7,'D7',20,'khilkhet','01674536911','B+','v.good','cuet');	
insert into blood_donor values(8,'D8',20,'rangpur','01674536911','A-','v.good','KUET');	
insert into blood_donor values(9,'D9',20,'rajshahi','01674536911','O-','good','uttara');	

	 
	 
insert into blood_taker values(1,'T1','dhaka','01634536911','du');	
insert into blood_taker values(2,'T2','dhaka','01774536911','kuet');	
insert into blood_taker values(3,'T3','mongla','01874536911','uttara');	
insert into blood_taker values(4,'T4','magura','01774536911','khulna');	
insert into blood_taker values(5,'T5','moakhali','01672236911','chittagong');	
insert into blood_taker values(6,'T6','mirpur','01634530011','bogura');	
insert into blood_taker values(7,'T7','rangpur','01874536911','KUET');	
insert into blood_taker values(8,'T8','uttara','01774536900','rajshshi');	
insert into blood_taker values(9,'T9','srinogor','01923732621','KUET');	
     

	 
	 insert into donor_taker_relation values (1,2,'05-may-2015','05:12:10');	
insert into donor_taker_relation values (1,1,'15-may-2015','05:12:10');	
insert into donor_taker_relation values (1,3,'01-may-2015','07:12:10');	
insert into donor_taker_relation values (2,2,'02-jun-2015','05:12:10');	
insert into donor_taker_relation values (3,2,'01-jan-2016','06:12:10');	
insert into donor_taker_relation values (3,3,'25-jan-2016','05:12:10');	
insert into donor_taker_relation values (3,1,'05-aug-2015','05:12:10');	
insert into donor_taker_relation values (2,1,'01-may-2015','05:12:10');	
insert into donor_taker_relation values (7,3,'03-may-2015','08:12:10');	
insert into donor_taker_relation values (8,4,'06-may-2014','05:12:10');	
insert into donor_taker_relation values (9,5,'15-mar-2014','09:12:10');	
insert into donor_taker_relation values (9,9,'15-may-2015','04:12:10');	
insert into donor_taker_relation values (5,4,'21-may-2014','03:12:10');	
insert into donor_taker_relation values (6,4,'22-may-2015','02:12:10');	
insert into donor_taker_relation values (8,9,'12-apr-2015','01:12:10');	
insert into donor_taker_relation values (8,8,'05-may-2015','05:12:10');	



insert into donor_patient_relation values (2,3,'25-may-2015');	
insert into donor_patient_relation values (1,3,'15-may-2015');	
insert into donor_patient_relation values (2,9,'05-may-2015');	
insert into donor_patient_relation values (4,8,'03-may-2015');	
insert into donor_patient_relation values (8,8,'06-may-2014');	
insert into donor_patient_relation values (7,7,'05-may-2015');	
insert into donor_patient_relation values (5,8,'25-jan-2016');	
insert into donor_patient_relation values (6,5,'05-jan-2016');	
insert into donor_patient_relation values (1,9,'15-may-2015');	

prompt ***************** patient table *******************
describe patient;
prompt ***************** doctor table *******************
describe doctor;
 prompt ***************** doctor_patient_relation table *******************
describe doctor_patient_relation;
 prompt ***************** blood_donor table *******************
describe blood_donor;
 prompt ***************** blood_taker table *******************
describe blood_taker;
 prompt ***************** donor_taker_relation table *******************
describe donor_taker_relation;
 prompt ***************** donor_patient_relation table *******************
describe donor_patient_relation;
 
commit ;
