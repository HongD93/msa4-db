-- INSERT 문
-- DML중 하나로 신규 데이터를 저장하기 위해 사용하는 쿼리
-- INSERT INTO 테이블명 [(컬럼1, 컬럼2...)]
-- VALUES (값1, 값2...);
INSERT INTO employees (
  `name`
  ,birth
  ,gender
  ,hire_at
  ,fire_at
  ,sup_id
  ,created_at
  ,updated_at
)
VALUES (
  '홍대운'
  ,'1993-03-11'
  ,'M'
  ,NOW()
  ,NULL
  ,NULL
  ,NOW()
  ,NOW()
);

SELECT 
  *
FROM employees
ORDER BY emp_id DESC
LIMIT 10;