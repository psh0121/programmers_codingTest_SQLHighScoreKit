-- https://school.programmers.co.kr/learn/courses/30/lessons/59414

-- mysql
SELECT ANIMAL_ID, NAME, DATE_FORMAT(DATETIME, '%Y-%m-%d') '날짜'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;

-- oracle
SELECT ANIMAL_ID, NAME, TO_CHAR(DATETIME, 'YYYY-MM-DD') AS "날짜"
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;