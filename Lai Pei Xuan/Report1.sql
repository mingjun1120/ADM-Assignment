-- Detail Report
SET SERVEROUTPUT ON

SET PAGESIZE 600
SET LINESIZE 1200

ALTER SESSION SET NLS_DATE_FORMAT='DD-MM-YYYY';

CREATE OR REPLACE PROCEDURE prc_supplier_purchase_report IS

CURSOR SUPPLIER_CURSOR IS
       SELECT DISTINCT SupplierName
       FROM Supplier S;

CURSOR PURCHASE_CURSOR(v_SupplierName VARCHAR2) IS
       SELECT SupplierID, SupplierName, PurchaseTransID, T1.ProductCode, ProductName, BuyPrice, QtyPurchase
       FROM (SELECT S.SupplierID, S.SupplierName, P.ProductCode, P.ProductName, P.BuyPrice
             FROM Product P, Supplier S, PurchaseTrans PT, PurchaseTransDetails PTD
             WHERE S.SupplierID = PT.SupplierID AND
                   PT.PurchaseTransID = PTD.PurchaseTransID AND
                   PTD.ProductCode = P.ProductCode
             GROUP BY S.SupplierID, S.SupplierName, P.ProductCode, ProductName, BuyPrice
             ORDER BY P.ProductCode) T1
       LEFT JOIN
            (SELECT PTD.PurchaseTransID, P.ProductCode, Quantity AS QtyPurchase
             FROM PurchaseTransDetails PTD, Product P
             WHERE PTD.ProductCode = P.ProductCode
             GROUP BY PTD.PurchaseTransID, P.ProductCode, Quantity
             ORDER BY PTD.PurchaseTransID) T2
       ON (T1.ProductCode = T2.ProductCode)
       WHERE SupplierName = v_SupplierName
       ORDER BY SupplierName, PurchaseTransID;

r_countrec NUMBER(5);
v_countrec NUMBER(5);
v_total NUMBER(7,2);
v_total_amount NUMBER (11,2);

BEGIN

DBMS_OUTPUT.PUT_LINE(chr(10));
DBMS_OUTPUT.PUT_LINE(RPAD('Date',18,' ') || ':' || (SYSDATE - NUMTOYMINTERVAL(3, 'year')));
DBMS_OUTPUT.PUT_LINE(RPAD('Time', 18, ' ') || ':' || TO_CHAR(SYSDATE,'HH24:MI:SS'));
DBMS_OUTPUT.PUT_LINE(RPAD('Day',18,' ')||':'|| TO_CHAR(SYSDATE - NUMTOYMINTERVAL(3, 'year'),'DAY'));
DBMS_OUTPUT.PUT_LINE(RPAD('Generated By', 18, ' ')||':' || USER);

r_countrec := 0;
DBMS_OUTPUT.PUT_LINE(chr(10));
DBMS_OUTPUT.PUT_LINE(RPAD('*', 60, ' ') || 'Supplier Purchase Details Report');
DBMS_OUTPUT.PUT_LINE(RPAD('*', 60, ' ') || 'since 01-OCT-2017 to 30-JUN-2018');

FOR SUPPLIER_REC IN SUPPLIER_CURSOR LOOP
    --print supplier name
    DBMS_OUTPUT.PUT_LINE(chr(10));
    DBMS_OUTPUT.PUT_LINE('Supplier Name: ' || SUPPLIER_REC.SupplierName);
    DBMS_OUTPUT.PUT_LINE(RPAD('-', 162, '-'));
    DBMS_OUTPUT.PUT_LINE(RPAD('Purchase Transaction ID', 25, ' ') || RPAD('Product Code', 15, ' ') || RPAD('Product Name', 65, ' ') || RPAD('Quantity Purchase', 20, ' ') || RPAD('Buy Price (RM) ', 20, ' ') || RPAD('Total Amount (RM)', 20, ' '));
    DBMS_OUTPUT.PUT_LINE(RPAD('-', 162, '-'));

    v_countrec := 0;
    v_total := 0;
    v_total_amount := 0;

    FOR PURCHASE_REC IN PURCHASE_CURSOR(SUPPLIER_REC.SupplierName) LOOP
    
        v_total := PURCHASE_REC.QtyPurchase * PURCHASE_REC.BuyPrice;

        DBMS_OUTPUT.PUT_LINE(RPAD(PURCHASE_REC.PurchaseTransID, 25, ' ') || RPAD(PURCHASE_REC.ProductCode, 15, ' ') || RPAD(PURCHASE_REC.ProductName, 60, ' ') || LPAD(PURCHASE_REC.QtyPurchase, 20, ' ') || LPAD(TO_CHAR(PURCHASE_REC.BuyPrice, '999999.99'), 20, ' ') || LPAD(TO_CHAR(v_total, '999999.99'), 20, ' '));
        v_countrec := v_countrec + 1;
        v_total_amount := v_total_amount + v_total;

    END LOOP;

        r_countrec := r_countrec + v_countrec;
        DBMS_OUTPUT.PUT_LINE(RPAD('-', 162, '-'));
        DBMS_OUTPUT.PUT_LINE(' . ' || LPAD('Total Purchased Amount from ' || SUPPLIER_REC.SupplierName || ' is RM ' || TO_CHAR(v_total_amount, '9999999.99'),  160, ' ') || '.');
        DBMS_OUTPUT.PUT_LINE(' . ' || LPAD(v_countrec || ' records found for ' || SUPPLIER_REC.SupplierName || ' purchase transaction',  160, ' ') || '.');

END LOOP;

DBMS_OUTPUT.PUT_LINE('Total rows: ' || r_countrec);

END;
/

EXEC prc_supplier_purchase_report