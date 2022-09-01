-- https://school.programmers.co.kr/learn/courses/30/lessons/59408
-- 중복제거하기
-- SUM, MAX, MIN

SELECT count(DISTINCT NAME) 
FROM ANIMAL_INS
WHERE NAME IS NOT NULL;