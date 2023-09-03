-- https://school.programmers.co.kr/learn/courses/30/lessons/131118

-- mysql
select info.rest_id, rest_name, food_type, favorites, address, round(avg(review_score), 2) as score
from rest_info info join rest_review review
on info.rest_id = review.rest_id
where address like '서울%'
group by info.rest_id, rest_name, food_type, favorites, address
order by score desc, favorites desc;

-- oracle
select info.rest_id, rest_name, food_type, favorites, address, round(avg(review_score), 2) as score
from rest_info info join rest_review review
on info.rest_id = review.rest_id
where address like '서울%'
group by info.rest_id, rest_name, food_type, favorites, address
order by score desc, favorites desc;