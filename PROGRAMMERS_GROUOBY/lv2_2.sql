-- https://school.programmers.co.kr/learn/courses/30/lessons/59046
-- String, Date
-- 루시와 엘라찾기
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
ORDER BY ANIMAL_ID;