-- https://school.programmers.co.kr/learn/courses/30/lessons/157339

-- mysql
SELECT CAR_ID, C.CAR_TYPE, ROUND((DAILY_FEE * 30 * (1 - DISCOUNT_RATE/100))) FEE
FROM CAR_RENTAL_COMPANY_CAR C JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN P
ON C.CAR_TYPE = P.CAR_TYPE
WHERE C.CAR_TYPE IN ('SUV', '세단') AND
      DURATION_TYPE = '30일 이상' AND
      (DAILY_FEE * 30 * (1 - DISCOUNT_RATE/100)) >= 500000 AND 
      (DAILY_FEE * 30 * (1 - DISCOUNT_RATE/100)) < 2000000 AND
      CAR_ID NOT IN (
          SELECT CAR_ID FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
          WHERE (START_DATE BETWEEN '2022-11-01' AND '2022-11-30') OR
                (END_DATE BETWEEN '2022-11-01' AND '2022-11-30') OR
                (START_DATE < '2022-11-01' AND END_DATE > '2022-11-30')
      )
ORDER BY FEE DESC, C.CAR_TYPE, CAR_ID DESC;

-- oracle
SELECT CAR_ID, C.CAR_TYPE, ROUND((DAILY_FEE * 30 * (1 - DISCOUNT_RATE/100))) FEE
FROM CAR_RENTAL_COMPANY_CAR C JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN P
ON C.CAR_TYPE = P.CAR_TYPE
WHERE C.CAR_TYPE IN ('SUV', '세단') AND
      DURATION_TYPE = '30일 이상' AND
      (DAILY_FEE * 30 * (1 - DISCOUNT_RATE/100)) >= 500000 AND 
      (DAILY_FEE * 30 * (1 - DISCOUNT_RATE/100)) < 2000000 AND
      CAR_ID NOT IN (
          SELECT CAR_ID FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
          WHERE (TO_CHAR(START_DATE, 'YYYY-MM-DD') BETWEEN '2022-11-01' AND '2022-11-30') OR
                (TO_CHAR(END_DATE, 'YYYY-MM-DD') BETWEEN '2022-11-01' AND '2022-11-30') OR
                (TO_CHAR(START_DATE, 'YYYY-MM-DD') < '2022-11-01' AND TO_CHAR(END_DATE, 'YYYY-MM-DD') > '2022-11-30')
      )
ORDER BY FEE DESC, C.CAR_TYPE, CAR_ID DESC;