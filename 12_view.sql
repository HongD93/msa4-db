-- 부서별 현재 연봉 평균 구해주세요.
-- 부서명(한글), 평균연봉 출력

-- VIEW 생성
CREATE VIEW view_avg_salary_by_dept
AS 
  SELECT 
    dep.dept_name
    ,AVG(sal.salary) salavg
  FROM departments dep
    JOIN department_emps depe
      ON depe.dept_code = dep.dept_code
        AND dep.end_at IS NULL
        AND depe.end_at IS NULL 
    JOIN salaries sal
      ON depe.emp_id = sal.emp_id
        AND sal.end_at IS NULL
  GROUP BY dep.dept_name
  ORDER BY dep.dept_name
; 
    
-- 뷰 조회하기
SELECT 
  *
FROM view_avg_salary_by_dept
WHERE
  salavg >= 44000000
;

-- VIEW 삭제
DROP VIEW view_avg_salary_by_dept;