-- https://school.programmers.co.kr/learn/courses/30/lessons/59404
-- 여러 기준으로 정렬하기
-- 동물의 아이디와 이름, 보호시작일을 이름순으로 조회 단 이름 같으면 보호를 나중에 시작한 동물 먼저 
SELECT ANIMAL_ID, NAME, DATETIME
FROM ANIMAL_INS
ORDER BY NAME, DATETIME DESC;