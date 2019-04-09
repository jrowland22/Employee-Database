-- Some queries executed against the database

-- Who are / were the female employees?
SELECT FirstName, LastName
FROM Employee 
WHERE sex = "F";

-- Who are the "Full time" employees?
SELECT FirstName, LastName 
FROM Employee 
WHERE WorkStatusCode = 1;

-- Count the "Full time" employees?
SELECT COUNT(WorkStatusCode) as FullTimeEmployees 
FROM Employee 
WHERE WorkStatusCode = 1;

-- Who has worked for each department?
SELECT distinct DeptName, FirstName, LastName 
FROM Employee, JobHistory, Department 
WHERE Employee.EmployeeID = JobHistory.EmployeeID and JobHistory.DeptCode =  Department.DeptCode;

-- Who has worked for each department on July 10, 2014?
SELECT DeptName, FirstName, LastName 
FROM Employee, JobHistory, Department 
WHERE Employee.EmployeeID = JobHistory.EmployeeID
AND JobHistory.DeptCode =  Department.DeptCode and JobHistory.JobStart < "2014-07-10";
