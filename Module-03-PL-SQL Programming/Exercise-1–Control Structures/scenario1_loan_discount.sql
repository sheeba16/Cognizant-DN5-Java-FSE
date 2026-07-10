BEGIN
FOR cust_rec IN (SELECT customer_id, age FROM Customers) LOOP
        IF cust_rec.age > 60 THEN
UPDATE Loans
SET interest_rate = interest_rate - (interest_rate * 0.01)
WHERE customer_id = cust_rec.customer_id;
END IF;
END LOOP;
COMMIT;
DBMS_OUTPUT.PUT_LINE('Loan interest discount applied for customers above 60.');
END;
/