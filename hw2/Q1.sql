REM   Script: Q1
REM   DB software: Oracle

CREATE TABLE Employee ( 
 Employee_id INTEGER NOT NULL, 
 Employee_name VARCHAR(255) NOT NULL, 
 Email_address VARCHAR(255) NOT NULL, 
 Office_number INTEGER NOT NULL, 
 Floor_number INTEGER NOT NULL CHECK (Floor_number BETWEEN 1 AND 10), 
 Phone_number INTEGER, 
 CONSTRAINT PK_Employee PRIMARY KEY (Employee_id) 
);

CREATE TABLE Meeting ( 
    Meeting_id INTEGER NOT NULL, 
    Employee_id INTEGER NOT NULL, 
    Meeting_start INTEGER NOT NULL CHECK (Meeting_start BETWEEN 8 AND 18), 
    Room_number INTEGER,  
    Floor_number INTEGER CHECK (Floor_number BETWEEN 1 AND 10), 
    CONSTRAINT PK_Meeting PRIMARY KEY (Meeting_id, Employee_id), 
    CONSTRAINT FK_Meeting FOREIGN KEY (Employee_id) REFERENCES Employee(Employee_id) 
);

CREATE TABLE Notification ( 
    Notification_id INTEGER NOT NULL,  
    Employee_id INTEGER NOT NULL,  
    Notification_date DATE NOT NULL,  
    Notification_type VARCHAR(255) NOT NULL CHECK (Notification_type = 'mandatory' OR Notification_type = 'optional'), 
    CONSTRAINT PK_Notification PRIMARY KEY (Notification_id, Employee_id), 
    CONSTRAINT FK_Notification FOREIGN KEY (Employee_id) REFERENCES Employee (Employee_id) 
);

CREATE TABLE Symptom ( 
    Row_id INTEGER NOT NULL, 
    Employee_id INTEGER NOT NULL,  
    Date_reported DATE NOT NULL,  
    Symptom_id INTEGER CHECK (Symptom_id BETWEEN 1 AND 5), 
    CONSTRAINT PK_Symptom PRIMARY KEY (Row_id, Employee_id), 
    CONSTRAINT FK_Symptom FOREIGN KEY (Employee_id) REFERENCES Employee (Employee_id) 
);

CREATE TABLE Scan ( 
    Scan_id INTEGER NOT NULL, 
    Employee_id INTEGER NOT NULL,  
    Scan_date DATE NOT NULL,  
    Scan_time INTEGER CHECK (Scan_time BETWEEN 0 AND 23), 
    Temperature INTEGER NOT NULL, 
    CONSTRAINT PK_Scan PRIMARY KEY (Scan_id, Employee_id), 
    CONSTRAINT FK_Scan FOREIGN KEY (Employee_id) REFERENCES Employee(Employee_id) 
);

CREATE TABLE Test ( 
    Test_id INTEGER NOT NULL, 
    Employee_id INTEGER NOT NULL,  
    Test_location VARCHAR(255) NOT NULL,  
    Test_date DATE NOT NULL, 
    Test_time INTEGER CHECK (Test_time BETWEEN 0 AND 23),  
    Test_result VARCHAR(255) NOT NULL CHECK (Test_result = 'positive' OR Test_result = 'negative'), 
    CONSTRAINT PK_Test PRIMARY KEY (Test_id, Employee_id), 
    CONSTRAINT FK_Test FOREIGN KEY (Employee_id) REFERENCES Employee(Employee_id) 
);

CREATE TABLE Case ( 
    Case_id INTEGER NOT NULL, 
    Employee_id INTEGER NOT NULL,  
    Case_date DATE NOT NULL,  
    Resolution VARCHAR(255) CHECK (Resolution = 'back' OR Resolution = 'left' OR Resolution = 'deceased'), 
    CONSTRAINT PK_Case PRIMARY KEY (Case_id, Employee_id), 
    CONSTRAINT FK_Case FOREIGN KEY (Employee_id) REFERENCES Employee(Employee_id) 
);

