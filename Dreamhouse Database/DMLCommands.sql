    //1. Find the number of staff working in each branch and the sum 
of their salaries.

SELECT branchNo, COUNT(staffNo) AS "count", SUM(salary) AS "sum" 
            FROM Staff
            GROUP BY branchNo
           ORDER BY branchNo ;
           
               //2. For each branch office with more than one member of staff, 
//find the number of staff working in each branch and the sum 
//of their salaries.
SELECT branchNo, COUNT(staffNo) AS "count", SUM(salary) AS "sum"
FROM Staff
GROUP BY branchNo
HAVING COUNT(staffNo) > 1
ORDER BY branchNo ;


DML Commands IV      
Adarsh M
S5  cSE 
59

Aim:
Implementation of Group By & Having clause.

    1. Find the number of staff working in each branch and the sum 
of their salaries.
SELECT branchNo, COUNT(staffNo) AS "count", SUM(salary) AS "sum" 
            FROM Staff
            GROUP BY branchNo
           ORDER BY branchNo ;






    2. For each branch office with more than one member of staff, 
find the number of staff working in each branch and the sum 
of their salaries.
SELECT branchNo, COUNT(staffNo) AS "count", SUM(salary) AS "sum"
FROM Staff
GROUP BY branchNo
HAVING COUNT(staffNo) > 1
ORDER BY branchNo ;





    3. Find average salaries of staff at various positions.

SELECT position, AVG(salary) AS salary FROM Staff GROUP BY
position;



    4. Display the number of properties available at each city along 
with the city name.
SELECT
city,
COUNT(propertyNo)
as
number
FROM
PropertyForRent GROUP BY city;



    5. Display the number of properties available at each city along with the city name if there exist more than 2 properties.
SELECT
city,
COUNT(propertyNo)
as
number
FROM
PropertyForRent GROUP BY city HAVING number > 2;












       Find the number of houses and flats available for rent.

SELECT
type,
COUNT(propertyNo)
PropertyForRent GROUP BY type;





    6. For each city with more than one property, find the number of 
properties within each city and average rent
SELECT city, COUNT(propertyNo) AS number, AVG(rent) AS rent
FROM PropertyForRent GROUP BY city HAVING number > 1;













Experiment 8
DML Commands V
Aim:
Implementation of set operators and nested queries.

Set Operations
    1. Construct a list of all cities where there is either a branch office or a property.
       SELECT city from Branch UNION SELECT city FROM PropertyForRent;






    2. Construct a list of all cities where there is both a branch office and a property.
       SELECT DISTINCT city from Branch WHERE city IN (SELECT city FROM
       PropertyForRent);







    3. Construct a list of all cities where there is a branch office but no properties.
SELECT DISTINCT city from Branch WHERE city NOT IN (SELECT city FROM
PropertyForRent);








Nested Queries 
[Note: All the following questions must be written as nested queries even though you can have equivalent multi-table ‘join’ queries]

    4. List the staffs who work in the branch at ‘163 Main St’.

SELECT staffNo FROM Staff WHERE branchNo IN (SELECT branchNo FROM
Branch WHERE street="163 Main St");










    5. List all staff whose salary is greater than the average salary, and show by how much their salary is greater than the average.
SELECT staffNo, (salary ­ (SELECT AVG(salary) FROM Staff)) as salary_diff
FROM Staff WHERE salary > (SELECT AVG(salary) FROM Staff);









    6. List the properties that are handled by staff who work in the branch at ‘163 Main St’.


SELECT propertyNo FROM PropertyForRent WHERE staffNo IN (SELECT
staffNo FROM Staff WHERE branchNo IN (SELECT branchNo FROM Branch
WHERE street="163 Main St"));











    7. Find all staff whose salary is larger than the salary of at least one member of staff at branch B003. (Hint: use of keyword SOME)


SELECT staffNo FROM Staff WHERE salary > SOME(SELECT salary FROM
Staff WHERE branchNo="B003");


    8. Find all staff whose salary is larger than the salary of every member of staff at branch B003. (Hint: use of keyword ALL)
SELECT staffNo FROM Staff WHERE salary > (SELECT salary FROM
Staff WHERE branchNo="B003");


   
