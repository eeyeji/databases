-- INSERT INTO table_name (column1, column2, column3, ...)
-- VALUES (value1, value2, value3, ...);
-- 값 삽입하기
INSERT INTO COMPANY (ID, NAME, AGE, ADDRESS, SALARY)
VALUES ('1', '이예지', 28, '위례', 100)
;

-- 컬럼의 개수 변경
-- 프라이머리 키 같은 값 넣어서 변경하려고 하면 오류남
INSERT INTO COMPANY (ID, NAME, SALARY)
VALUES ('4', '이예지', 100)
;

-- SALARY 값 지울경우 오류
-- salary(n-n) 값 default 세팅 안해서 오류 -> 값 넣어라
INSERT INTO COMPANY (ID, NAME, SALARY)
VALUES ('5', '이예지', 200)
;

INSERT INTO COMPANY (ID, NAME, AGE, ADDRESS, SALARY)
VALUES ('7', '제인', 18, '서울', 500)
;
INSERT INTO COMPANY (ID, NAME, AGE, ADDRESS, SALARY)
VALUES ('8', '원숭이', 15, '부천', 300)
;