CREATE OR REPLACE TRIGGER beforeUpdate_nivel_educacion
       BEFORE UPDATE
       ON GE.NIVEL_EDUCACION FOR EACH ROW
BEGIN
  :NEW.USUARIO_ULTIMA_MOD:= USER;
  :NEW.FEC_ULTIMA_MOD:= SYSDATE;
END;