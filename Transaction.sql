#Guide in creating the Transaction Table
#Keywords of SQL are ALL CAPITALIZE for EMPHASIS only.
#=====================================================
# Author: Christian A. Balderrama
# Facebook: /christian.balderrama.71
# Twitter:	@DevSlashXtian
# Github:	softwaredevxtian
#======================================================

#Creating Transaction Table
CREATE TABLE Transaction(transNo VARCHAR(6) NOT NULL PRIMARY KEY, sales_date DATE NOT NULL, branchCode VARCHAR(4) NOT NULL, FOREIGN KEY(branchCode) REFERENCES branch)

#Creating Sequence
CREATE SEQUENCE transaction_sequence START WITH 1 INCREMENT BY 1 CACHE 4

#Insert data into the Transaction Table
INSERT INTO transaction VALUES('TR' || LPAD(NEXT VALUE FOR transaction_sequence,4,'0'), '2013-12-16','MAN')
INSERT INTO transaction VALUES('TR' || LPAD(NEXT VALUE FOR transaction_sequence,4,'0'), '2013-12-16','MAN')
INSERT INTO transaction VALUES('TR' || LPAD(NEXT VALUE FOR transaction_sequence,4,'0'), '2013-12-15','DAV')
INSERT INTO transaction VALUES('TR' || LPAD(NEXT VALUE FOR transaction_sequence,4,'0'), '2013-12-14','Cebu')
