-- CREATE SCHEMA --
Create table If Not Exists Weather (id int, recordDate date, temperature int);
Truncate table Weather;
insert into Weather (id, recordDate, temperature) values ('1', '2015-01-01', '10');
insert into Weather (id, recordDate, temperature) values ('2', '2015-01-02', '25');
insert into Weather (id, recordDate, temperature) values ('3', '2015-01-03', '20');
insert into Weather (id, recordDate, temperature) values ('4', '2015-01-04', '30');
-- END SCHEMA --

-- Postgres
SELECT t1.id
FROM Weather t1 LEFT JOIN Weather t2
ON t2.recordDate = t1.recordDate - INTERVAL '1 DAY'
WHERE t2.temperature < t1.temperature;

-- MySql
SELECT t1.id
FROM Weather t1 LEFT JOIN Weather t2
ON t2.recordDate = DATE_SUB(t1.recordDate, INTERVAL 1 DAY)
WHERE t2.temperature < t1.temperature;