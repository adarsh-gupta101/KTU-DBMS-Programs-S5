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
