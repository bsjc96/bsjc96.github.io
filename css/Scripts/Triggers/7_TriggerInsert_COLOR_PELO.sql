CREATE OR REPLACE TRIGGER beforeInsert_color_pelo
       BEFORE INSERT
       ON GE.COLOR_PELO FOR EACH ROW
BEGIN
  :NEW.USUARIO_CREACION:= USER;
  :NEW.FEC_CREACION:= SYSDATE;
END;
