BEGIN
FOR cust_rec IN (SELECT customer_id, balance FROM Customers) LOOP
        IF cust_rec.balance > 10000 THEN
UPDATE Customers
SET is_vip = 'Y'
WHERE customer_id = cust_rec.customer_id;
END IF;
END LOOP;
COMMIT;
DBMS_OUTPUT.PUT_LINE('VIP status updated for eligible customers.');
END;
/