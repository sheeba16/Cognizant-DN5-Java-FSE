CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus (
    p_department  IN VARCHAR2,
    p_bonus_pct   IN NUMBER
) AS
BEGIN
UPDATE Employees
SET salary = salary + (salary * p_bonus_pct / 100)
WHERE department = p_department;

COMMIT;
DBMS_OUTPUT.PUT_LINE('Bonus of ' || p_bonus_pct || '% applied to department: ' || p_department);
END;
/

-- To test:
SET SERVEROUTPUT ON;
BEGIN
    UpdateEmployeeBonus('Sales', 10);
END;
/