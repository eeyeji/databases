-- https://school.programmers.co.kr/learn/courses/30/lessons/59405
-- 상위 n개 레코드
-- 보호소에 가장 먼저 들어온 동물의 이름 조회

SELECT NAME 
FROM ANIMAL_INS
WHERE DATETIME IN (
SELECT MIN(DATETIME)
FROM ANIMAL_INS);