CREATE TABLE HealthStatus ( 
    Row_id INTEGER NOT NULL, 
    Employee_id INTEGER NOT NULL,  
    Status_date DATE NOT NULL,  
    Status VARCHAR(255) CHECK (Status = 'sick' OR Status = 'hospitalized' OR Status = 'well'), 
    CONSTRAINT PK_HealthStatus PRIMARY KEY (Row_id, Employee_id), 
    CONSTRAINT FK_HealthStatus FOREIGN KEY (Employee_id) REFERENCES Employee(Employee_id) 
);

INSERT INTO Employee VALUES (1, 'Bob',   '001@usc.edu', 1, 10, 1234567890);

INSERT INTO Employee VALUES (2, 'August','002@usc.edu', 2, 9 , 3243143421);

INSERT INTO Employee VALUES (3, 'Carl',  '003@usc.edu', 2, 9 , 3213214321);

INSERT INTO Employee VALUES (4, 'John',  '004@usc.edu', 3, 7 , 5215156432);

INSERT INTO Employee VALUES (5, 'Gary',  '005@usc.edu', 3, 7 , 5234684567);

INSERT INTO Employee VALUES (6, 'Kevin', '006@usc.edu', 3, 7 , 7272429364);

INSERT INTO Employee VALUES (7, 'Jason', '007@usc.edu', 4, 6 , 6345628354);

INSERT INTO Employee VALUES (8, 'Bobby', '008@usc.edu', 4, 6 , 2223442654);

INSERT INTO Employee VALUES (9, 'Jack',  '009@usc.edu', 4, 6 , 1216568356);

INSERT INTO Employee VALUES (10,'Brian', '010@usc.edu', 4, 6 , 7623356358);

INSERT INTO Employee VALUES (11,'Ben',   '011@usc.edu', 4, 6 , 5432539764);

INSERT INTO Employee VALUES (12,'Joshua','012@usc.edu', 5, 6 , 6724538076);

INSERT INTO Employee VALUES (13,'Paul',  '013@usc.edu', 5, 6 , 5949462345);

INSERT INTO Employee VALUES (14,'Steven','014@usc.edu', 6, 6 , 4341112642);

INSERT INTO Employee VALUES (15,'Emily', '015@usc.edu', 7, 5 , 4567881524);

INSERT INTO Employee VALUES (16,'Betty', '016@usc.edu', 7, 5 , 8486791235);

INSERT INTO Employee VALUES (17,'Lisa',  '017@usc.edu', 7, 5 , 9494742346);

INSERT INTO Employee VALUES (18,'Nancy', '018@usc.edu', 7, 5 , 2341237543);

INSERT INTO Employee VALUES (19,'Linda', '019@usc.edu', 7, 5 , 4523891850);

INSERT INTO Employee VALUES (20,'Mary',  '020@usc.edu', 7, 5 , 5901289001);

INSERT INTO Employee VALUES (21,'Peter', '021@usc.edu', 7, 5 , 8486763435);

INSERT INTO Employee VALUES (22,'Aaron', '022@usc.edu', 7, 5 , 9492332346);

INSERT INTO Employee VALUES (23,'Jose',  '023@usc.edu', 7, 5 , 2343456543);

INSERT INTO Employee VALUES (24,'Tyler', '024@usc.edu', 7, 5 , 4523222250);

INSERT INTO Employee VALUES (25,'Larry', '025@usc.edu', 7, 5 , 5901333001);

INSERT INTO Meeting VALUES (1,  1, 9 , 1, 10);

INSERT INTO Meeting VALUES (2,  2, 9 , 3, 7);

INSERT INTO Meeting VALUES (3,  3, 13, 4, 7);

INSERT INTO Meeting VALUES (4,  3, 13, 5, 6);

INSERT INTO Meeting VALUES (5,  5, 9 , 3, 7);

INSERT INTO Meeting VALUES (6,  5, 13, 4, 7);

INSERT INTO Meeting VALUES (7,  5, 9 , 5, 5);

