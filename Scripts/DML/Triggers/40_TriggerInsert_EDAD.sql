CREATE OR REPLACE TRIGGER beforeInsert_edad
       BEFORE INSERT
       ON GE.edad FOR EACH ROW
BEGIN
  :NEW.USUARIO_CREACION:= USER;
  :NEW.FEC_CREACION:= SYSDATE;
END;
