CREATE TABLE Employee ( 
    EmployeeID NUMBER PRIMARY KEY, 
    Name VARCHAR2(50), 
    OfficeNumber NUMBER, 
    FloorNumber NUMBER, 
    PhoneNumber VARCHAR2(15), 
    EmailAddress VARCHAR2(100) 
);

INSERT INTO Employee VALUES (1, 'John Smith', 101, 1, '555-123-4567', 'john.smith@example.com');

INSERT INTO Employee VALUES (2, 'Jane Doe', 202, 2, '555-987-6543', 'jane.doe@example.com');

INSERT INTO Employee VALUES (3, 'Robert Johnson', 303, 3, '555-555-5555', 'robert.johnson@example.com');

INSERT INTO Employee VALUES (4, 'Emily White', 404, 4, '555-222-3333', 'emily.white@example.com');

INSERT INTO Employee VALUES (5, 'Michael Brown', 505, 5, '555-444-5555', 'michael.brown@example.com');

INSERT INTO Employee VALUES (6, 'David Wilson', 626, 6, '555-666-7777', 'david.wilson@example.com');

INSERT INTO Employee VALUES (7, 'Sarah Lee', 737, 7, '555-888-9999', 'sarah.lee@example.com');

INSERT INTO Employee VALUES (8, 'William Davis', 808, 8, '555-111-2222', 'william.davis@example.com');

INSERT INTO Employee VALUES (9, 'Linda Hall', 959, 9, '555-333-4444', 'linda.hall@example.com');

INSERT INTO Employee VALUES (10, 'James Clark', 1010, 10, '555-777-8888', 'james.clark@example.com');

INSERT INTO Employee VALUES (11, 'Susan Adams', 111, 1, '555-999-0000', 'susan.adams@example.com');

INSERT INTO Employee VALUES (12, 'Daniel Miller', 232, 2, '555-222-1111', 'daniel.miller@example.com');

INSERT INTO Employee VALUES (13, 'Karen Turner', 323, 3, '555-555-3333', 'karen.turner@example.com');

INSERT INTO Employee VALUES (14, 'Richard Harris', 404, 4, '555-444-2222', 'richard.harris@example.com');

INSERT INTO Employee VALUES (15, 'Nancy Jackson', 505, 5, '555-333-1111', 'nancy.jackson@example.com');

INSERT INTO Employee VALUES (16, 'Thomas Lewis', 626, 6, '555-666-7777', 'thomas.lewis@example.com');

INSERT INTO Employee VALUES (17, 'Jennifer Moore', 737, 7, '555-555-4444', 'jennifer.moore@example.com');

INSERT INTO Employee VALUES (18, 'Paul Martin', 808, 8, '555-111-9999', 'paul.martin@example.com');

INSERT INTO Employee VALUES (19, 'Mary Turner', 959, 9, '555-888-2222', 'mary.turner@example.com');

INSERT INTO Employee VALUES (20, 'Christopher White', 1010, 10, '555-777-5555', 'christopher.white@example.com');

INSERT INTO Employee VALUES (21, 'Jessica Turner', 111, 1, '555-111-3333', 'jessica.turner@example.com');

INSERT INTO Employee VALUES (22, 'Kevin Harris', 232, 2, '555-444-6666', 'kevin.harris@example.com');

INSERT INTO Employee VALUES (23, 'Catherine Clark', 323, 3, '555-777-9999', 'catherine.clark@example.com');

INSERT INTO Employee VALUES (24, 'Mark Anderson', 404, 4, '555-222-5555', 'mark.anderson@example.com');

INSERT INTO Employee VALUES (25, 'Laura Wilson', 505, 5, '555-888-1111', 'laura.wilson@example.com');

CREATE TABLE Meeting ( 
    MeetingID NUMBER PRIMARY KEY, 
    EmployeeID NUMBER, 
    RoomNumber NUMBER, 
    FloorNumber NUMBER, 
    StartTime NUMBER, 
 
CONSTRAINT FK_Employee_Meeting 
FOREIGN KEY (EmployeeID) 
REFERENCES Employee(EmployeeID) 
);

INSERT INTO Meeting VALUES (1, 1, 101, 1, 10);

