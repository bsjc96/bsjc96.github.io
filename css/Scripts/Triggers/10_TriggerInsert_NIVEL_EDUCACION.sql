CREATE OR REPLACE TRIGGER beforeInsert_nivel_educacion
       BEFORE INSERT
       ON GE.NIVEL_EDUCACION FOR EACH ROW
BEGIN
  :NEW.USUARIO_CREACION:= USER;
  :NEW.FEC_CREACION:= SYSDATE;
END;
