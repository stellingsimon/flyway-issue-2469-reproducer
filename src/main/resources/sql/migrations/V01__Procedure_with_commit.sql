CREATE OR REPLACE PROCEDURE waste_xid(cnt int)
AS $$
DECLARE
    i INT;
    x BIGINT;
BEGIN
    FOR i in 1..cnt LOOP
        x := txid_current();
        COMMIT;
    END LOOP;
END;
$$
    LANGUAGE plpgsql;

CALL waste_xid(10);

