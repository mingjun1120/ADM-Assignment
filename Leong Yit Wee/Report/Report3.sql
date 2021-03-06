---------------------------------------- Report 3 ---------------------------------------------

-- On Demand Report of Product Turnover Rate

--exec RPT_PRODUCT_TURNOVER(2018,'Grooming')

CREATE OR REPLACE PROCEDURE RPT_PRODUCT_TURNOVER(IN_year IN NUMBER,
IN_productType IN VARCHAR2) IS
E_NO_RECORD_FOUND EXCEPTION;
E_TYPE_NOT_FOUND EXCEPTION;
PRAGMA EXCEPTION_INIT(E_NO_RECORD_FOUND, -20209);
PRAGMA EXCEPTION_INIT(E_TYPE_NOT_FOUND, -20211);
v_initialQty NUMBER(7) := 0;

v_finalQty NUMBER(7) := 0;
v_costOfGoods NUMBER(12,2) := 0;
v_averageStock NUMBER(9,2) := 0;
v_turnoverRatio NUMBER(7,2) := 0;
v_totalSold NUMBER(7) := 0;
v_totalCOG NUMBER(12,2) := 0;
v_totalTOR NUMBER(7,2) := 0;
v_indicator CHAR(9);
v_productCount NUMBER(5) := 0;
v_averageTOR NUMBER(7,2) := 0;
CURSOR PRODUCT_CURSOR IS
SELECT P.productCode productCode, P.productName ProductName, P.msrp
msrp, P.quantityinstock quantityinstock, P.productType productType, SUM(D.Quantity) AS TotalSold
FROM product P, transactionsDetails D, Transactions T
WHERE P.productCode =  D.productCode AND  D.TRANSACTIONSID =
T.TRANSACTIONSID AND EXTRACT(YEAR FROM t.date_paid) = IN_year AND
productType = IN_productType
GROUP BY P.productCode, productName, msrp, quantityinstock,productType  
ORDER BY TotalSold DESC;
CURSOR TYPE_CURSOR IS
SELECT productType
FROM product
WHERE productType = IN_productType;
CURSOR DATE_CURSOR IS
SELECT date_paid
FROM Transactions
WHERE EXTRACT(YEAR FROM date_paid) = IN_year;
type_rec TYPE_CURSOR%ROWTYPE;
date_rec DATE_CURSOR%ROWTYPE;
BEGIN
	OPEN TYPE_CURSOR;
	FETCH TYPE_CURSOR INTO type_rec;
	IF TYPE_CURSOR%NOTFOUND THEN
		CLOSE TYPE_CURSOR;
		RAISE_APPLICATION_ERROR(-20211, 'Invalid product type.',
		true);
	ELSE
	OPEN DATE_CURSOR;
	FETCH DATE_CURSOR INTO date_rec;
	IF DATE_CURSOR%NOTFOUND THEN
		CLOSE DATE_CURSOR;
		RAISE_APPLICATION_ERROR(-20209, 'No record found.', true);

	ELSE
		DBMS_OUTPUT.PUT_LINE(chr(10));
		DBMS_OUTPUT.PUT_LINE(RPAD('"', 67, ' ') || RPAD('Products Turnover Rate In ' || IN_year, 30, ' '));
		DBMS_OUTPUT.PUT_LINE(LPAD('=', 184, '='));
		DBMS_OUTPUT.PUT_LINE(chr(10));

		DBMS_OUTPUT.PUT_LINE(RPAD('"', 134, ' ') || 'Report generated on : '
		|| TO_CHAR(CURRENT_DATE - NUMTOYMINTERVAL(3, 'year'), 'DD-MM-YYYY HH:MI:SS') || ' by ' || USER);
		DBMS_OUTPUT.PUT_LINE(chr(10));
		DBMS_OUTPUT.PUT_LINE(RPAD('Product Type ', 20, ' ') || ': ' ||
		RPAD(UPPER(IN_productType), 20, ' '));
		DBMS_OUTPUT.PUT_LINE(LPAD('-', 184, '-'));
		DBMS_OUTPUT.PUT_LINE(RPAD('Product Code', 13, ' ') || RPAD('Product Name                                                     ', 49, ' ') || RPAD('Unit Price', 15, ' ') || RPAD('Initial Qty', 15, ' ') || RPAD('Final Qty', 13, ' ') ||
		RPAD('Total Sold', 15, ' ') || RPAD('Cost of Goods(RM)', 17, ' ') ||
		RPAD('Average Stock', 20, ' ') || RPAD('Turnover Ratio (times/year)', 27, ' '));
		DBMS_OUTPUT.PUT_LINE(LPAD('-', 184, '-'));
		v_totalSold := 0;
		v_totalCOG := 0;
		v_totalTOR := 0;
		FOR product_rec IN PRODUCT_CURSOR LOOP
			v_indicator := ' ';
			v_finalQty := product_rec.quantityinstock;
			v_initialQty := v_finalQty + product_rec.TotalSold;
			v_costOfGoods := (product_rec.msrp*v_initialQty) -
			(product_rec.msrp*v_finalQty);
			v_averageStock := (v_initialQty + v_finalQty) / 2;
			v_turnoverRatio := v_costOfGoods / v_averageStock;
				IF v_turnoverRatio < 1 THEN
				v_indicator := ' <----*';
				END IF;
			DBMS_OUTPUT.PUT_LINE(RPAD(product_rec.productCode, 13, ' ') ||
			RPAD(product_rec.productName, 49, ' ') ||'RM ' || RPAD(TRIM
			(TO_CHAR(product_rec.msrp, '999G999D99')), 12, ' ') ||
			RPAD(v_initialQty, 15, ' ') || RPAD(v_finalQty, 13, ' ') ||
			RPAD(product_rec.TotalSold, 15, ' ') || 'RM ' ||
			RPAD(TRIM(TO_CHAR(v_costOfGoods, '999G999D99')), 14, ' ') ||
			RPAD(TRIM(TO_CHAR(v_averageStock, '999G999D9')), 20, ' ') ||
			RPAD(TRIM(TO_CHAR(v_turnoverRatio, '9990D9')), 5, ' ') || v_indicator);
			v_totalSold := v_totalSold + product_rec.TotalSold;
			v_totalCOG := v_totalCOG + v_costOfGoods;
			v_totalTOR := v_totalTOR + v_turnoverRatio;
			v_productCount := v_productCount + 1;
		END LOOP;
		DBMS_OUTPUT.PUT_LINE(LPAD('-', 184, '-'));
		DBMS_OUTPUT.PUT_LINE(chr(10));
		v_averageTOR := v_totalTOR/v_productCount;
		DBMS_OUTPUT.PUT_LINE('+ ' ||RPAD('Total number of ' ||
		IN_productType || ' products ', 40, ' ') || ': ' || RPAD(v_productCount,
		10, ' '));
		DBMS_OUTPUT.PUT_LINE('+ ' ||RPAD('Total number of ' ||
		IN_productType || ' products sold ', 40, ' ') || ': ' ||
		RPAD(v_totalsold, 10, ' '));
		DBMS_OUTPUT.PUT_LINE('+ ' ||RPAD('Total Cost of Goods Sold ',
		40, ' ') || ': RM ' || RPAD(TRIM(TO_CHAR(v_totalCOG, '999G999D99')), 11,
		' '));
		DBMS_OUTPUT.PUT_LINE('+ ' ||RPAD('Average Turnover Rate ', 40,
		' ') || ': ' || RPAD(TRIM(TO_CHAR(v_averageTOR, '990D9')), 5, ' '));
		END IF;
	END IF;
	EXCEPTION
		WHEN E_NO_RECORD_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('---------------------------------------------------');
		DBMS_OUTPUT.PUT_LINE('Failed to print report for ' || IN_productType ||
		' products for ' || IN_year || '.');
		DBMS_OUTPUT.PUT_LINE('---------------------------------------------------');
		DBMS_OUTPUT.PUT_LINE(SQLERRM);
		WHEN E_TYPE_NOT_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('--------------------------------');
		DBMS_OUTPUT.PUT_LINE('Failed to print report for ' || IN_year ||
		'.');
		DBMS_OUTPUT.PUT_LINE('--------------------------------');
		DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
