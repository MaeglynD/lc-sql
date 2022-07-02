-- START SCHEMA --
Create table If Not Exists Users (user_id int, name varchar(40));
Truncate table Users;
insert into Users (user_id, name) values ('1', 'aLice');
insert into Users (user_id, name) values ('2', 'bOB');
-- END SCHEMA --

-- Select
SELECT 
  user_id,
  CASE
    WHEN LENGTH(name) = 0 THEN name
    WHEN LENGTH(name) = 1 THEN UPPER(SUBSTRING(name, 1, 1))
    ELSE CONCAT(UPPER(SUBSTRING(name, 1, 1)), LOWER(SUBSTRING(name, 2, LENGTH(name)-1)))
  END as name
FROM Users
ORDER BY user_id;