-- https://school.programmers.co.kr/learn/courses/30/lessons/59037
-- 어린 동물 찾기
-- 젊은 동물의 아이디와 이름 조회, 아이디 순 조회
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION != 'Aged'
ORDER BY ANIMAL_ID;