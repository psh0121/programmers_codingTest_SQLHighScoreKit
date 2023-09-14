-- https://school.programmers.co.kr/learn/courses/30/lessons/59409

-- mysql
SELECT ANIMAL_ID, NAME, 
       CASE WHEN SEX_UPON_INTAKE LIKE 'Neutered%' THEN 'O'
       WHEN SEX_UPON_INTAKE LIKE 'Spayed%' THEN 'O'
       ELSE 'X' END AS '중성화'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;

-- oracle
SELECT ANIMAL_ID, NAME, 
       CASE WHEN SEX_UPON_INTAKE LIKE 'Neutered%' THEN 'O'
       WHEN SEX_UPON_INTAKE LIKE 'Spayed%' THEN 'O'
       ELSE 'X' END AS "중성화"
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;