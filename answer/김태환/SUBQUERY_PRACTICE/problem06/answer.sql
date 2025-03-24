SELECT EMP_ID, EMP_NAME, DEPT_CODE, JOB_CODE, '관리자' AS 구분
FROM EMPLOYEE
WHERE EMP_ID IN (SELECT DISTINCT MANAGER_ID FROM EMPLOYEE WHERE MANAGER_ID IS NOT NULL)
UNION
SELECT EMP_ID, EMP_NAME, DEPT_CODE, JOB_CODE, '직원' AS 구분
FROM EMPLOYEE
WHERE EMP_ID NOT IN (SELECT DISTINCT MANAGER_ID FROM EMPLOYEE WHERE MANAGER_ID IS NOT NULL);
