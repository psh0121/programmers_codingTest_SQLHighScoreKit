-- https://school.programmers.co.kr/learn/courses/30/lessons/164671?language=mysql

-- mysql
SELECT CONCAT('/home/grep/src/', BOARD_ID, '/', FILE_ID, FILE_NAME, FILE_EXT) FILE_PATH
FROM USED_GOODS_FILE
WHERE BOARD_ID = (
    SELECT BOARD_ID
    FROM USED_GOODS_BOARD
    WHERE VIEWS = (SELECT MAX(VIEWS) FROM USED_GOODS_BOARD)
)
ORDER BY FILE_ID DESC;


-- oracle
SELECT '/home/grep/src/'||BOARD_ID||'/'||FILE_ID||FILE_NAME||FILE_EXT FILE_PATH
FROM USED_GOODS_FILE
WHERE BOARD_ID = (
    SELECT BOARD_ID
    FROM USED_GOODS_BOARD
    WHERE VIEWS = (SELECT MAX(VIEWS) FROM USED_GOODS_BOARD)
)
ORDER BY FILE_ID DESC;