/*beacuse i forgive to insert data with null doctorid */
insert into Episode
values (7,123,10,'action','go', '2011-03-12' ,4,null ,' long episode') 

update Episode 
set Title =CONCAT(Title,'_CANCELLED')
where DoctorId IS NULL