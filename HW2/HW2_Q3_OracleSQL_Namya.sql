SELECT e.FloorNumber, COUNT(*) AS SickCount 
FROM Employee e 
JOIN HealthStatus hs ON e.EmployeeID = hs.EmployeeID 
WHERE hs.Status = 'sick' 
GROUP BY e.FloorNumber 
ORDER BY SickCount DESC 
FETCH FIRST 1 ROW ONLY;

