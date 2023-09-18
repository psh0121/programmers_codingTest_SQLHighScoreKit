-- https://school.programmers.co.kr/learn/courses/30/lessons/131117

-- mysql
SELECT A.PRODUCT_ID, PRODUCT_NAME, (TOTAL_AMOUNT * PRICE) TOTAL_SALES 
FROM (
    SELECT PRODUCT_ID, SUM(AMOUNT) TOTAL_AMOUNT
    FROM FOOD_ORDER
    WHERE DATE_FORMAT(PRODUCE_DATE, '%Y-%m') = '2022-05'
    GROUP BY PRODUCT_ID
) A LEFT JOIN (
    SELECT PRODUCT_ID, PRODUCT_NAME, PRICE
    FROM FOOD_PRODUCT
) B
ON A.PRODUCT_ID = B.PRODUCT_ID
WHERE B.PRODUCT_ID IS NOT NULL
ORDER BY TOTAL_SALES DESC, A.PRODUCT_ID;

-- oracle
SELECT A.PRODUCT_ID, PRODUCT_NAME, (TOTAL_AMOUNT * PRICE) TOTAL_SALES 
FROM (
    SELECT PRODUCT_ID, SUM(AMOUNT) TOTAL_AMOUNT
    FROM FOOD_ORDER
    WHERE TO_CHAR(PRODUCE_DATE, 'YYYY-MM') = '2022-05'
    GROUP BY PRODUCT_ID
) A LEFT JOIN (
    SELECT PRODUCT_ID, PRODUCT_NAME, PRICE
    FROM FOOD_PRODUCT
) B
ON A.PRODUCT_ID = B.PRODUCT_ID
WHERE B.PRODUCT_ID IS NOT NULL
ORDER BY TOTAL_SALES DESC, A.PRODUCT_ID;

