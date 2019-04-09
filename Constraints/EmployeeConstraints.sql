-- Sex contraint allow either 'M' male or 'F' female --
ALTER TABLE Employee ADD CONSTRAINT CK_Sex27 CHECK (Sex IN('M','F'));
-- Work status constraint, allows work status codes 0-5
ALTER TABLE Employee ADD CONSTRAINT CK_StatusCode27 CHECK (WorkStatusCode IN('0','1','2','3','4','5'));
