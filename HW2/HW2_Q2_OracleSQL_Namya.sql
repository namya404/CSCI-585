SELECT SymptomType 
FROM ( 
    SELECT SymptomType, COUNT(*) AS count 
    FROM Symptom 
    GROUP BY SymptomType 
    ORDER BY COUNT(*) DESC 
) 
WHERE ROWNUM = 1;

