-- https://school.programmers.co.kr/learn/courses/30/lessons/59410
-- ISNULL
-- NULL처리하기

SELECT ANIMAL_TYPE,
CASE NAME WHEN NAME THEN NAME ELSE 'No name' END AS NAME, 
SEX_UPON_INTAKE
FROM ANIMAL_INS;