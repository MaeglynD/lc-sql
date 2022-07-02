-- START SCHEMA --
Create table If Not Exists Activities (sell_date date, product varchar(20));
Truncate table Activities;
insert into Activities (sell_date, product) values ('2020-05-30', 'Headphone');
insert into Activities (sell_date, product) values ('2020-06-01', 'Pencil');
insert into Activities (sell_date, product) values ('2020-06-02', 'Mask');
insert into Activities (sell_date, product) values ('2020-05-30', 'Basketball');
insert into Activities (sell_date, product) values ('2020-06-01', 'Bible');
insert into Activities (sell_date, product) values ('2020-06-02', 'Mask');
insert into Activities (sell_date, product) values ('2020-05-30', 'T-Shirt');
-- END SCHEMA -- 

-- Postgres
SELECT 
  sell_date,
  COUNT(DISTINCT product) AS num_sold,
  STRING_AGG(DISTINCT product, ',' ORDER BY product) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;

-- MySql
SELECT 
  sell_date, 
  COUNT(DISTINCT product) as num_sold,
  GROUP_CONCAT(DISTINCT product ORDER BY product) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;