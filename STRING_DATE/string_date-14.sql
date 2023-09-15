-- https://school.programmers.co.kr/learn/courses/30/lessons/59411?language=mysql

-- mysql
SELECT A.ANIMAL_ID, A.NAME
FROM ANIMAL_INS A INNER JOIN ANIMAL_OUTS B
ON A.ANIMAL_ID = B.ANIMAL_ID
ORDER BY DATEDIFF(B.DATETIME, A.DATETIME) DESC
LIMIT 2;



-- oracle
SELECT *
FROM (
    SELECT A.ANIMAL_ID, A.NAME
    FROM ANIMAL_INS A INNER JOIN ANIMAL_OUTS B
    ON A.ANIMAL_ID = B.ANIMAL_ID
    ORDER BY B.DATETIME - A.DATETIME DESC
)
WHERE ROWNUM < 3;