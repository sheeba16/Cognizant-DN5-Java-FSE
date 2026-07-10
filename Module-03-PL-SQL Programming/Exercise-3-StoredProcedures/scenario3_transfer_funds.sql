CREATE OR REPLACE PROCEDURE TransferFunds (
    p_from_account IN NUMBER,
    p_to_account   IN NUMBER,
    p_amount       IN NUMBER
) AS
    v_balance NUMBER;
BEGIN
SELECT balance INTO v_balance
FROM Accounts
WHERE account_id = p_from_account
    FOR UPDATE;

IF v_balance < p_amount THEN
        DBMS_OUTPUT.PUT_LINE('Transfer failed: Insufficient balance in account ' || p_from_account);
ELSE
UPDATE Accounts
SET balance = balance - p_amount
WHERE account_id = p_from_account;

UPDATE Accounts
SET balance = balance + p_amount
WHERE account_id = p_to_account;

COMMIT;
DBMS_OUTPUT.PUT_LINE('Transferred ' || p_amount || ' from account ' ||
            p_from_account || ' to account ' || p_to_account);
END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: Source account not found.');
WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Transfer failed due to an error: ' || SQLERRM);
END;
/

-- To test:
SET SERVEROUTPUT ON;
BEGIN
    TransferFunds(301, 302, 2000);
END;
/