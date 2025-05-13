-- ✅ Automatically grant artisan certification after training completion

-- Drop trigger if it exists (Oracle-style)
BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER trg_grant_cert';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -4080 THEN -- Trigger does not exist
            RAISE;
        END IF;
END;
/

-- Create the trigger
CREATE OR REPLACE TRIGGER trg_grant_cert
BEFORE UPDATE ON training_enrollments
FOR EACH ROW
WHEN (OLD.completed = 'N' AND NEW.completed = 'Y')
BEGIN
    -- Grant certification only if not already granted
    IF :NEW.certification_granted = 'N' THEN
        :NEW.certification_granted := 'Y';
    END IF;
END;
/
