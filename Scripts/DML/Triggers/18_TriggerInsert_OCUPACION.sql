CREATE OR REPLACE TRIGGER beforeInsert_ocupacion
       BEFORE INSERT
       ON GE.OCUPACION FOR EACH ROW
BEGIN
  :NEW.USUARIO_CREACION:= USER;
  :NEW.FEC_CREACION:= SYSDATE;
END;
