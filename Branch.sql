#Guide in creating the Branch Table
#Keywords of SQL are ALL CAPITALIZE for EMPHASIS only.
#=====================================================
# Author: Christian A. Balderrama
# Facebook: /christian.balderrama.71
# Twitter:	@DevSlashXtian
# Github:	softwaredevxtian
#======================================================

#Creating Branch Table in the Database 
CREATE TABLE Branch(branchCode VARHCHAR(4) NOT NULL PRIMARY KEY, branchName VARCHAR(20))

#Inserting data in the BRANCH Table
INSERT INTO Branch VALUES('MAN','Manila')
INSERT INTO Branch VALUES('DAV','Davao')
INSERT INTO Branch VALUES('CEB','Cebu')