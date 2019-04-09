-- view that displays information about an employees current
CREATE VIEW CurrentJob27 AS
SELECT Employee.EmployeeID, FirstName, LastName,JobTitle, DeptName, Department.DeptCode, MinSalary, MaxSalary, StatusDesc, JobStart
FROM Employee, JobHistory, WorkStatus, Job, Department
WHERE Employee.EmployeeID = JobHistory.EmployeeID AND Employee.WorkStatusCode = WorkStatus.WorkStatusCode AND JobHistory.JobCode = Job.JobCode
AND JobHistory.DeptCode = Department.DeptCode AND JobHistory.JobEnd IS NULL;
