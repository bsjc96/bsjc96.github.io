CREATE OR REPLACE TRIGGER beforeInsert_per_dispxinteres
       BEFORE INSERT
       ON GE.PERSONA_DISPONIBLEXINTERES FOR EACH ROW
BEGIN
  :NEW.USUARIO_CREACION:= USER;
  :NEW.FEC_CREACION:= SYSDATE;
END;
