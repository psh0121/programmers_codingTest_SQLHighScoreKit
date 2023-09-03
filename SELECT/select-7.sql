-- https://school.programmers.co.kr/learn/courses/30/lessons/132203

-- mysql
select dr_name, dr_id, mcdp_cd, date_format(hire_ymd, '%Y-%m-%d')
from doctor
where mcdp_cd in ('CS', 'GS')
order by hire_ymd desc, dr_name asc;

-- oracle
select dr_name, dr_id, mcdp_cd, to_char(hire_ymd, 'yyyy-mm-dd')
from doctor
where mcdp_cd in ('CS', 'GS')
order by hire_ymd desc, dr_name asc;