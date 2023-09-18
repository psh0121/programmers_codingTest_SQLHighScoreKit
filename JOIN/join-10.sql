-- https://school.programmers.co.kr/learn/courses/30/lessons/59045

-- mysql
SELECT A.ANIMAL_ID, A.ANIMAL_TYPE, A.NAME
FROM ANIMAL_OUTS A LEFT JOIN ANIMAL_INS B
ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE SEX_UPON_INTAKE IN ('Intact Male', 'Intact Female') AND
      SEX_UPON_OUTCOME IN ('Neutered Male', 'Spayed Female')
ORDER BY A.ANIMAL_ID;

-- oracle
SELECT A.ANIMAL_ID, A.ANIMAL_TYPE, A.NAME
FROM ANIMAL_OUTS A LEFT JOIN ANIMAL_INS B
ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE SEX_UPON_INTAKE IN ('Intact Male', 'Intact Female') AND
      SEX_UPON_OUTCOME IN ('Neutered Male', 'Spayed Female')
ORDER BY A.ANIMAL_ID;