INSERT INTO Meeting VALUES (2, 2, 201, 2, 10);

INSERT INTO Meeting VALUES (3, 3, 301, 3, 15);

INSERT INTO Meeting VALUES (4, 4, 401, 4, 12);

INSERT INTO Meeting VALUES (5, 5, 501, 5, 16);

INSERT INTO Meeting VALUES (6, 6, 601, 6, 11);

INSERT INTO Meeting VALUES (7, 7, 701, 7, 13);

INSERT INTO Meeting VALUES (8, 8, 801, 8, 10);

INSERT INTO Meeting VALUES (9, 9, 901, 9, 12);

INSERT INTO Meeting VALUES (10, 10, 1001, 10, 15);

INSERT INTO Meeting VALUES (11, 11, 101, 1, 14);

INSERT INTO Meeting VALUES (12, 12, 201, 2, 13);

INSERT INTO Meeting VALUES (13, 13, 301, 3, 16);

INSERT INTO Meeting VALUES (14, 14, 401, 4, 9);

INSERT INTO Meeting VALUES (15, 15, 501, 5, 11);

INSERT INTO Meeting VALUES (16, 16, 601, 6, 10);

INSERT INTO Meeting VALUES (17, 17, 701, 7, 15);

INSERT INTO Meeting VALUES (18, 18, 801, 8, 14);

INSERT INTO Meeting VALUES (19, 19, 901, 9, 12);

INSERT INTO Meeting VALUES (20, 20, 1001, 10, 16);

INSERT INTO Meeting VALUES (21, 21, 101, 1, 10);

INSERT INTO Meeting VALUES (22, 22, 201, 2, 10);

INSERT INTO Meeting VALUES (23, 23, 301, 3, 15);

INSERT INTO Meeting VALUES (24, 24, 401, 4, 12);

INSERT INTO Meeting VALUES (25, 25, 501, 5, 16);

INSERT INTO Meeting VALUES (26, 16, 601, 6, 11);

INSERT INTO Meeting VALUES (27, 5, 701, 7, 13);

INSERT INTO Meeting VALUES (28, 4, 801, 8, 10);

INSERT INTO Meeting VALUES (29, 19, 901, 9, 12);

INSERT INTO Meeting VALUES (30, 20, 1001, 10, 15);

INSERT INTO Meeting VALUES (31, 21, 101, 1, 14);

INSERT INTO Meeting VALUES (32, 22, 201, 2, 13);

INSERT INTO Meeting VALUES (33, 23, 301, 3, 16);

INSERT INTO Meeting VALUES (34, 24, 401, 4, 9);

INSERT INTO Meeting VALUES (35, 25, 501, 5, 11);

INSERT INTO Meeting VALUES (36, 6, 601, 6, 10);

INSERT INTO Meeting VALUES (37, 7, 701, 7, 15);

INSERT INTO Meeting VALUES (38, 8, 801, 8, 14);

INSERT INTO Meeting VALUES (39, 9, 901, 9, 12);

INSERT INTO Meeting VALUES (40, 10, 1001, 10, 16);

CREATE TABLE Notification ( 
    NotificationID NUMBER PRIMARY KEY, 
    EmployeeID NUMBER, 
    NotificationDate DATE, 
    NotificationType VARCHAR2(20), 
 
CONSTRAINT FK_Employee_Notification 
FOREIGN KEY (EmployeeID) 
REFERENCES Employee(EmployeeID) 
);

INSERT INTO Notification VALUES (1, 1, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'mandatory');

INSERT INTO Notification VALUES (2, 2, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'optional');

INSERT INTO Notification VALUES (3, 3, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'mandatory');

INSERT INTO Notification VALUES (4, 4, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'mandatory');

INSERT INTO Notification VALUES (5, 5, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'optional');

INSERT INTO Notification VALUES (6, 6, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'mandatory');

INSERT INTO Notification VALUES (7, 7, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'optional');

INSERT INTO Notification VALUES (8, 8, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'mandatory');

INSERT INTO Notification VALUES (9, 9, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'optional');

INSERT INTO Notification VALUES (10, 10, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'mandatory');

INSERT INTO Notification VALUES (11, 11, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'mandatory');

