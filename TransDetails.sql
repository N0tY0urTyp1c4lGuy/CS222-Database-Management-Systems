#Guide in creating the TransDetails Table
#Keywords of SQL are ALL CAPITALIZE for EMPHASIS only.
#=====================================================
# Author: Christian A. Balderrama
# Facebook: /christian.balderrama.71
# Twitter:	@DevSlashXtian
# Github:	softwaredevxtian
#======================================================

#Creating the table
CREATE TABLE transDetails (transNo VARCHAR(6) NOT NULL REFERENCES transaction, prodCode VARCHAR(6) NOT NULL REFERENCES product, quantity DECIMAL(10,2), PRIMARY KEY(transNo,prodCode))

#Insert data in transDetails table
INSERT INTO transDetails VALUES ('TR0001','PC0002','1')
INSERT INTO transDetails VALUES ('TR0001','PC0004','2')
INSERT INTO transDetails VALUES ('TR0002','PC0000','3')
INSERT INTO transDetails VALUES ('TR0003','PC0002','2')
INSERT INTO transDetails VALUES ('TR0003','PC0006','1')
INSERT INTO transDetails VALUES ('TR0003','PC0008','2')
INSERT INTO transDetails VALUES ('TR0004','PC0004','5')