---------------------------------------- Function 1 ---------------------------------------------

-- Convert Month To Name

CREATE OR REPLACE FUNCTION FUNC_CONVERT_MONTH_TO_NAME (in_monthNumber IN NUMBER)
RETURN VARCHAR2 IS 

MonthName VARCHAR2(15); 
Temp DATE;

BEGIN 
   Temp := TO_DATE(in_monthNumber, 'MM');
   MonthName := TO_CHAR(Temp, 'MONTH');
   
   RETURN MonthName; 
END;
/
