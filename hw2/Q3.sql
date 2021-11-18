REM   Script: Q3
REM   DB software: Oracle


SELECT e.Floor_number 
FROM Employee e, Case c 
WHERE c.Employee_id = e.Employee_id 
GROUP BY e.Floor_number 
ORDER BY COUNT(Floor_number) 
FETCH FIRST 1 ROW ONLY;

