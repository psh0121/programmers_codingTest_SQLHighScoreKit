-- https://school.programmers.co.kr/learn/courses/30/lessons/144853

-- mysql
select book_id, date_format(published_date, '%Y-%m-%d')
from book
where published_date like '2021-%' and category = '인문'
order by published_date asc;

-- oracle
select book_id, to_char(published_date, 'yyyy-mm-dd')
from book
where to_char(published_date, 'yyyy') like '2021' and category = '인문'
order by published_date asc;