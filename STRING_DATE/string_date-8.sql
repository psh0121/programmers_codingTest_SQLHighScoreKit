-- https://school.programmers.co.kr/learn/courses/30/lessons/164672?language=mysql

-- mysql
SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, 
       CASE STATUS
       WHEN 'SALE' THEN '판매중'
       WHEN 'RESERVED' THEN '예약중'
       ELSE '거래완료' END STATUS
FROM USED_GOODS_BOARD
WHERE CREATED_DATE = '2022-10-05'
ORDER BY BOARD_ID DESC;

-- oracle
SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, 
       CASE STATUS
       WHEN 'SALE' THEN '판매중'
       WHEN 'RESERVED' THEN '예약중'
       ELSE '거래완료' END STATUS
FROM USED_GOODS_BOARD
WHERE TO_CHAR(CREATED_DATE, 'YYYY-MM-DD') = '2022-10-05'
ORDER BY BOARD_ID DESC;