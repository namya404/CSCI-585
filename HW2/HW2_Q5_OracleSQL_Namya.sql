SELECT DISTINCT M1.EmployeeID AS "Contacted Employees" 
FROM Meeting M1 
INNER JOIN Meeting M2 ON M1.RoomNumber = M2.RoomNumber AND M1.StartTime = M2.StartTime 
INNER JOIN HealthStatus HS ON M2.EmployeeID = HS.EmployeeID 
WHERE HS.Status = 'sick';

