-- Update trigger, enforces that minimum salary must be less than maximum salary
CREATE TRIGGER JobSalary27 ON Job FOR UPDATE AS 
IF EXISTS
(SELECT 'True' FROM Job WHERE MinSalary < MaxSalary)
BEGIN RAISERROR('Minimum salary must be less than maximum salary, NN:27',15,1)
ROLLBACK TRAN
END
