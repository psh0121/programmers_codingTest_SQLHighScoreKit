-- https://school.programmers.co.kr/learn/courses/30/lessons/131112

-- mysql
select factory_id, factory_name, address
from food_factory
where address like '강원도%'
order by factory_id asc;

-- oracle
select factory_id, factory_name, address
from food_factory
where address like '강원도%'
order by factory_id asc;