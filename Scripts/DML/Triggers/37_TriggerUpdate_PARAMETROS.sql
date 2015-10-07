CREATE OR REPLACE TRIGGER beforeUpdate_parametros
       BEFORE UPDATE
       ON GE.PARAMETROS FOR EACH ROW
BEGIN
  :NEW.USUARIO_ULTIMA_MOD:= USER;
  :NEW.FEC_ULTIMA_MOD:= SYSDATE;
END;