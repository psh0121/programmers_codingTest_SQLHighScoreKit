-- https://school.programmers.co.kr/learn/courses/30/lessons/131120

-- mysql
select member_id, member_name, gender, date_format(date_of_birth, '%Y-%m-%d')
from member_profile
where gender = 'W' and month(date_of_birth) = 3 and not tlno is null
order by member_id asc;

-- oracle
select member_id, member_name, gender, to_char(date_of_birth, 'yyyy-mm-dd')
from member_profile
where gender = 'W' and extract(month from date_of_birth) = 3 and not tlno is null
order by member_id asc;