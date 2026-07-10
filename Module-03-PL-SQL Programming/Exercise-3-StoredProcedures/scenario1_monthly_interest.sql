CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest AS
BEGIN
UPDATE SavingsAccounts
SET balance = balance + (balance * 0.01);

COMMIT;
DBMS_OUTPUT.PUT_LINE('Monthly interest applied to all savings accounts.');
END;
/

-- To test:
SET SERVEROUTPUT ON;
BEGIN
    ProcessMonthlyInterest;
END;
/