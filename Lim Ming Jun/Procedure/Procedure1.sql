/*
References:
    https://stackoverflow.com/questions/10814111/how-to-check-if-cursor-returns-any-records-in-oracle/10815160
*/

-------------------------------------------- Procedure 1: Deduct Employee Salary ----------------------------------------------

CLEAR COLUMNS
CLEAR BREAKS
CLEAR COMPUTES
CLEAR BUFFER
TTITLE OFF
CLEAR SCREEN
SET linesize 90
SET pagesize 100
SET serveroutput on
ALTER SESSION SET NLS_TIMESTAMP_FORMAT='HH24:MI';
CREATE OR REPLACE PROCEDURE prc_deduct_salary(input_month IN NUMBER, input_year IN NUMBER) AS
    
    v_salary Employee.Salary%TYPE;
    v_newSalary Employee.Salary%TYPE;
    e_invalid_input_month EXCEPTION;
    e_invalid_input_year EXCEPTION;
    is_found_rec boolean := FALSE;
    chkSameID Employee.EmployeeID%TYPE := 'test';
    latestSal Employee.Salary%TYPE;
    
    CURSOR employee_cursor IS
        SELECT E.EmployeeID, E.EmployeeName, J.BasicSalary AS Salary, A.Remarks, A.Check_In_Time, A.AttendanceDate 
        FROM Employee E, Attendance A, Job J
        WHERE E.EmployeeID = A.EmployeeID AND E.JobID = J.JobID AND EXTRACT(MONTH FROM A.AttendanceDate) = input_month AND EXTRACT(YEAR FROM A.AttendanceDate) = input_year
        ORDER BY E.EmployeeID;
BEGIN
    IF input_month NOT BETWEEN 1 AND 12 THEN
      RAISE e_invalid_input_month;
    END IF;
    
    IF input_year < 2018 THEN
      RAISE e_invalid_input_year;
    END IF;
    
    FOR employee_rec IN employee_cursor LOOP
        is_found_rec := TRUE;
        
        IF employee_rec.EmployeeID LIKE chkSameID THEN
            latestSal := v_newSalary;
        ELSE
            latestSal := employee_rec.Salary;
        END IF;
        
        IF UPPER(employee_rec.Remarks) = 'PRESENT LATE' THEN
            
            DBMS_OUTPUT.PUT_LINE('=============================================');
            DBMS_OUTPUT.PUT_LINE('Employee Name       : ' || employee_rec.EmployeeName || ' (' || employee_rec.EmployeeID || ')');
            DBMS_OUTPUT.PUT_LINE('Check-In Time       : ' || CONCAT(employee_rec.Check_In_Time, CASE WHEN EXTRACT(hour FROM employee_rec.Check_In_Time) BETWEEN 0 AND 12 THEN ' AM' ELSE ' PM' END));
            DBMS_OUTPUT.PUT_LINE('Attendance Date     : ' || employee_rec.AttendanceDate);
            DBMS_OUTPUT.PUT_LINE('Initial Salary (RM) : ' || latestSal);
    
            IF employee_rec.Check_In_Time >= '10:30' THEN
                v_salary := 90;
                DBMS_OUTPUT.PUT_LINE(chr(10) || 'Deduct RM' || v_salary || ' due to late 30 minutes and above.' || chr(10));
            ELSE 
                v_salary := 50;
                DBMS_OUTPUT.PUT_LINE(chr(10) || 'Deduct RM' || v_salary || ' due to late 10 - 29 minutes.' || chr(10));
            END IF;
            
            UPDATE Employee
            SET Salary = latestSal - v_salary
            WHERE EmployeeID = employee_rec.EmployeeID;
            v_newSalary := latestSal - v_salary;
            
            DBMS_OUTPUT.PUT_LINE('Final Salary (RM)   : ' || v_newSalary);
            DBMS_OUTPUT.PUT_LINE('=============================================' || chr(10));
            chkSameID := employee_rec.EmployeeID;
    
        ELSIF UPPER(employee_rec.Remarks) = 'ABSENT' THEN
            DBMS_OUTPUT.PUT_LINE('=============================================');
            DBMS_OUTPUT.PUT_LINE('Employee Name       : ' || employee_rec.EmployeeName || ' (' || employee_rec.EmployeeID || ')');
            DBMS_OUTPUT.PUT_LINE('Attendance Date     : ' || employee_rec.AttendanceDate);
            DBMS_OUTPUT.PUT_LINE('Initial Salary (RM) : ' || latestSal);
            
            UPDATE Employee
            SET Salary = latestSal - 100
            WHERE EmployeeID = employee_rec.EmployeeID;
            v_newSalary := latestSal - 100;
            
            DBMS_OUTPUT.PUT_LINE(chr(10) || 'Deduct RM' || 100 || ' due to absent to work.' || chr(10));
            
            DBMS_OUTPUT.PUT_LINE('Final Salary (RM)   : ' || v_newSalary);
            DBMS_OUTPUT.PUT_LINE('=============================================' || chr(10));
            chkSameID := employee_rec.EmployeeID;
        END IF;
    END LOOP;
    
    IF NOT is_found_rec THEN
        DBMS_OUTPUT.PUT_LINE('No data was found according to your entered details!');
    END IF;
    
EXCEPTION
    WHEN e_invalid_input_month THEN
        DBMS_OUTPUT.PUT_LINE ('The month value must be between 1-12!');
    WHEN e_invalid_input_year THEN
        DBMS_OUTPUT.PUT_LINE ('The year value must start from 2018!');
END;
/

EXEC prc_deduct_salary(3, 2018)
-- Feb, March

-- Testing
-- ALTER SESSION SET NLS_TIMESTAMP_FORMAT='HH24:MI';
-- DECLARE
--   STARTTIME TIMESTAMP := '19:34';
--   ENDTIME TIMESTAMP := '9:00';
  
-- BEGIN
--   IF STARTTIME > '19:00' THEN
--     DBMS_OUTPUT.PUT_LINE(STARTTIME || ' is bigger');
--   ELSE
--     DBMS_OUTPUT.PUT_LINE(STARTTIME || ' is smaller');
--   END IF;
-- END;
-- /
