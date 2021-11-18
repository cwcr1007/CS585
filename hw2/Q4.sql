REM   Script: Q4
REM   DB software: Oracle


SELECT count(*)  
FROM Scan     
WHERE Scan_date BETWEEN TO_DATE('01/10/2021', 'DD/MM/YYYY') AND TO_DATE('15/10/2021', 'DD/MM/YYYY');

SELECT count(*)     
FROM Test     
WHERE Test_date BETWEEN TO_DATE('01/10/2021', 'DD/MM/YYYY') AND TO_DATE('15/10/2021', 'DD/MM/YYYY');

SELECT count(*)     
FROM Symptom     
WHERE Date_reported BETWEEN TO_DATE('01/10/2021', 'DD/MM/YYYY') AND TO_DATE('15/10/2021', 'DD/MM/YYYY');

SELECT count(*)     
FROM Case     
WHERE Case_date BETWEEN TO_DATE('01/10/2021', 'DD/MM/YYYY') AND TO_DATE('15/10/2021', 'DD/MM/YYYY');

