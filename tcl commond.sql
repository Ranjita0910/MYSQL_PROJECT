create database tcl;
use tcl;

-- tcl:(transaction control language)- these commonds use to manage transaction in the database. these commonds ensure the integrity of data and control the changes made by DML commonds such as insert, update & delete
-- 1)commit
-- 2)rollback
-- 3)savepoint

-- commit: save the all changes made by the transaction permently to the database
-- syntax--              commit;

-- rollback: reverse the all changes made by the currect transaction if hasn't been commited yet
-- syntax--              rollback;

-- savepoint: create a point within a transaction to which you can later roll back
-- syntax--              savepoint savepoint_name;

-- note:sql always in the mode of auto commit

-- example of bank transaction
-- Disable auto-commit
SET AUTOCOMMIT = 0;

-- Start the transaction
START TRANSACTION;

-- Deduct 50 units from Warehouse A
UPDATE inventory SET stock = stock - 50 WHERE warehouse_id = 'A1' AND product_id = 'P001';

-- Add 50 units to Warehouse B
UPDATE inventory SET stock = stock + 50 WHERE warehouse_id = 'B1' AND product_id = 'P001';

-- If no errors, commit the transaction
COMMIT;

-- If any error occurs, rollback the transaction
ROLLBACK;


-- savepoint
-- Step 1: Disable Auto-commit
SET AUTOCOMMIT = 0;

-- Step 2: Start the transaction
START TRANSACTION;

-- Step 3: Reverse the payment
UPDATE payments SET status = 'Refunded' WHERE order_id = 1001;
SAVEPOINT payment_reversed; -- Savepoint after reversing payment

-- Step 4: Update order status
UPDATE orders SET status = 'Refunded' WHERE order_id = 1001;
SAVEPOINT order_updated; -- Savepoint after updating the order status

-- Step 5: Restock the product
UPDATE inventory SET stock = stock + 2 WHERE product_id = 'P123';

-- Simulating an error (uncomment to test rollback to a savepoint)
-- ROLLBACK TO payment_reversed; -- Undo changes after payment reversal
-- ROLLBACK TO order_updated;   -- Undo changes after order status update

-- Step 6: Commit the transaction if all steps succeed
COMMIT;

-- Rollback everything if an unhandled error occurs
--  ROLLBACK;

