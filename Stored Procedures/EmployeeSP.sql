-- Stored procedure, given an employee ID returns first name, last name, current department name and job title
CREATE PROCEDURE usp_JobInfo27 @EmployeeID NCHAR(9) AS
SELECT FirstName,LastName,DeptName,JobTitle
FROM Employee, Department, Job, JobHistory
WHERE Employee.EmployeeID = JobHistory.EmployeeID AND JobHistory.JobCode = Job.JobCode
AND JobHistory.DeptCode = Department.DeptCode AND Employee.EmployeeID = @EmployeeID AND JobHistory.JobEnd IS NULL;