INSERT INTO Meeting VALUES (8,  4, 9 , 3, 5);

INSERT INTO Meeting VALUES (9,  4, 9 , 4, 5);

INSERT INTO Meeting VALUES (10, 4, 9 , 5, 5);

INSERT INTO Meeting VALUES (11, 4, 9 , 3, 6);

INSERT INTO Meeting VALUES (12, 6, 13, 4, 7);

INSERT INTO Meeting VALUES (13, 6, 13, 5, 7);

INSERT INTO Meeting VALUES (14, 6, 13, 4, 7);

INSERT INTO Meeting VALUES (15, 6, 9 , 5, 5);

INSERT INTO Symptom VALUES (1, 9 , TO_DATE('03/10/2021', 'DD/MM/YYYY'), 2);

INSERT INTO Symptom VALUES (2, 11, TO_DATE('06/10/2021', 'DD/MM/YYYY'), 1);

INSERT INTO Symptom VALUES (3, 19, TO_DATE('06/10/2021', 'DD/MM/YYYY'), 3);

INSERT INTO Symptom VALUES (4, 17, TO_DATE('07/10/2021', 'DD/MM/YYYY'), 2);

INSERT INTO Symptom VALUES (5, 8 , TO_DATE('11/10/2021', 'DD/MM/YYYY'), 2);

insert into Test values (1, 1 , 'company', TO_DATE('01/10/2021', 'DD/MM/YYYY'), 8 , 'negative');

insert into Test values (2, 15, 'company', TO_DATE('03/10/2021', 'DD/MM/YYYY'), 8 , 'positive');

insert into Test values (3, 11, 'company', TO_DATE('06/10/2021', 'DD/MM/YYYY'), 12, 'positive');

insert into Test values (4, 9 , 'company', TO_DATE('07/10/2021', 'DD/MM/YYYY'), 10, 'positive');

insert into Test values (5, 19, 'clinic',  TO_DATE('11/10/2021', 'DD/MM/YYYY'), 0 , 'positive');

insert into Test values (6, 18, 'clinic',  TO_DATE('12/10/2021', 'DD/MM/YYYY'), 1 , 'positive');

INSERT INTO Case VALUES (1, 15, TO_DATE('03/10/2021', 'DD/MM/YYYY'), 'left');

INSERT INTO Case VALUES (2, 11, TO_DATE('06/10/2021', 'DD/MM/YYYY'), 'back');

INSERT INTO Case VALUES (3, 9 , TO_DATE('07/10/2021', 'DD/MM/YYYY'), 'back');

INSERT INTO Case VALUES (4, 19, TO_DATE('11/10/2021', 'DD/MM/YYYY'), 'deceased');

INSERT INTO Case VALUES (5, 18, TO_DATE('12/10/2021', 'DD/MM/YYYY'), 'back');

INSERT INTO Scan VALUES (1, 4 , TO_DATE('01/10/2021', 'DD/MM/YYYY'), 8, 97.9);

INSERT INTO Scan VALUES (2, 11, TO_DATE('02/10/2021', 'DD/MM/YYYY'), 8, 98.6);

INSERT INTO Scan VALUES (3, 9 , TO_DATE('03/10/2021', 'DD/MM/YYYY'), 8, 98.7);

INSERT INTO Scan VALUES (4, 5 , TO_DATE('04/10/2021', 'DD/MM/YYYY'), 8, 98.8);

INSERT INTO Scan VALUES (5, 2 , TO_DATE('05/10/2021', 'DD/MM/YYYY'), 8, 98.6);

INSERT INTO Scan VALUES (6, 12, TO_DATE('06/10/2021', 'DD/MM/YYYY'), 8, 98.7);

INSERT INTO Scan VALUES (7, 19, TO_DATE('07/10/2021', 'DD/MM/YYYY'), 8, 99.9);

INSERT INTO Scan VALUES (8, 11, TO_DATE('08/10/2021', 'DD/MM/YYYY'), 8, 98.3);

