DROP TABLE Customer;
CREATE TABLE Customer
(CustomerID     VARCHAR2(5)   NOT NULL,
 CustomerName   VARCHAR2(50)  NOT NULL,
 Gender         VARCHAR2(1)   NOT NULL,
 ContactNo      VARCHAR2(15)  NOT NULL,
 DOB            DATE,
 Email          VARCHAR2(50)  NOT NULL,
 StreetName     VARCHAR2(100) NOT NULL,
 PostCode       NUMBER(7)     NOT NULL,
 City           VARCHAR2(30)  NOT NULL,
 State          VARCHAR2(30)  NOT NULL,
 PRIMARY KEY (CustomerID),
 CONSTRAINT chk_cust_id CHECK (SUBSTR(CustomerID, 0, 1) = 'C'),
 CONSTRAINT chk_ContactNo UNIQUE (ContactNo),
 CONSTRAINT chk_cust_gender CHECK (UPPER(Gender) IN ('M','F')),
 CONSTRAINT chk_email CHECK (REGEXP_LIKE(email,'^[a-zA-Z]\w+@(\S+)$'))
);

INSERT INTO Customer VALUES ('C1001', 'Milly Harrision', 'F', '013-8780611', 'milly@gmail.com', 'G-3A RESIDENSI UNGGUL KEPONG, Jalan Vista Mutiara 1', 52000, 'Kepong Baru', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1002', 'Kalindi Rogers', 'F', '019-5450750', 'kalindi@gmail.com', 'Lot 1464, Jalan Delima 1/1, Subang Hi-tech Industrial Park', 40000, 'Subang Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1003', 'Judah Patinnson', 'M', '016-3369481', 'judah@gmail.com', 'PT 120, Jalan Ampang Hilir, Taman U Thant', 55000, 'Ampang', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1004', 'Archy Krule', 'M', '014-6902511', 'archy@gmail.com', 'A-2020, Jalan PJU 3/27, Sunway Damansara', 47810, 'Petaling Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1005', 'Noby Stark', 'M', '013-8312174', 'noby@gmail.com', 'A-21-4 PV13 Condo, Jalan Danau Saujana 1', 53300, 'Setapak', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1006', 'Byrle Stone', 'M', '014-2941876', 'byrle@gmail.com', 'A-3A01, Jalan PJU 3/27, Sunway Damansara', 47810, 'Petaling Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1007', 'Tedra Stan', 'F', '018-2430762', 'tedra@gmail.com', 'E-3A Wangsa 9 Residency, Jalan Wangsa Perdana 1', 53300, 'Wangsa Maju', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1008', 'Rafaela Downey', 'F', '012-9511081', 'rafaela@gmail.com', 'D-21/11 Epic Residence, Jln BP 7/12, Bandar Bukit Puchong 2', 47120, 'Puchong', 'Selangor');
INSERT INTO Customer VALUES ('C1009', 'Tansy Carlos', 'F', '017-4049014', 'tansy@gmail.com', 'B-31 Wangsa 9 Residency, Jalan Wangsa Perdana 1', 53300, 'Wangsa Maju', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1010', 'Arman Pier', 'M', '018-9126750', 'arman@gmail.com', 'BlockA-033 Putra One Residence, Persiaran Bukit Rahman Putra 1', 47000, 'Sungai Buloh', 'Selangor');
INSERT INTO Customer VALUES ('C1011', 'Heywood Johanson', 'M', '011-2714249', 'heywood@gmail.com', 'D-33-01 One Jelatek Condo, Jalan Jelatek', 54200 , 'Jelatek', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1012', 'Jerrold Fury', 'M', '015-6794318', 'jerrold@gmail.com', 'E-3A, Green Residence, Jalan Sayang 1', 43200, 'Cheras', 'Selangor');
INSERT INTO Customer VALUES ('C1013', 'Theodore Carter', 'M', '018-6878938', 'theodore@gmail.com', 'Lot 1469 Menara Sri Jati, Jalan 30/56, Taman Setiawangsa', 54200, 'Setiawangsa', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1014', 'Thorpe Olsen', 'M', '011-9844343', 'thorpe@gmail.com', '18A-05 Ampang Damai Condominium, Jalan Wawasan 3', 68000, 'Ampang Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1015', 'Ivette Fred', 'F', '016-3947772', 'ivette@gmail.com', 'PT 3434, Seri Titiwangsa, Lorong Titiwangsa 1', 53200, 'Titiwangsa', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1016', 'Casar Barnes', 'M', '019-2588895', 'casar@gmail.com', 'A-33-14 MH Platinum Residence, Jalan Gombak', 53100, 'Gombak', 'Selangor');
INSERT INTO Customer VALUES ('C1017', 'Sigismundo Lord', 'M', '018-8424071', 'sigismundo@gmail.com', 'Lot 235, Jalan Nora 2', 53100, 'Taman Melawati', 'Selangor');
INSERT INTO Customer VALUES ('C1018', 'Kat Quil', 'F', '015-6866156', 'kat@gmail.com', 'Lot 111, Jalan Nora 2', 53100, 'Taman Melawati', 'Selangor');
INSERT INTO Customer VALUES ('C1019', 'Tersina Debicki', 'F', '016-4465107', 'tersina@gmail.com', 'A-20/11 Amara Residensi, Jalan Raintree Utama', 68100, 'Batu Caves', 'Selangor');
INSERT INTO Customer VALUES ('C1020', 'Brunhilda Holmes', 'F', '019-3485500', 'brunhilda@gmail.com', 'A-03/13A Amara Residensi, Jalan Raintree Utama', 68100, 'Batu Caves', 'Selangor');
INSERT INTO Customer VALUES ('C1021', 'Patrica Jones', 'F', '013-3237059', 'patrica@gmail.com', 'G-21 RESIDENSI UNGGUL KEPONG, Jalan Vista Mutiara 1,', 52000, 'Kepong Baru', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1022', 'Blythe Johnson', 'F', '015-6497485', 'blythe@gmail.com', 'Block E, No.482, Jalan SS 15/6, Ss 15', 47500, 'Subang Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1023', 'Matt Washington', 'M', '019-7515960', 'matt@gmail.com', 'PT 440, Jalan Ampang Hilir, Taman U Thant', 55000, 'Ampang', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1024', 'Selig Howard', 'M', '012-8954544', 'selig@gmail.com', 'A-1801, Jalan PJU 3/27, Sunway Damansara', 47810, 'Petaling Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1025', 'Annora Holland', 'F', '012-9038830', 'annora@gmail.com', 'A-18-4 PV13 Condo, Jalan Danau Saujana 1', 53300, 'Setapak', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1026', 'Kirstin Hiddleston', 'F', '012-7016166', 'kirstin@gmail.com', 'B-13/02 Jalan PJU 1a/3, Ara Damansara', 47301, 'Petaling Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1027', 'Lanie Portman', 'M', '011-2765349', 'lanie@gmail.com', 'G-18 Wangsa 9 Residency, Jalan Wangsa Perdana 1', 53300, 'Wangsa Maju', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1028', 'Elladine Kirby', 'F', '015-1933831', 'elladine@gmail.com', 'B-11/11 Epic Residence, Jln BP 7/12, Bandar Bukit Puchong 2', 47120, 'Puchong', 'Selangor');
INSERT INTO Customer VALUES ('C1029', 'Dore Hemsworth', 'F', '011-2295793', 'dore@gmail.com', 'A-13A Wangsa 9 Residency, Jalan Wangsa Perdana 1', 53300, 'Wangsa Maju', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1030', 'Konrad Stark', 'M', '014-6707411', 'konrad@gmail.com', 'BlockA-122 Putra One Residence, Persiaran Bukit Rahman Putra 1', 47000, 'Sungai Buloh', 'Selangor');
INSERT INTO Customer VALUES ('C1031', 'Elisa Dennings', 'F', '017-7776012', 'elisa@gmail.com', 'A-35-22 One Jelatek Condo, Jalan Jelatek', 54200, 'Jelatek', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1032', 'Eachelle Russo', 'F', '017-8138479', 'eachelle@gmail.com', 'F-26, Green Residence, Jalan Sayang 1', 43200, 'Cheras', 'Selangor');
INSERT INTO Customer VALUES ('C1033', 'Mandel Elba', 'M', '019-5032124', 'mandel@gmail.com', 'Lot 1759 Menara Sri Jati, Jalan 30/56, Taman Setiawangsa', 54200, 'Setiawangsa', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1034', 'Basilius Alexander', 'M', '019-7895658', 'basilius@gmail.com', '13B-15 Ampang Damai Condominium, Jalan Wawasan 3', 68000, 'Ampang Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1035', 'Aubry Waititi', 'F', '018-1749904', 'aubry@gmail.com', 'PT 5544, Seri Titiwangsa, Lorong Titiwangsa 1', 53200, 'Titiwangsa', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1036', 'Milicent Thompson', 'F', '017-7553024', 'milicent@gmail.com', 'A-03-11 MH Platinum Residence, Jalan Gombak', 53100, 'Gombak', 'Selangor');
INSERT INTO Customer VALUES ('C1037', 'Frederico Ruffalo', 'M', '015-6487811', 'frederico@gmail.com', 'Lot 234, Jalan Nora 2', 53100, 'Taman Melawati', 'Selangor');
INSERT INTO Customer VALUES ('C1038', 'Bartholemy Urban', 'M', '014-2357815', 'bartholemy@gmail.com', 'Lot 345, Jalan Nora 2', 53100, 'Taman Melawati', 'Selangor');
INSERT INTO Customer VALUES ('C1039', 'Cobb Batal', 'M', '011-7233367', 'cobb@gmail.com', 'B-20/01 Amara Residensi, Jalan Raintree Utama', 68100, 'Batu Caves', 'Selangor');
INSERT INTO Customer VALUES ('C1040', 'Dickie Feigi', 'M', '014-2327326', 'dickie@gmail.com', 'E-17/23A Amara Residensi, Jalan Raintree Utama', 68100, 'Batu Caves', 'Selangor');
INSERT INTO Customer VALUES ('C1041', 'Delinda Stone', 'F', '019-3952452', 'delinda@gmail.com', 'G-8 RESIDENSI UNGGUL KEPONG, Jalan Vista Mutiara 1,', 52000, 'Kepong Baru', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1042', 'Ebony Darby', 'F', '017-2718893', 'ebony@gmail.com', 'Lot 1123, Jalan Delima 1/1, Subang Hi-tech Industrial Park', 40000, 'Subang Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1043', 'Marshal', 'M', '015-6841896', 'marshal@gmail.com', 'PT 85, Jalan Ampang Hilir, Taman U Thant', 55000, 'Ampang', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1044', 'Chev Watson', 'M', '018-3328080', 'chev@gmail.com', 'A-1508, Jalan PJU 3/27, Sunway Damansara', 47810, 'Petaling Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1045', 'Jerrome Holland', 'M', '012-3976414', 'jerrome@gmail.com', 'B-21-18 PV13 Condo, Jalan Danau Saujana 1', 53300, 'Setapak', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1046', 'Eugen Wick', 'M', '014-8924858', 'eugen@gmail.com', 'B-3A/21, Jalan PJU 1a/3, Ara Damansara', 47301, 'Petaling Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1047', 'Adora Kingsley', 'F', '016-6157800', 'adora@gmail.com', 'C-20 Wangsa 9 Residency, Jalan Wangsa Perdana 1', 53300, 'Wangsa Maju', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1048', 'Jenine Donald', 'F', '013-5106832', 'jenine@gmail.com', 'A-03/22 Epic Residence, Jln BP 7/12, Bandar Bukit Puchong 2', 47120, 'Puchong', 'Selangor');
INSERT INTO Customer VALUES ('C1049', 'Caesar Pier', 'M', '014-5189459', 'caesar@gmail.com', 'F-11 Wangsa 9 Residency, Jalan Wangsa Perdana 1', 53300, 'Wangsa Maju', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1050', 'Abdul Larson', 'M', '018-9578736', 'abdul@gmail.com', 'BlockB-078 Putra One Residence, Persiaran Bukit Rahman Putra 1', 47000, 'Sungai Buloh', 'Selangor');
INSERT INTO Customer VALUES ('C1051', 'Andrus Johanson', 'M', '015-4336744', 'andrus@gmail.com', 'C-13-21 One Jelatek Condo, Jalan Jelatek', 54200, 'Jelatek', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1052', 'Devin Howard', 'F', '013-8847334', 'devin@gmail.com', 'B-13A, Green Residence, Jalan Sayang 1', 43200, 'Cheras', 'Selangor');
INSERT INTO Customer VALUES ('C1053', 'Gareth Junior', 'M', '015-1082902', 'gareth@gmail.com', 'Lot 1111 Menara Sri Jati, Jalan 30/56, Taman Setiawangsa', 54200, 'Setiawangsa', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1054', 'Cosetta Hall', 'F', '013-1250317', 'cosetta@gmail.com', '24A-10 Ampang Damai Condominium, Jalan Wawasan 3', 68000, 'Ampang Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1055', 'Justinian Bettany', 'M', '014-4000253', 'justinian@gmail.com', 'PT 3579, Seri Titiwangsa, Lorong Titiwangsa 1', 53200, 'Titiwangsa', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1056', 'Natividad Donald', 'F', '019-4420505', 'natividad@gmail.com', 'B-20-14 MH Platinum Residence, Jalan Gombak', 53100, 'Gombak', 'Selangor');
INSERT INTO Customer VALUES ('C1057', 'Pace Ben', 'M', '014-2726488', 'pace@gmail.com', 'Lot 456, Jalan Nora 2', 53100, 'Taman Melawati', 'Selangor');
INSERT INTO Customer VALUES ('C1058', 'Lefty Kidman', 'M', '013-3306626', 'lefty@gmail.com', 'Lot 630, Jalan Nora 2', 53100, 'Taman Melawati', 'Selangor');
INSERT INTO Customer VALUES ('C1059', 'Tore Larson', 'M', '015-2825892', 'tore@gmail.com', 'B-23/05 Amara Residensi, Jalan Raintree Utama', 68100, 'Batu Caves', 'Selangor');
INSERT INTO Customer VALUES ('C1060', 'Rhodie Johanson', 'F', '014-2701915', 'rhodie@gmail.com', 'A-15/29 Amara Residensi, Jalan Raintree Utama', 68100, 'Batu Caves', 'Selangor');
INSERT INTO Customer VALUES ('C1061', 'Jody Dickey', 'F', '012-9515666', 'jody@gmail.com', 'A-28 RESIDENSI UNGGUL KEPONG, Jalan Vista Mutiara 1,', 52000, 'Kepong Baru', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1062', 'Loren Alexander', 'F', '019-2502368', 'loren@gmail.com', 'Lot 8888, Jalan Delima 1/1, Subang Hi-tech Industrial Park', 40000, 'Subang Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1063', 'Susette Cumberbatch', 'F', '014-6829471', 'susette@gmail.com', 'A-15-9, Jalan Kelab Ukay 2, Taman Kelab Ukay', 68000, 'Ampang', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1064', 'Eirena Sweeden', 'F', '011-7797683', 'eirena@gmail.com', 'A-21/3A, Jalan PJU 1a/3, Ara Damansara', 47301, 'Petaling Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1065', 'Paxton Boseman', 'M', '017-6355678', 'paxton@gmail.com', 'B-18-20 PV13 Condo, Jalan Danau Saujana 1', 53300, 'Setapak', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1066', 'Pia Jordon', 'F', '016-6612386', 'pia@gmail.com', 'D-14/08, Jalan PJU 1a/3, Ara Damansara', 47301, 'Petaling Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1067', 'Dacy Walker', 'F', '014-3478197', 'dacy@gmail.com', 'B-23 Wangsa 9 Residency, Jalan Wangsa Perdana 1', 53300, 'Wangsa Maju', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1068', 'Olin Stark', 'M', '013-3474377', 'olin@gmail.com', 'A-18/21 Epic Residence, Jln BP 7/12, Bandar Bukit Puchong 2', 47120, 'Puchong', 'Selangor');
INSERT INTO Customer VALUES ('C1069', 'Ileane Barnes', 'F', '015-1393678', 'ileane@gmail.com', 'A-19/08 Seri Riana Residence, Jalan Wangsa Delima 7', 53300, 'Wangsa Maju', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1070', 'Ozzie Wilson', 'M', '015-1719860', 'ozzie@gmail.com', 'BlockC-053 Putra One Residence, Persiaran Bukit Rahman Putra 1', 47000, 'Sungai Buloh', 'Selangor');
INSERT INTO Customer VALUES ('C1071', 'Ker Valentina', 'M', '017-7549624', 'ker@gmail.com', 'A-18-14 One Jelatek Condo, Jalan Jelatek', 54200, 'Jelatek', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1072', 'Margalit Yondu', 'F', '011-7158336', 'margalit@gmail.com', 'C-17, Green Residence, Jalan Sayang 1', 43200, 'Cheras', 'Selangor');
INSERT INTO Customer VALUES ('C1073', 'Arabella Chela', 'F', '014-3999186', 'arabella@gmail.com', 'Lot 1466 Menara Sri Jati, Jalan 30/56, Taman Setiawangsa', 54200, 'Setiawangsa', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1074', 'Ernie Stans', 'M', '013-3024468', 'ernie@gmail.com', '21C-41 Ampang Damai Condominium, Jalan Wawasan 3', 68000, 'Ampang Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1075', 'Rhoda Evans', 'F', '015-6086948', 'rhoda@gmail.com', 'PT 2981, Seri Titiwangsa, Lorong Titiwangsa 1', 53200, 'Titiwangsa', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1076', 'Ravi Grillo', 'M', '011-9525769', 'ravi@gmail.com', 'A-18-11 MH Platinum Residence, Jalan Gombak', 53100, 'Gombak', 'Selangor');
INSERT INTO Customer VALUES ('C1077', 'Sherwin Weaving', 'M', '014-2738613', 'sherwin@gmail.com', 'Lot 122, Jalan Nora 2', 53100, 'Taman Melawati', 'Selangor');
INSERT INTO Customer VALUES ('C1078', 'Bernelle Atwell', 'F', '015-7115120', 'bernelle@gmail.com', 'Lot 224, Jalan Nora 2', 53100, 'Taman Melawati', 'Selangor');
INSERT INTO Customer VALUES ('C1079', 'Darryl Luke', 'F', '012-1406853', 'darryl@gmail.com', 'A-20/11 Amara Residensi, Jalan Raintree Utama', 68100, 'Batu Caves', 'Selangor');
INSERT INTO Customer VALUES ('C1080', 'Lissi Richi', 'F', '015-9870310', 'lissi@gmail.com', 'A-19/04 Amara Residensi, Jalan Raintree Utama', 68100, 'Batu Caves', 'Selangor');
INSERT INTO Customer VALUES ('C1081', 'Hedwiga Brandon', 'F', '019-1395914', 'hedwiga@gmail.com', 'A-21-3A, Jalan Vista Mutiara 1, Tsi Business Park', 52000, 'Kepong Baru', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1082', 'Cynthea Caesar', 'F', '018-6279266', 'cynthea@gmail.com', 'Lot 2589, Jalan Delima 1/1, Subang Hi-tech Industrial Park', 40000, 'Subang Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1083', 'Niven Denny', 'M', '011-1434505', 'niven@gmail.com', 'A-3A-1, Jalan Kelab Ukay 2, Taman Kelab Ukay', 68000, 'Ampang', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1084', 'Ronalda Jackson', 'F', '019-5626591', 'ronalda@gmail.com', 'C-13/02, Jalan PJU 1a/3, Ara Damansara', 47301, 'Petaling Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1085', 'Dolley Law', 'F', '011-8799708', 'dolley@gmail.com', 'A-21-4 PV15 Condo, Jalan Danau Saujana 1', 53300, 'Setapak', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1086', 'Carleen Flek', 'F', '012-7321388', 'carleen@gmail.com', 'A-18/24, Jalan PJU 1a/3, Ara Damansara', 47301, 'Petaling Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1087', 'Hubie Alexander', 'M', '016-1621910', 'hubie@gmail.com', 'C-08 Wangsa 9 Residency, Jalan Wangsa Perdana 1', 53300, 'Wangsa Maju', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1088', 'Northrop Bening', 'M', '015-5915816', 'northrop@gmail.com', 'B-08/14 Epic Residence, Jln BP 7/12, Bandar Bukit Puchong 2', 47120, 'Puchong', 'Selangor');
INSERT INTO Customer VALUES ('C1089', 'Adina Modu', 'F', '012-5809723', 'adina@gmail.com', 'E-18 Wangsa 9 Residency, Jalan Wangsa Perdana 1', 53300, 'Wangsa Maju', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1090', 'Merralee Diesel', 'F', '012-6158928', 'merralee@gmail.com', 'BlockC-141 Putra One Residence, Persiaran Bukit Rahman Putra 1', 47000, 'Sungai Buloh', 'Selangor');
INSERT INTO Customer VALUES ('C1091', 'Otto Gillan Rooker', 'M', '011-7354170', 'otto@gmail.com', 'B-22-23 One Jelatek Condo, Jalan Jelatek', 54200, 'Jelatek', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1092', 'Flss Saldana', 'F', '017-2230278', 'flss@gmail.com', 'F-11, Green Residence, Jalan Sayang 1', 43200, 'Cheras', 'Selangor');
INSERT INTO Customer VALUES ('C1093', 'Esme Pratt', 'M', '011-1805813', 'esme@gmail.com', 'Lot 1007 Menara Sri Jati, Jalan 30/56, Taman Setiawangsa', 54200, 'Setiawangsa', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1094', 'Rae Gunn', 'F', '016-7513147', 'rae@gmail.com', '19A-55 Ampang Damai Condominium, Jalan Wawasan 3', 68000, 'Ampang Jaya', 'Selangor');
INSERT INTO Customer VALUES ('C1095', 'George Peter', 'M', '012-8849303', 'george@gmail.com', 'PT 3277, Seri Titiwangsa, Lorong Titiwangsa 1', 53200, 'Titiwangsa', 'Kuala Lumpur');
INSERT INTO Customer VALUES ('C1096', 'Sheilakathryn Bautista', 'F', '018-1823908', 'sheilakathryn@gmail.com', 'B-16-06 MH Platinum Residence, Jalan Gombak', 53100, 'Gombak', 'Selangor');
INSERT INTO Customer VALUES ('C1097', 'Silvia Gillian', 'F', '018-8644995', 'silvia@gmail.com', 'Lot 326, Jalan Nora 2', 53100, 'Taman Melawati', 'Selangor');
INSERT INTO Customer VALUES ('C1098', 'Gare Rice', 'M', '011-9192021', 'gare@gmail.com', 'Lot 428, Jalan Nora 2', 53100, 'Taman Melawati', 'Selangor');
INSERT INTO Customer VALUES ('C1099', 'Hunter Stark', 'M', '013-9818221', 'hunter@gmail.com', 'C-14/30 Amara Residensi, Jalan Raintree Utama', 68100, 'Batu Caves', 'Selangor');
INSERT INTO Customer VALUES ('C1100', 'Thurstan Brolin', 'M', '019-9305622', 'thurstan@gmail.com', 'A-10/12 Amara Residensi, Jalan Raintree Utama', 68100, 'Batu Caves', 'Selangor');
INSERT INTO Customer VALUES ('C1101', 'Lorrayne Alexander', 'F', '011-5900172', 'lorrayne@gmail.com', 'C-2-8, Jalan Vista Mutiara 1, Tsi Business Park', 52000, 'Kepong Baru', 'Kuala Lumpur');

-- 101 records
SELECT COUNT(*) FROM Customer;