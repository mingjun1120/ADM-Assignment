-------------------------------------------- Procedure 2: Add Overtime Employee Salary ----------------------------------------------

CLEAR COLUMNS
CLEAR BREAKS
CLEAR COMPUTES
CLEAR BUFFER
TTITLE OFF
CLEAR SCREEN
SET linesize 90
SET pagesize 100

ALTER SESSION SET NLS_TIMESTAMP_FORMAT='HH24:MI';
CREATE OR REPLACE PROCEDURE prc_add_overtime_salary(input_month IN NUMBER, input_year IN NUMBER) AS

    increment Employee.Salary%TYPE;
    v_newSalary Employee.Salary%TYPE;
    e_invalid_input_month EXCEPTION;
    e_invalid_input_year EXCEPTION;
    otHour NUMBER;
    otMinute NUMBER;
    is_found_rec boolean := FALSE;

    CURSOR employee_cursor IS
        SELECT E.EmployeeID, E.EmployeeName, E.Salary AS Salary, J.BasicSalary, A.Remarks, A.Check_Out_Time, A.AttendanceDate 
        FROM Employee E, Attendance A, Job J
        WHERE E.EmployeeID = A.EmployeeID AND E.JobID = J.JobID AND EXTRACT(MONTH FROM A.AttendanceDate) = input_month AND EXTRACT(YEAR FROM A.AttendanceDate) = input_year;
BEGIN
    IF input_month NOT BETWEEN 1 AND 12 THEN
      RAISE e_invalid_input_month;
    END IF;
    
    IF input_year < 2018 THEN
      RAISE e_invalid_input_year;
    END IF;

    FOR employee_rec IN employee_cursor LOOP
        is_found_rec := TRUE;
        IF UPPER(employee_rec.Remarks) = 'PRESENT AND WORK OVERTIME' THEN
            DBMS_OUTPUT.PUT_LINE('=============================================');
            DBMS_OUTPUT.PUT_LINE('Employee Name       : ' || employee_rec.EmployeeName || ' (' || employee_rec.EmployeeID || ')');
            DBMS_OUTPUT.PUT_LINE('Initial Salary (RM) : ' || employee_rec.Salary);
    
            IF employee_rec.Check_Out_Time > '19:00' THEN

                otHour := EXTRACT(HOUR FROM (employee_rec.Check_Out_Time - '19:00'));
                otMinute := EXTRACT(MINUTE FROM (employee_rec.Check_Out_Time - '19:00'));
                
                IF otHour >= 1 THEN
                    increment := (employee_rec.BasicSalary / 6 / 8) * 1.5 * otHour;
                    DBMS_OUTPUT.PUT_LINE(chr(10) || 'Add RM' || increment || ' due to overtime for ' || otHour || ' hour.' || chr(10));

                ELSIF otMinute >= 30 AND otHour = 0 THEN
                    increment := (employee_rec.BasicSalary / 6 / 8) * otHour;
                    DBMS_OUTPUT.PUT_LINE(chr(10) || 'Add RM' || increment || ' due to overtime for ' || otHour || ' minutes.' || chr(10));
                END IF;

                UPDATE Employee
                SET Salary = employee_rec.Salary + increment
                WHERE EmployeeID = employee_rec.EmployeeID;
                v_newSalary := employee_rec.Salary + increment;
                
                DBMS_OUTPUT.PUT_LINE('Final Salary (RM)   : ' || v_newSalary);
                DBMS_OUTPUT.PUT_LINE('=============================================' || chr(10));
            END IF;
        END IF;
    END LOOP;
    
    IF NOT is_found_rec THEN
        DBMS_OUTPUT.PUT_LINE('No data was found according your entered details!');
    END IF;
    
EXCEPTION
    WHEN e_invalid_input_month THEN
        DBMS_OUTPUT.PUT_LINE ('The month value must be between 1-12!');
    WHEN e_invalid_input_year THEN
        DBMS_OUTPUT.PUT_LINE ('The year value must start from 2018!');
END;
/
EXEC prc_add_overtime_salary(3, 2018)