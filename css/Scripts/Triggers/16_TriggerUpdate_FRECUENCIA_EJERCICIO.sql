CREATE OR REPLACE TRIGGER beforeUpdate_frec_ejercicio
       BEFORE UPDATE
       ON GE.FRECUENCIA_EJERCICIO FOR EACH ROW
BEGIN
  :NEW.USUARIO_ULTIMA_MOD:= USER;
  :NEW.FEC_ULTIMA_MOD:= SYSDATE;
END;