INSERT INTO Notification VALUES (12, 12, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'optional');

INSERT INTO Notification VALUES (13, 13, TO_DATE('2024-02-20', 'YYYY-MM-DD'), 'mandatory');

INSERT INTO Notification VALUES (14, 14, TO_DATE('2024-02-20', 'YYYY-MM-DD'), 'mandatory');

INSERT INTO Notification VALUES (15, 15, TO_DATE('2024-02-20', 'YYYY-MM-DD'), 'optional');

CREATE TABLE Symptom ( 
    SymptomID NUMBER PRIMARY KEY, 
    EmployeeID NUMBER, 
    DateReported DATE, 
    SymptomType NUMBER, 
 
CONSTRAINT FK_Employee_Symptom 
FOREIGN KEY (EmployeeID) 
REFERENCES Employee(EmployeeID) 
);

INSERT INTO Symptom VALUES (1, 1, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 3);

INSERT INTO Symptom VALUES (2, 2, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 1);

INSERT INTO Symptom VALUES (3, 3, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 2);

INSERT INTO Symptom VALUES (4, 4, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 4);

INSERT INTO Symptom VALUES (5, 5, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 5);

INSERT INTO Symptom VALUES (6, 6, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 3);

INSERT INTO Symptom VALUES (7, 7, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 1);

INSERT INTO Symptom VALUES (8, 8, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 2);

INSERT INTO Symptom VALUES (9, 9, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 4);

INSERT INTO Symptom VALUES (10, 10, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 5);

INSERT INTO Symptom VALUES (11, 11, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 3);

INSERT INTO Symptom VALUES (12, 12, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 1);

INSERT INTO Symptom VALUES (13, 13, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 2);

INSERT INTO Symptom VALUES (14, 14, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 5);

INSERT INTO Symptom VALUES (15, 15, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 5);

INSERT INTO Symptom VALUES (16, 15, TO_DATE('2023-02-23', 'YYYY-MM-DD'), 2);

CREATE TABLE Scan ( 
    ScanID NUMBER PRIMARY KEY, 
    ScanDate DATE, 
    ScanTime NUMBER, 
    EmployeeID NUMBER, 
    Temperature NUMBER, 
 
CONSTRAINT FK_Employee_Scan 
FOREIGN KEY (EmployeeID) 
REFERENCES Employee(EmployeeID) 
);

INSERT INTO Scan VALUES (1, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 8, 1, 98.6);

INSERT INTO Scan VALUES (2, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 12, 2, 99.0);

INSERT INTO Scan VALUES (3, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 9, 3, 98.2);

INSERT INTO Scan VALUES (4, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 11, 4, 99.5);

INSERT INTO Scan VALUES (5, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 10, 5, 98.9);

INSERT INTO Scan VALUES (6, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 8, 6, 98.7);

INSERT INTO Scan VALUES (7, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 12, 7, 99.2);

INSERT INTO Scan VALUES (8, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 9, 8, 98.4);

INSERT INTO Scan VALUES (9, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 11, 9, 99.1);

INSERT INTO Scan VALUES (10, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 10, 10, 98.8);

INSERT INTO Scan VALUES (11, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 8, 11, 98.7);

INSERT INTO Scan VALUES (12, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 12, 12, 99.3);

INSERT INTO Scan VALUES (13, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 9, 13, 98.6);

INSERT INTO Scan VALUES (14, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 11, 14, 99.4);

INSERT INTO Scan VALUES (15, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 10, 15, 98.9);

CREATE TABLE Test ( 
    TestID NUMBER PRIMARY KEY, 
    Location VARCHAR2(50), 
    TestDate DATE, 
    TestTime NUMBER, 
    EmployeeID NUMBER, 
    TestResult VARCHAR2(20), 
 
CONSTRAINT FK_Employee_Test 
FOREIGN KEY (EmployeeID) 
REFERENCES Employee(EmployeeID) 
);

INSERT INTO Test VALUES (1, 'Company Clinic', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 14, 1, 'positive');

INSERT INTO Test VALUES (2, 'Hospital', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 10, 2, 'positive');

INSERT INTO Test VALUES (3, 'Company Clinic', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 15, 3, 'positive');

