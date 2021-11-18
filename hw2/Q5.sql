REM   Script: Q5
REM   DB software: Oracle

--Write a query to output the positive cases' employee who left the company. 

SELECT Employee_id 
FROM Case 
WHERE Resolution = 'left' 
 
;

