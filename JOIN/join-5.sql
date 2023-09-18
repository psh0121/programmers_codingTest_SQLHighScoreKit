-- https://school.programmers.co.kr/learn/courses/30/lessons/59044

-- mysql
SELECT A.NAME, A.DATETIME
FROM ANIMAL_INS A LEFT JOIN ANIMAL_OUTS B
ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE B.ANIMAL_ID IS NULL
ORDER BY A.DATETIME
LIMIT 3;

-- oracle
SELECT *
FROM (
    SELECT A.NAME, A.DATETIME
    FROM ANIMAL_INS A LEFT JOIN ANIMAL_OUTS B
    ON A.ANIMAL_ID = B.ANIMAL_ID
    WHERE B.ANIMAL_ID IS NULL
    ORDER BY A.DATETIME
)
WHERE ROWNUM <= 3;