INSERT INTO Test VALUES (4, 'Hospital', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 12, 4, 'positive');

INSERT INTO Test VALUES (5, 'Company Clinic', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 16, 5, 'positive');

INSERT INTO Test VALUES (6, 'Company Clinic', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 8, 6, 'positive');

INSERT INTO Test VALUES (7, 'Hospital', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 12, 7, 'positive');

INSERT INTO Test VALUES (8, 'Company Clinic', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 9, 8, 'positive');

INSERT INTO Test VALUES (9, 'Hospital', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 11, 9, 'positive');

INSERT INTO Test VALUES (10, 'Company Clinic', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 10, 10, 'positive');

INSERT INTO Test VALUES (11, 'Company Clinic', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 8, 11, 'negative');

INSERT INTO Test VALUES (12, 'Hospital', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 12, 12, 'negative');

INSERT INTO Test VALUES (13, 'Company Clinic', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 9, 13, 'negative');

INSERT INTO Test VALUES (14, 'Hospital', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 11, 14, 'negative');

INSERT INTO Test VALUES (15, 'Company Clinic', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 10, 15, 'negative');

INSERT INTO Test VALUES (16, 'Company Clinic', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 8, 16, 'negative');

INSERT INTO Test VALUES (17, 'Hospital', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 12, 17, 'negative');

INSERT INTO Test VALUES (18, 'Company Clinic', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 9, 18, 'negative');

INSERT INTO Test VALUES (19, 'Hospital', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 11, 19, 'negative');

INSERT INTO Test VALUES (20, 'Company Clinic', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 10, 20, 'negative');

CREATE TABLE Case ( 
    CaseID NUMBER PRIMARY KEY, 
    EmployeeID NUMBER, 
    CaseDate DATE, 
    Resolution VARCHAR2(20), 
 
CONSTRAINT FK_Employee_Case 
FOREIGN KEY (EmployeeID) 
REFERENCES Employee(EmployeeID) 
);

INSERT INTO Case VALUES (1, 2, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'back to work');

INSERT INTO Case VALUES (2, 3, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'deceased');

INSERT INTO Case VALUES (3, 4, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'back to work');

INSERT INTO Case VALUES (4, 7, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'back to work');

INSERT INTO Case VALUES (5, 8, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'deceased');

INSERT INTO Case VALUES (6, 9, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'back to work');

INSERT INTO Case VALUES (8, 11, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'back to work');

INSERT INTO Case VALUES (10, 13, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'back to work');

INSERT INTO Case VALUES (11, 16, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'deceased');

INSERT INTO Case VALUES (7, 10, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'left the company');

INSERT INTO Case VALUES (9, 12, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'left the company');

CREATE TABLE HealthStatus ( 
    HealthStatusID NUMBER PRIMARY KEY, 
    EmployeeID NUMBER, 
    StatusDate DATE, 
    Status VARCHAR2(20), 
 
CONSTRAINT FK_Employee_HealthStatus 
FOREIGN KEY (EmployeeID) 
REFERENCES Employee(EmployeeID) 
);

INSERT INTO HealthStatus VALUES (1, 1, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'well');

INSERT INTO HealthStatus VALUES (2, 2, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'hospitalized');

INSERT INTO HealthStatus VALUES (3, 3, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'well');

INSERT INTO HealthStatus VALUES (4, 4, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'hospitalized');

INSERT INTO HealthStatus VALUES (5, 5, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'sick');

INSERT INTO HealthStatus VALUES (6, 6, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'sick');

INSERT INTO HealthStatus VALUES (7, 7, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'well');

INSERT INTO HealthStatus VALUES (8, 8, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'sick');

INSERT INTO HealthStatus VALUES (9, 9, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'well');

INSERT INTO HealthStatus VALUES (10, 10, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'well');

INSERT INTO HealthStatus VALUES (11, 11, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'well');

INSERT INTO HealthStatus VALUES (12, 12, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'sick');

INSERT INTO HealthStatus VALUES (13, 13, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'well');

INSERT INTO HealthStatus VALUES (14, 14, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'hospitalized');

INSERT INTO HealthStatus VALUES (15, 15, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'sick');

