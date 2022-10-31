//test


UPDATE Staff SET salary= salary *1.03;

UPDATE Staff SET salary= salary *1.05 Where position="Manager";

UPDATE PropertyForRent SET rent= rent *1.05 ;

Update Staff set position="Manager",salary=18000 where fName="David";

Delete from Viewing where propertyNo ="PG4";

Delete from Viewing ;




part 2

select staffNo, fName, lName from Staff;

select * from PropertyForRent where propertyNo=(select propertyNo from Viewing;
)

select staffNo,fName, lName, salary from Staff;

select * from Staff where salary>10000;
select street , city, postcode from Branch where city="London" or city="Glasgow";


select * from Staff where salary between 20000 and 30000;





