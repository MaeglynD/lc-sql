-- START SCHEMA --
Create table If Not Exists Employees (employee_id int, name varchar(30), salary int);
Truncate table Employees;
insert into Employees (employee_id, name, salary) values ('2', 'Meir', '3000');
insert into Employees (employee_id, name, salary) values ('3', 'Michael', '3800');
insert into Employees (employee_id, name, salary) values ('7', 'Addilyn', '7400');
insert into Employees (employee_id, name, salary) values ('8', 'Juan', '6100');
insert into Employees (employee_id, name, salary) values ('9', 'Kannon', '7700');
-- END SCHEMA --

SELECT 
  employee_id, 
  CASE 
    WHEN mod(employee_id, 2) = 0 OR LEFT(name, 1) = 'M'
    THEN 0
    ELSE salary
  END bonus
FROM Employees
ORDER BY employee_id;

-- Alt
SELECT 
  employee_id, 
  CASE 
    WHEN employee_id % 2 = 0 OR name LIKE 'M%' 
    THEN 0
    ELSE salary
  END bonus
FROM Employees
ORDER BY employee_id;