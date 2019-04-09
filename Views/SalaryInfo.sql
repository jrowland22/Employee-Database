-- view that displays and computes different salary related information like avg salary, FICA and adjusted salary, 
CREATE VIEW SalaryInformation27 AS
SELECT Employee.EmployeeID, LastName, FirstName, MinSalary, MaxSalary, AvgSalary = ((MinSalary+MaxSalary)/2),
FICA = ((MinSalary+MaxSalary)/2)*0.06, AdjustedSalary = ((MinSalary+MaxSalary)/2)-((MinSalary+MaxSalary)/2)*0.06, 
TodaysDate = GETDATE(), Age = DATEDIFF(year,DOB,GETDATE())
FROM Employee, JobHistory, Job
WHERE Employee.EmployeeID = JobHistory.EmployeeID AND JobHistory.JobCode = Job.JobCode;
