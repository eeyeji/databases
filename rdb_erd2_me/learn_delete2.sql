-- DELETE
-- DELETE FROcompanyM table_name WHERE condition;
-- 삭제할때 순서 fk먼저
DELETE FROM company_dept 
WHERE company_id='2'
;
DELETE FROM company 
WHERE id='2'
;
