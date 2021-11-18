The design choices I made for formulating the COVID-19 contact tracing system ERD. There are eight entities in total. The following is the relationship between each entities (Capitalized).

	1) EMPLOYEE: Each EMPLOYEE has his/her own APPLICATION required on their phone. EMPLOYEE are belong to COMPANY. EMPLOYEE need to update the self-report if they develop Covid-19 symptoms. EMPLOYEE go to meeting during the work. EMPLOYEE are notified to do the COVID-19 TEST if they exposed to positive EMPLOYEE. The SMARTPHONE_NUMBER and EMAIL_ADDRESS are attributes of EMPLOYEE.
	
	2) APPLICATION: is the key entity in the whole system, which connect EMPLOYEE and COMPANY. APPLICATION record the FLOOR NUMBER and MEETING of each EMPLOYEE. COVID-19 TEST's result and SELF REPORT are passed to APPLICATION.

	3) COMPANY: SELF-REPORT and COVID-19 TEST are send to COMPANY through APPLICATION. If the test result is positive, the COMPANY will start contact TRACING SYSTEM to make sure close contact to do the Covid test. The EMPLOYEES' TEMPERATURE is recorded by the COMPANY randomly.

	4) MEETING: The TRACING SYSTEM trace the close contact EMPLOYEE in the MEETING with positive EMPLOYEE. 

	5) FLOOR: The FLOOR information is also recorded by APPLICATION.

	6) COVID-19 TEST: The attributes include TEST RESULT and TEST LOCATION.

	7) TRACING SYSTEM: It uses EMPLOYEE_ID and MEETING_ID as composite primary key. TRACING SYSTEM send out the TEST_NOTIFICATION to EMPLOYEES, who have close contact with Covid-19 positive people. It also traces the FLOOR_NUM of positive EMPLOYEE.

	8) SELF REPORT: It includes 5 basic symptoms that required by company.