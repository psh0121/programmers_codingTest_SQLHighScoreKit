-- https://school.programmers.co.kr/learn/courses/30/lessons/151136?language=mysql

-- mysql
select round(avg(daily_fee), 0) as 'average_fee'
from car_rental_company_car
where car_type = 'SUV';

-- oracle
select round(avg(daily_fee), 0) as average_fee
from car_rental_company_car
where car_type = 'SUV';