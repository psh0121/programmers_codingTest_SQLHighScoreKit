-- https://school.programmers.co.kr/learn/courses/30/lessons/59412

-- mysql
SELECT DATE_FORMAT(DATETIME, '%H') HOUR, COUNT(DATE_FORMAT(DATETIME, '%H')) COUNT
FROM ANIMAL_OUTS
WHERE DATE_FORMAT(DATETIME, '%H:%i') BETWEEN '09:00' AND '19:59'
GROUP BY HOUR
ORDER BY HOUR;

-- oracle
SELECT TO_NUMBER(TO_CHAR(DATETIME, 'HH24')) AS HOUR, COUNT(TO_CHAR(DATETIME, 'HH24')) AS COUNT
FROM ANIMAL_OUTS
WHERE TO_CHAR(DATETIME, 'HH24:MI') BETWEEN '09:00' AND '19:59'
GROUP BY TO_CHAR(DATETIME, 'HH24')
ORDER BY TO_CHAR(DATETIME, 'HH24');