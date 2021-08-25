------------------------------------------ STRATEGY: Overtime Situation  ----------------------------------------
CLEAR COLUMNS
CLEAR BREAKS
CLEAR COMPUTES
CLEAR BUFFER
TTITLE OFF
CLEAR SCREEN

SET linesize 80
SET pagesize 100

TTITLE CENTER '==========================================================' SKIP 1 -
CENTER 'EMPLOYEE OVERTIME SITUATION' SKIP 1-
CENTER '==========================================================' SKIP 2

BREAK ON MONTH ON report
COMPUTE SUM LABEL 'TOTAL' OF TOTAL_DAYS ON MONTH

COLUMN MONTH FORMAT A10 HEADING 'MONTH'
COLUMN JOB_TYPE FORMAT A12 HEADING 'JOB TYPE'
COLUMN EMPLOYEE_ID FORMAT A11 HEADING 'EMPLOYEE ID'
COLUMN EMPLOYEE_NAME HEADING 'EMPLOYEE NAME'
COLUMN TOTAL_DAYS HEADING 'TOTAL OVERTIME DAYS'

SELECT TO_CHAR(TO_DATE(EXTRACT(MONTH FROM A.AttendanceDate), 'MM'), 'MONTH') AS MONTH, 
       J.JobPosition AS JOB_TYPE,
       E.EmployeeID AS EMPLOYEE_ID, 
       E.EmployeeName AS EMPLOYEE_NAME,
       COUNT(A.AttendanceDate) AS TOTAL_DAYS
FROM Attendance A, Employee E, Job J
WHERE A.EmployeeID = E.EmployeeID AND J.JobID = E.JobID AND UPPER(A.Remarks) LIKE 'PRESENT AND WORK OVERTIME'
GROUP BY TO_CHAR(TO_DATE(EXTRACT(MONTH FROM A.AttendanceDate), 'MM'), 'MONTH'), J.JobPosition, E.EmployeeID, E.EmployeeName
ORDER BY TO_DATE(MONTH, 'MM'), J.JobPosition ASC;