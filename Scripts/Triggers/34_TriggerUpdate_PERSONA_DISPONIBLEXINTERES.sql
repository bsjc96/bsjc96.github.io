CREATE OR REPLACE TRIGGER beforeUpdate_per_dispxinteres
       BEFORE UPDATE
       ON GE.PERSONA_DISPONIBLEXINTERES FOR EACH ROW
BEGIN
  :NEW.USUARIO_ULTIMA_MOD:= USER;
  :NEW.FEC_ULTIMA_MOD:= SYSDATE;
END;
