REM   Script: Q2
REM   DB software: Oracle


SELECT Symptom_id FROM Symptom GROUP BY Symptom_id HAVING COUNT(*) =  
    (SELECT MAX(mycount) FROM 
        (SELECT COUNT(Symptom_id) AS mycount 
         FROM Symptom 
         GROUP BY Symptom_id));

