use mydb;
-- 1
-- SELECT id, date, year(date) as year, month(date) as month, day(date)as day FROM orders;

-- 2
-- SELECT id, date, date  + interval 1 day as datetime_plus from orders;

-- 3
-- SELECT id, date, unix_timestamp(date) as timestamp from orders;

-- 4
-- select count(*) from orders where date between '1996-07-10 00:00:00' and '1996-10-08 00:00:00';

-- 5
select id, date, JSON_OBJECT('id', id, 'date', date) as json_object
from orders;
