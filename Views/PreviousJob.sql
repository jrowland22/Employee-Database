-- view that displays information about an employees previous job
CREATE VIEW PreviousEmpInfo27 AS
SELECT Employee.EmployeeID, FirstName, LastName, JobTitle,
MinSalary, MaxSalary, StatusDesc, JobStart, JobEnd
FROM Employee, JobHistory, WorkStatus, Job, Department
WHERE Employee.EmployeeID = JobHistory.EmployeeID AND 
Employee.WorkStatusCode = WorkStatus.WorkStatusCode AND JobHistory.JobCode = Job.JobCode
AND JobHistory.DeptCode = Department.DeptCode AND JobHistory.JobEnd IS NOT NULL;
