CREATE OR REPLACE TRIGGER trg_decrement_inventory
AFTER INSERT ON order_items
FOR EACH ROW
BEGIN
    IF (SELECT inventory_count FROM products WHERE product_id = :NEW.product_id) < :NEW.quantity THEN
        RAISE_APPLICATION_ERROR(-20001, 'Insufficient inventory for product ' || :NEW.product_id);
    END IF;

    UPDATE products
    SET inventory_count = inventory_count - :NEW.quantity,
        updated_at = SYSDATE
    WHERE product_id = :NEW.product_id;
END;
/