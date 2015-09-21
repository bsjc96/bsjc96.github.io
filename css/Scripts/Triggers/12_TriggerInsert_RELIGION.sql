CREATE OR REPLACE TRIGGER beforeInsert_religion
       BEFORE INSERT
       ON GE.RELIGION FOR EACH ROW
BEGIN
  :NEW.USUARIO_CREACION:= USER;
  :NEW.FEC_CREACION:= SYSDATE;
END;
