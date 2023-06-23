create database salesdb;
use salesdb;

select * from sales ;

alter table sales
drop column Column1;

ALTER TABLE sales 
RENAME COLUMN Date TO dates;

SET sql_safe_updates = 0;

    UPDATE sales
SET dates = CASE
    WHEN dates LIKE '%/%' THEN date_format(str_to_date(dates, '%m/%d/%Y'), '%Y-%m-%d')
    WHEN dates LIKE '%-%' THEN date_format(str_to_date(dates, '%m-%d-%Y'), '%Y-%m-%d')
    ELSE NULL
END;

ALTER TABLE sales
MODIFY COLUMN dates DATE;

select dates from sales
where dates is not  null;

ALTER TABLE sales
MODIFY COLUMN unit_cost int;

ALTER TABLE sales
MODIFY COLUMN quantity int;

ALTER TABLE sales
MODIFY COLUMN unit_price int;

ALTER TABLE sales
MODIFY COLUMN cost int;

ALTER TABLE sales
MODIFY COLUMN revenue int;

select * from sales
where customer_age or state is not null ;

ALTER TABLE sales
MODIFY COLUMN age int;