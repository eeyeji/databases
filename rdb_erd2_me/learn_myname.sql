SELECT company.NAME, company_dept.DEPT_ID
FROM company INNER JOIN company_dept ON company.ID =company_dept.COMPANY_ID
AND company.ID = '2'
;