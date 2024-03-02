SELECT COUNT(*) AS "Number of Scans" FROM Scan;

SELECT COUNT(*) AS "Number of Tests" FROM Test;

SELECT COUNT(DISTINCT EmployeeID) AS "Number of Employees who Self Reported" FROM Symptom;

SELECT COUNT(*) AS "Number of Positive Cases" FROM Test WHERE TestResult = 'positive';

