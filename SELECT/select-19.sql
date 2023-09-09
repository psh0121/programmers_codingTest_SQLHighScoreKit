-- https://school.programmers.co.kr/learn/courses/30/lessons/59405

-- mysql
SELECT NAME
FROM ANIMAL_INS
ORDER BY DATETIME
LIMIT 1;


-- oracle
SELECT NAME
FROM (SELECT * FROM ANIMAL_INS ORDER BY DATETIME)
WHERE ROWNUM = 1;;