-- https://school.programmers.co.kr/learn/courses/30/lessons/59047
-- String, Date
-- 이름에 el이 들어가는 동물 찾기

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'DOG' AND NAME LIKE '%el%' 
ORDER BY NAME;