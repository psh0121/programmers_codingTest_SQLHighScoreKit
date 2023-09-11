-- https://school.programmers.co.kr/learn/courses/30/lessons/131530

-- mysql
SELECT TRUNCATE(PRICE, -4) PRICE_GROUP, COUNT(*) PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP;

-- oracle
SELECT TRUNC(PRICE, -4) PRICE_GROUP, COUNT(*) PRODUCTS
FROM PRODUCT
GROUP BY TRUNC(PRICE, -4)
ORDER BY TRUNC(PRICE, -4);