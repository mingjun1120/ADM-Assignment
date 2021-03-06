DROP TABLE Transactions;
CREATE TABLE Transactions
(TransactionsID  VARCHAR2(6) NOT NULL,       
 EmployeeID      VARCHAR2(5) NOT NULL,
 CustomerID      VARCHAR2(5) NOT NULL,
 Date_Paid       DATE,
PRIMARY KEY(TransactionsID),
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

--January 52 records
INSERT INTO Transactions VALUES ('T10001', 'E006', 'C1001', TO_DATE('01-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10002', 'E006', 'C1001', TO_DATE('02-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10003', 'E006', 'C1002', TO_DATE('02-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10004', 'E006', 'C1003', TO_DATE('03-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10005', 'E006', 'C1004', TO_DATE('04-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10006', 'E006', 'C1005', TO_DATE('05-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10007', 'E006', 'C1006', TO_DATE('08-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10008', 'E006', 'C1007', TO_DATE('09-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10009', 'E006', 'C1008', TO_DATE('09-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10010', 'E006', 'C1009', TO_DATE('09-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10011', 'E006', 'C1010', TO_DATE('09-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10012', 'E006', 'C1011', TO_DATE('10-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10013', 'E006', 'C1012', TO_DATE('11-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10014', 'E006', 'C1013', TO_DATE('11-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10015', 'E006', 'C1014', TO_DATE('12-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10016', 'E006', 'C1012', TO_DATE('12-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10017', 'E006', 'C1015', TO_DATE('13-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10018', 'E006', 'C1016', TO_DATE('13-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10019', 'E006', 'C1012', TO_DATE('13-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10020', 'E006', 'C1017', TO_DATE('15-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10021', 'E006', 'C1018', TO_DATE('15-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10022', 'E006', 'C1019', TO_DATE('15-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10023', 'E006', 'C1020', TO_DATE('15-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10024', 'E006', 'C1021', TO_DATE('16-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10025', 'E006', 'C1022', TO_DATE('17-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10026', 'E006', 'C1017', TO_DATE('17-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10027', 'E006', 'C1023', TO_DATE('18-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10028', 'E006', 'C1024', TO_DATE('19-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10029', 'E006', 'C1025', TO_DATE('19-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10030', 'E006', 'C1026', TO_DATE('19-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10031', 'E006', 'C1027', TO_DATE('20-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10032', 'E006', 'C1028', TO_DATE('20-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10033', 'E006', 'C1029', TO_DATE('20-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10034', 'E006', 'C1023', TO_DATE('20-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10035', 'E006', 'C1030', TO_DATE('22-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10036', 'E006', 'C1031', TO_DATE('22-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10037', 'E006', 'C1032', TO_DATE('22-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10038', 'E006', 'C1033', TO_DATE('22-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10039', 'E006', 'C1034', TO_DATE('22-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10040', 'E006', 'C1035', TO_DATE('22-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10041', 'E006', 'C1036', TO_DATE('23-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10042', 'E006', 'C1037', TO_DATE('24-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10043', 'E006', 'C1038', TO_DATE('25-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10044', 'E006', 'C1039', TO_DATE('25-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10045', 'E006', 'C1040', TO_DATE('26-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10046', 'E006', 'C1041', TO_DATE('27-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10047', 'E006', 'C1033', TO_DATE('27-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10048', 'E006', 'C1042', TO_DATE('27-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10049', 'E006', 'C1043', TO_DATE('29-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10050', 'E006', 'C1044', TO_DATE('29-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10051', 'E006', 'C1045', TO_DATE('29-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10052', 'E006', 'C1046', TO_DATE('30-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10053', 'E006', 'C1047', TO_DATE('31-01-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10054', 'E006', 'C1048', TO_DATE('31-01-2018', 'DD-MM-YYYY'));

-- February 45 records
INSERT INTO Transactions VALUES ('T10055', 'E006', 'C1049', TO_DATE('01-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10056', 'E006', 'C1050', TO_DATE('01-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10057', 'E006', 'C1051', TO_DATE('02-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10058', 'E006', 'C1043', TO_DATE('02-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10059', 'E006', 'C1052', TO_DATE('02-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10060', 'E006', 'C1053', TO_DATE('03-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10061', 'E006', 'C1054', TO_DATE('03-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10062', 'E006', 'C1034', TO_DATE('03-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10063', 'E006', 'C1055', TO_DATE('05-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10064', 'E006', 'C1056', TO_DATE('05-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10065', 'E006', 'C1057', TO_DATE('07-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10066', 'E006', 'C1058', TO_DATE('08-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10067', 'E006', 'C1059', TO_DATE('09-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10068', 'E006', 'C1060', TO_DATE('10-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10069', 'E006', 'C1061', TO_DATE('10-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10070', 'E006', 'C1062', TO_DATE('12-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10071', 'E006', 'C1063', TO_DATE('12-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10072', 'E006', 'C1013', TO_DATE('13-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10073', 'E006', 'C1064', TO_DATE('14-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10074', 'E006', 'C1065', TO_DATE('15-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10075', 'E006', 'C1066', TO_DATE('16-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10076', 'E006', 'C1067', TO_DATE('17-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10077', 'E006', 'C1068', TO_DATE('17-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10078', 'E006', 'C1069', TO_DATE('20-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10079', 'E006', 'C1070', TO_DATE('20-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10080', 'E006', 'C1050', TO_DATE('20-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10081', 'E006', 'C1071', TO_DATE('20-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10082', 'E006', 'C1072', TO_DATE('21-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10083', 'E006', 'C1073', TO_DATE('21-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10084', 'E006', 'C1074', TO_DATE('22-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10085', 'E006', 'C1075', TO_DATE('22-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10086', 'E006', 'C1076', TO_DATE('22-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10087', 'E006', 'C1077', TO_DATE('22-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10088', 'E006', 'C1078', TO_DATE('23-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10089', 'E006', 'C1079', TO_DATE('23-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10090', 'E006', 'C1060', TO_DATE('23-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10091', 'E006', 'C1080', TO_DATE('23-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10092', 'E006', 'C1081', TO_DATE('24-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10093', 'E006', 'C1082', TO_DATE('24-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10094', 'E006', 'C1083', TO_DATE('24-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10095', 'E006', 'C1084', TO_DATE('26-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10096', 'E006', 'C1085', TO_DATE('26-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10097', 'E006', 'C1066', TO_DATE('26-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10098', 'E006', 'C1086', TO_DATE('27-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10099', 'E006', 'C1087', TO_DATE('28-02-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10100', 'E006', 'C1028', TO_DATE('28-02-2018', 'DD-MM-YYYY'));

-- March 28 records (total 125)
INSERT INTO Transactions VALUES ('T10101', 'E007', 'C1089', TO_DATE('01-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10102', 'E006', 'C1090', TO_DATE('02-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10103', 'E007', 'C1091', TO_DATE('03-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10104', 'E006', 'C1032', TO_DATE('03-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10105', 'E006', 'C1092', TO_DATE('03-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10106', 'E006', 'C1093', TO_DATE('05-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10107', 'E007', 'C1094', TO_DATE('06-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10108', 'E006', 'C1095', TO_DATE('07-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10109', 'E007', 'C1096', TO_DATE('08-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10110', 'E007', 'C1097', TO_DATE('09-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10111', 'E006', 'C1098', TO_DATE('10-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10112', 'E007', 'C1099', TO_DATE('10-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10113', 'E006', 'C1100', TO_DATE('12-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10114', 'E007', 'C1101', TO_DATE('15-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10115', 'E007', 'C1002', TO_DATE('15-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10116', 'E007', 'C1042', TO_DATE('15-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10117', 'E007', 'C1012', TO_DATE('16-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10118', 'E007', 'C1062', TO_DATE('17-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10119', 'E007', 'C1023', TO_DATE('19-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10120', 'E007', 'C1027', TO_DATE('21-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10121', 'E007', 'C1098', TO_DATE('22-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10122', 'E007', 'C1076', TO_DATE('24-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10123', 'E007', 'C1053', TO_DATE('24-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10124', 'E007', 'C1013', TO_DATE('26-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10125', 'E007', 'C1023', TO_DATE('27-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10126', 'E007', 'C1053', TO_DATE('28-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10127', 'E007', 'C1032', TO_DATE('29-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10128', 'E007', 'C1057', TO_DATE('30-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10129', 'E007', 'C1017', TO_DATE('30-03-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10130', 'E007', 'C1077', TO_DATE('30-03-2018', 'DD-MM-YYYY'));

--April 25 record s
INSERT INTO Transactions VALUES ('T10131', 'E007', 'C1099', TO_DATE('02-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10132', 'E006', 'C1010', TO_DATE('02-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10133', 'E007', 'C1021', TO_DATE('03-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10134', 'E006', 'C1032', TO_DATE('03-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10135', 'E006', 'C1022', TO_DATE('03-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10136', 'E006', 'C1053', TO_DATE('05-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10137', 'E007', 'C1064', TO_DATE('06-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10138', 'E006', 'C1065', TO_DATE('07-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10139', 'E007', 'C1086', TO_DATE('07-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10140', 'E007', 'C1047', TO_DATE('09-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10141', 'E006', 'C1088', TO_DATE('10-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10142', 'E007', 'C1009', TO_DATE('11-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10143', 'E006', 'C1032', TO_DATE('12-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10144', 'E007', 'C1100', TO_DATE('12-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10145', 'E007', 'C1033', TO_DATE('12-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10146', 'E007', 'C1043', TO_DATE('16-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10147', 'E007', 'C1011', TO_DATE('16-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10148', 'E007', 'C1065', TO_DATE('17-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10149', 'E007', 'C1024', TO_DATE('19-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10150', 'E007', 'C1022', TO_DATE('21-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10151', 'E007', 'C1095', TO_DATE('23-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10152', 'E006', 'C1073', TO_DATE('24-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10153', 'E007', 'C1051', TO_DATE('25-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10154', 'E007', 'C1015', TO_DATE('26-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10155', 'E007', 'C1022', TO_DATE('27-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10156', 'E007', 'C1057', TO_DATE('28-04-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10157', 'E007', 'C1031', TO_DATE('30-04-2018', 'DD-MM-YYYY'));

-- May 25 records
INSERT INTO Transactions VALUES ('T10158', 'E008', 'C1029', TO_DATE('01-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10159', 'E006', 'C1030', TO_DATE('02-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10160', 'E008', 'C1001', TO_DATE('03-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10161', 'E006', 'C1002', TO_DATE('03-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10162', 'E006', 'C1042', TO_DATE('03-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10163', 'E006', 'C1023', TO_DATE('05-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10164', 'E008', 'C1044', TO_DATE('05-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10165', 'E006', 'C1055', TO_DATE('07-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10166', 'E007', 'C1066', TO_DATE('08-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10167', 'E008', 'C1017', TO_DATE('09-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10168', 'E006', 'C1048', TO_DATE('10-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10169', 'E008', 'C1019', TO_DATE('11-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10170', 'E006', 'C1101', TO_DATE('12-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10171', 'E006', 'C1101', TO_DATE('15-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10172', 'E008', 'C1012', TO_DATE('15-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10173', 'E008', 'C1012', TO_DATE('15-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10174', 'E007', 'C1022', TO_DATE('16-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10175', 'E008', 'C1042', TO_DATE('17-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10176', 'E008', 'C1053', TO_DATE('19-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10177', 'E007', 'C1037', TO_DATE('21-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10178', 'E007', 'C1068', TO_DATE('22-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10179', 'E008', 'C1046', TO_DATE('24-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10180', 'E007', 'C1033', TO_DATE('25-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10181', 'E007', 'C1063', TO_DATE('26-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10182', 'E008', 'C1083', TO_DATE('28-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10183', 'E008', 'C1013', TO_DATE('28-05-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10184', 'E008', 'C1022', TO_DATE('29-05-2018', 'DD-MM-YYYY'));

-- June 25 records
INSERT INTO Transactions VALUES ('T10185', 'E008', 'C1019', TO_DATE('01-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10186', 'E008', 'C1010', TO_DATE('02-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10187', 'E008', 'C1031', TO_DATE('02-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10188', 'E006', 'C1042', TO_DATE('02-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10189', 'E008', 'C1022', TO_DATE('04-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10190', 'E006', 'C1033', TO_DATE('05-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10191', 'E008', 'C1044', TO_DATE('06-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10192', 'E008', 'C1055', TO_DATE('07-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10193', 'E007', 'C1076', TO_DATE('08-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10194', 'E008', 'C1087', TO_DATE('09-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10195', 'E006', 'C1058', TO_DATE('11-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10196', 'E008', 'C1049', TO_DATE('11-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10197', 'E008', 'C1090', TO_DATE('12-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10198', 'E008', 'C1100', TO_DATE('15-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10199', 'E007', 'C1032', TO_DATE('15-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10200', 'E007', 'C1062', TO_DATE('15-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10201', 'E007', 'C1022', TO_DATE('16-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10202', 'E007', 'C1032', TO_DATE('18-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10203', 'E008', 'C1053', TO_DATE('19-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10204', 'E008', 'C1037', TO_DATE('21-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10205', 'E008', 'C1068', TO_DATE('22-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10206', 'E007', 'C1056', TO_DATE('23-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10207', 'E007', 'C1043', TO_DATE('25-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10208', 'E008', 'C1043', TO_DATE('26-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10209', 'E007', 'C1083', TO_DATE('27-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10210', 'E007', 'C1053', TO_DATE('28-06-2018', 'DD-MM-YYYY'));
INSERT INTO Transactions VALUES ('T10211', 'E008', 'C1032', TO_DATE('29-06-2018', 'DD-MM-YYYY'));

-- 211 records
SELECT COUNT(*) FROM Transactions;
