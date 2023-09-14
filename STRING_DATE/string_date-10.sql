-- https://school.programmers.co.kr/learn/courses/30/lessons/131113?language=mysql

-- mysql
SELECT ORDER_ID, PRODUCT_ID, DATE_FORMAT(OUT_DATE, '%Y-%m-%d') OUT_DATE, 
       CASE WHEN OUT_DATE IS NULL THEN '출고미정'
       WHEN OUT_DATE <= '2022-05-01' THEN '출고완료'
       ELSE '출고대기' END AS '출고여부'
FROM FOOD_ORDER
ORDER BY ORDER_ID;

-- oracle
SELECT ORDER_ID, PRODUCT_ID, TO_CHAR(OUT_DATE, 'YYYY-MM-DD') OUT_DATE, 
       CASE WHEN TO_DATE(OUT_DATE, 'YYYY-MM-DD') IS NULL THEN '출고미정'
       WHEN TO_CHAR(OUT_DATE, 'YYYY-MM-DD') <= '2022-05-01' THEN '출고완료'
       ELSE '출고대기' END AS "출고여부"
FROM FOOD_ORDER
ORDER BY ORDER_ID;