-- Postgres is not happy with inline enums
CREATE TYPE yn AS ENUM('Y', 'N');

-- START SCHEMA --
Create table If Not Exists Products (product_id int, low_fats yn, recyclable yn);
Truncate table Products;
insert into Products (product_id, low_fats, recyclable) values ('0', 'Y', 'N');
insert into Products (product_id, low_fats, recyclable) values ('1', 'Y', 'Y');
insert into Products (product_id, low_fats, recyclable) values ('2', 'N', 'Y');
insert into Products (product_id, low_fats, recyclable) values ('3', 'Y', 'Y');
insert into Products (product_id, low_fats, recyclable) values ('4', 'N', 'N');
-- END SCHEMA --

SELECT product_id
FROM Products 
WHERE low_fats = 'Y' AND recyclable = 'Y';