--liquibase formatted sql
--changeset leonard:2
--comment create active workshops count function
CREATE OR REPLACE FUNCTION active_workshops_count RETURN NUMBER AS
  l_count  NUMBER;
BEGIN
  SELECT COUNT(*)
  INTO   l_count
  FROM   workshops
  WHERE  active = 'Y';

  RETURN l_count;
END;
/

--rollback drop function active_workshops_count;
