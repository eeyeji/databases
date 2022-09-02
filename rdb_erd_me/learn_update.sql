-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;
UPDATE company
SET ADDRESS = '서울 방배동'
;

UPDATE company
SET ADDRESS = '경기도 광주시'
WHERE ID = '7'
;

UPDATE company
SET NAME = '몽키'
WHERE SALARY >= '500'
;