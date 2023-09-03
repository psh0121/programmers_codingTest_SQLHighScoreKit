-- https://school.programmers.co.kr/learn/courses/30/lessons/164673

-- mysql
select title, b.board_id, reply_id, r.writer_id, r.contents, date_format(r.created_date, '%Y-%m-%d')
from used_goods_board b join used_goods_reply r
on b.board_id = r.board_id
where b.created_date like '2022-10-%'
order by r.created_date asc, title asc;

-- oracle
select title, b.board_id, reply_id, r.writer_id, r.contents, to_char(r.created_date, 'yyyy-mm-dd')
from used_goods_board b join used_goods_reply r
on b.board_id = r.board_id
where b.created_date between
    to_date('20221001', 'yyyymmdd') and to_date('20221031', 'yyyymmdd')
order by r.created_date asc, title asc;