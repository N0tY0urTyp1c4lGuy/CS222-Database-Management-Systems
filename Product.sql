#Guide in creating the Product Table
#Keywords of SQL are ALL CAPITALIZE for EMPHASIS only.
#=====================================================
# Author: Christian A. Balderrama
# Facebook: /christian.balderrama.71
# Twitter:	@DevSlashXtian
# Github:	softwaredevxtian
#======================================================

#Creating the Product table
CREATE TABLE product (prodCode VARCHAR(6) NOT NULL PRIMARY KEY, description VARCHAR(20), unit CHAR(3) CONSTRAINT unit_check (unit IN ('EA','PC','PKG','MTR'), unitPrice DECIMAL(10,2), date_created DATE NOT NULL))

#Creating SEQUENCE for the PC prodCode
CREATE SEQUENCE product_sequence START WITH 0 INCREMENT BY 2 CACHE 5

#Inserting data in the PRODUCT Table
INSERT INTO product VALUES('PC' || LPAD(NEXT VALUE FOR product_sequence,4,'0'), 'Mouse','EA','200','2013-12-16')
INSERT INTO product VALUES('PC' || LPAD(NEXT VALUE FOR product_sequence,4,'0'), 'AOC Monitor','PKG','3500','2013-12-15')
INSERT INTO product VALUES('PC' || LPAD(NEXT VALUE FOR product_sequence,4,'0'), 'Keyboard','PC','150','2013-12-14')
INSERT INTO product VALUES('PC' || LPAD(NEXT VALUE FOR product_sequence,4,'0'), 'Extension Cord','MTR','20','2013-12-16')
INSERT INTO product VALUES('PC' || LPAD(NEXT VALUE FOR product_sequence,4,'0'), 'Windows 8 OS','PKG','12500','2013-12-12')

#Checking if the CONSTRAINT works
INSERT INTO product VALUES('PC' || LPAD(NEXT VALUE FOR product_sequence,4,'0'), 'Mouse', 'EA','200',2013-12-16)

#Checking the data inside the PRODUCT Table
SET SCHEMA schemaName
SELECT * FROM product