-- https://school.programmers.co.kr/learn/courses/30/lessons/133025

-- mysql
select a.flavor
from first_half a inner join icecream_info b
on a.flavor = b.flavor
where total_order > 3000 and ingredient_type = 'fruit_based'
order by total_order desc;

-- oracle
select a.flavor
from first_half a inner join icecream_info b
on a.flavor = b.flavor
where total_order > 3000 and ingredient_type = 'fruit_based'
order by total_order desc;