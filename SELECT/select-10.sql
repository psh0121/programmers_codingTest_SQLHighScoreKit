-- https://school.programmers.co.kr/learn/courses/30/lessons/132201?language=mysql

-- mysql
select pt_name, pt_no, gend_cd, age, ifnull(tlno, 'NONE')
from patient
where age <= 12 and gend_cd = 'W'
order by age desc, pt_name asc;

-- oracle
select pt_name, pt_no, gend_cd, age, nvl(tlno, 'NONE')
from patient
where age <= 12 and gend_cd = 'W'
order by age desc, pt_name asc;