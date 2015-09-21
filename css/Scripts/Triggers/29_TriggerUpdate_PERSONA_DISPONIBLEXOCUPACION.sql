CREATE OR REPLACE TRIGGER beforeUpdate_persona_dispxocu
       BEFORE UPDATE
       ON GE.PERSONA_DISPONIBLEXOCUPACION FOR EACH ROW
BEGIN
  :NEW.USUARIO_ULTIMA_MOD:= USER;
  :NEW.FEC_ULTIMA_MOD:= SYSDATE;
END;
