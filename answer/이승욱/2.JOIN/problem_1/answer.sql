-- 1. 직급이 대리이면서 아시아 지역에 근무하는 직원 조회
SELECT
    E.EMP_ID,
    E.EMP_NAME,
    J.JOB_NAME,
    D.DEPT_TITLE,
    L.LOCAL_NAME,
    E.SALARY
FROM EMPLOYEE E
         JOIN JOB J ON E.JOB_CODE = J.JOB_CODE
         JOIN DEPARTMENT D ON E.DEPT_CODE = D.DEPT_ID
         JOIN LOCATION L ON D.LOCATION_ID = L.LOCAL_CODE
WHERE J.JOB_NAME = '대리'
  AND L.LOCAL_NAME LIKE 'ASIA%';