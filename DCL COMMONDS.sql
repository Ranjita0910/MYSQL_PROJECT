create database dcl;
use dcl;

-- DCL: (data control language)- it helps to control the database the commonds primarily manage permission and ensure database security
--    commonds----
-- 1)grant
-- 2)roll back 


-- grant: to give users access privileges to the database
/* grant privilages_type on 
database_naME.table_name to 
'user'@'host' idemtified by 
'password';*/


/* common privileges in dcl:
all privileges
select
insert
update
delete
execute*/

-- revoke : used to remove access privileges from users.
/* revoke privilege_type on database_name.table_name from
'user'@'localhost';*/

-- grant
-- the hr department should have full access
-- regular employee only have view acess
GRANT ALL privileges ON EMPLOYEE_DB. TO 
'TEAM_HR' @ 'LOCALHOST'IDENTIFIED BY 'HR_PASSWORD';

GRANT select ON
EMPLOYEE_DB TO 'EMPLOYEE_USERS'@'LOCALHOST' IDENTIFIED
BY 'EMPLOYEE_PASSWORD';

-- REVOKE
revoke select ON
EMPLOYEE_DB FROM 'EMPLOYEE_USERS'@'LOCALHOST';


