CREATE OR REPLACE TRIGGER beforeUpdate_color_pelo
       BEFORE UPDATE
       ON GE.COLOR_PELO FOR EACH ROW
BEGIN
  :NEW.USUARIO_ULTIMA_MOD:= USER;
  :NEW.FEC_ULTIMA_MOD:= SYSDATE;
END;
