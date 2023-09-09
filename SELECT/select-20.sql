-- https://school.programmers.co.kr/learn/courses/30/lessons/131535

-- mysql
SELECT COUNT(*) USERS
FROM USER_INFO
WHERE YEAR(JOINED) = '2021' AND AGE BETWEEN 20 AND 29;


-- oracle
SELECT COUNT(*) USERS
FROM USER_INFO
WHERE TO_CHAR(JOINED, 'YYYY') = '2021' AND AGE BETWEEN 20 AND 29;