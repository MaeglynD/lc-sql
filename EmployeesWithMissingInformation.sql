-- START SCHEMA --
Create table If Not Exists Employees (employee_id int, name varchar(30));
Create table If Not Exists Salaries (employee_id int, salary int);
Truncate table Employees;
insert into Employees (employee_id, name) values ('2', 'Crew');
insert into Employees (employee_id, name) values ('4', 'Haven');
insert into Employees (employee_id, name) values ('5', 'Kristian');
Truncate table Salaries;
insert into Salaries (employee_id, salary) values ('5', '76071');
insert into Salaries (employee_id, salary) values ('1', '22517');
insert into Salaries (employee_id, salary) values ('4', '63539');
-- END SCHEMA --

SELECT 
  CASE
    WHEN e.employee_id IS NULL THEN s.employee_id
    ELSE e.employee_id
    END employee_id
FROM Employees e FULL JOIN Salaries s
ON e.employee_id = s.employee_id
WHERE e.name IS NULL OR s.salary IS NULL
ORDER BY employee_id;
