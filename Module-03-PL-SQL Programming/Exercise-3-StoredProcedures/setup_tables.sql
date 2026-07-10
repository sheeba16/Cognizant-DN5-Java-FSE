CREATE TABLE SavingsAccounts (
                                 account_id NUMBER PRIMARY KEY,
                                 customer_name VARCHAR2(50),
                                 balance NUMBER
);

CREATE TABLE Employees (
                           emp_id NUMBER PRIMARY KEY,
                           emp_name VARCHAR2(50),
                           department VARCHAR2(30),
                           salary NUMBER
);

CREATE TABLE Accounts (
                          account_id NUMBER PRIMARY KEY,
                          owner_name VARCHAR2(50),
                          balance NUMBER
);

INSERT INTO SavingsAccounts VALUES (1, 'Ravi Kumar', 5000);
INSERT INTO SavingsAccounts VALUES (2, 'Anita Sharma', 12000);
INSERT INTO SavingsAccounts VALUES (3, 'Suresh Rao', 8000);

INSERT INTO Employees VALUES (201, 'Kiran Mehta', 'Sales', 40000);
INSERT INTO Employees VALUES (202, 'Priya Nair', 'Sales', 45000);
INSERT INTO Employees VALUES (203, 'Arjun Das', 'IT', 55000);

INSERT INTO Accounts VALUES (301, 'Ravi Kumar', 10000);
INSERT INTO Accounts VALUES (302, 'Anita Sharma', 3000);

COMMIT;