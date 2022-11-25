1. CREATE VIEW Manager3Staff AS SELECT * FROM Staff WHERE branchNo = 'B003';

2. CREATE VIEW Staff3 AS SELECT staffNo, fName, IName, position, sex FROM Staff WHERE branchNo = 'B003';

3. CREATE VIEW Staffpropetiescount (branchNo, staffNo, cnt)
AS SELECT s.branchNo, s.staffNo, COUNT(*)
FROM Staff s, PropertyForRent p WHERE s.staffNo = p.staffNo GROUP BY s.branchNo, s.staffNo;




2.1 Create a new MySQL user with a username and password using ‘CREATE USER’ command.


    1. Create a new MySQL user with a username and password using ‘CREATE USER’ command.
2.1 Create a new MySQL user with a username and password using ‘CREATE USER’ command.

(
OUTPUT -> WAS USING ONLINE COMPILER SO COULDNT RUN THIS COMMAND)

    2. Grant the new user all privileges on ‘Branch’ table of ‘DreamHome’ schema.
   GRANT ALL ON DreamHome.Branch59 TO 'adarsh'@'localhost';


    3. Grant the new user read-only privileges on ‘PropertyForRent’ table of ‘DreamHome’ schema.
       GRANT SELECT ON DreamHome.PropertyForRent59 TO 'adarsh'@'localhost';
    4. Validate the privilege assignments with proper queries as the new user. (Write all queries and outputs used for validation)
    5. Revoke all privileges given to the new user and validate the same.
REVOKE ALL ON DreamHome.Branch59 FROM 'adarsh'@'localhost';
REVOKE SELECT ON DreamHome.PropertyForRent59 FROM 'adarsh'@'localhost';


    1. Create a table named ‘TEMP’ with attributes A1(int), A2(varchar), and A3(int).
CREATE TABLE TEMP (A1 int, A2 VARCHAR(10), A3 int);


    2. Insert 10 rows into TEMP. While inserting, keep three savepoints (A, B and C) after 2nd, 5th, and 8th row insertion respectively.
              INSERT INTO TEMP VALUES(1, "a", 11);
       INSERT INTO TEMP VALUES(2, "b", 12);
       SAVEPOINT A;
       INSERT INTO TEMP VALUES(1, "a", 11);
       
       INSERT INTO TEMP VALUES(2, "b", 12);
       
       INSERT INTO TEMP VALUES(3, "c", 13);
       INSERT INTO TEMP VALUES(4, "d", 14);
       
       INSERT INTO TEMP VALUES(5, "e", 15); 
       
       SAVEPOINT B;
       INSERT INTO TEMP VALUES(6, "d", 14);
       
       INSERT INTO TEMP VALUES(7, "e", 15); 
       INSERT INTO TEMP VALUES(8, "f", 16);
       
       
       
       SAVEPOINT C;
       INSERT INTO TEMP VALUES(9, "f", 16);
       
       INSERT INTO TEMP VALUES(10, "f", 17);
       
       


    3. Rollback to C, B and then A printing the table contents all the time.
ROLLBACK TO C
ROLLBACK TO B
ROLLBACK TO A

    4. Commit the current state of TEMP. (Validate the commit operation)
       COMMIT 
ROLLBACK TO C
ROLLBACK TO B
ROLLBACK TO A







