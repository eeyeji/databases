-- https://school.programmers.co.kr/learn/courses/30/lessons/59036
-- 아픈동물찾기
-- 아픈 동물의 아이디와 이름 조회
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION IN ('SICK')
ORDER BY ANIMAL_ID;