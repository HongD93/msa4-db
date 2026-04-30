-- -------------
-- Transaction
-- -------------
-- Transaction 시작
START TRANSACTION;

INSERT INTO employees (
  `name`
  ,birth
  ,gender
  ,hire_at
)
VALUES (
  '홍대운'
  ,'1993-03-11'
  ,'M'
  ,NOW()
);

SELECT *
FROM employees
WHERE
  `name` = '미어캣'
;

-- COMMIT;
-- ROLLBACK;
