1. CREATE VIEW Manager3Staff AS SELECT * FROM Staff WHERE branchNo = 'B003';

2. CREATE VIEW Staff3 AS SELECT staffNo, fName, IName, position, sex FROM Staff WHERE branchNo = 'B003';

3. CREATE VIEW Staffpropetiescount (branchNo, staffNo, cnt)
AS SELECT s.branchNo, s.staffNo, COUNT(*)
FROM Staff s, PropertyForRent p WHERE s.staffNo = p.staffNo GROUP BY s.branchNo, s.staffNo;




2.1 Create a new MySQL user with a username and password using ‘CREATE USER’ command.
