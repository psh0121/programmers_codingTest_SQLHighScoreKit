-- https://school.programmers.co.kr/learn/courses/30/lessons/157340

-- mysql
SELECT CAR_ID, 
       MAX(IF('2022-10-16' BETWEEN START_DATE AND END_DATE, '대여중', '대여 가능')) AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC;

-- oracle
SELECT CAR_ID, 
       MAX(CASE 
           WHEN '2022-10-16' BETWEEN TO_CHAR(START_DATE, 'YYYY-MM-DD') AND TO_CHAR(END_DATE, 'YYYY-MM-DD') THEN '대여중' 
           ELSE '대여 가능' 
           END
        ) AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC;