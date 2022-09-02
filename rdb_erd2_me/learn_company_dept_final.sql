SELECT company.NAME, department.DEPT
FROM((company INNER JOIN company_dept ON company.ID =company_dept.COMPANY_ID)
			 INNER JOIN department ON department.ID = company_dept.DEPT_ID)
;
