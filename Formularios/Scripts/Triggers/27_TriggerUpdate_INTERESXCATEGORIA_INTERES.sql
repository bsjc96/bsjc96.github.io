CREATE OR REPLACE TRIGGER beforeUpdate_intxcat_int
       BEFORE UPDATE
       ON GE.INTERESXCATEGORIA_INTERES FOR EACH ROW
BEGIN
  :NEW.USUARIO_ULTIMA_MOD:= USER;
  :NEW.FEC_ULTIMA_MOD:= SYSDATE;
END;