DROP TABLE IF EXISTS Person;

-- START SCHEMA --
Create table If Not Exists Person (id int, email varchar(255));
Truncate table Person;
insert into Person (id, email) values ('1', 'a@b.com');
insert into Person (id, email) values ('2', 'c@d.com');
insert into Person (id, email) values ('3', 'a@b.com');
-- END SCHEMA --

SELECT
  email AS Email
FROM
  Person
GROUP BY
  email
HAVING
  COUNT(email) > 1;