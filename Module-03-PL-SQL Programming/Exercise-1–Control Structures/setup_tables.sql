CREATE TABLE Customers (
                           customer_id NUMBER PRIMARY KEY,
                           name VARCHAR2(50),
                           age NUMBER,
                           balance NUMBER,
                           is_vip CHAR(1) DEFAULT 'N'
);

CREATE TABLE Loans (
                       loan_id NUMBER PRIMARY KEY,
                       customer_id NUMBER,
                       interest_rate NUMBER,
                       due_date DATE,
                       FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Customers VALUES (1, 'Ravi Kumar', 65, 5000, 'N');
INSERT INTO Customers VALUES (2, 'Anita Sharma', 45, 12000, 'N');
INSERT INTO Customers VALUES (3, 'Suresh Rao', 70, 8000, 'N');

INSERT INTO Loans VALUES (101, 1, 8.5, SYSDATE + 15);
INSERT INTO Loans VALUES (102, 2, 7.0, SYSDATE + 40);
INSERT INTO Loans VALUES (103, 3, 9.0, SYSDATE + 20);

COMMIT;