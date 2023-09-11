-- https://school.programmers.co.kr/learn/courses/30/lessons/132202?language=mysql

-- mysql
SELECT MCDP_CD '진료과코드', COUNT(*) '5월예약건수'
FROM APPOINTMENT
WHERE DATE_FORMAT(APNT_YMD, '%Y-%m') = '2022-05'
GROUP BY MCDP_CD
ORDER BY COUNT(*), MCDP_CD;

-- oracle
SELECT MCDP_CD "진료과코드", COUNT(*) "5월예약건수"
FROM APPOINTMENT
WHERE TO_CHAR(APNT_YMD, 'YYYY-MM') = '2022-05'
GROUP BY MCDP_CD
ORDER BY COUNT(*), MCDP_CD;