-- 5. 부서별 최고 급여를 받는 직원의 이름, 직급코드, 부서코드, 급여 조회하세요.
SELECT E.EMP_NAME, E.JOB_CODE, E.DEPT_CODE, E.SALARY
FROM EMPLOYEE E
         JOIN (
    SELECT DEPT_CODE, MAX(SALARY) AS MAX_SALARY
    FROM EMPLOYEE
    GROUP BY DEPT_CODE
) M ON E.DEPT_CODE = M.DEPT_CODE
    AND E.SALARY = M.MAX_SALARY;