create or replace procedure INSERT_COLOR_OJOS(pCOLOR_OJOS_ID IN NUMBER, NOMBRE IN VARCHAR2,FEC_CREACION IN DATE, USUARIO_CREACION IN VARCHAR, FEC_ULTIMA_MOD IN DATE, USUARIO_ULTIMA_MOD IN VARCHAR2  ) is
begin
  INSERT INTO COLOR_OJOS
  VALUES (pCOLOR_OJOS_ID,NOMBRE,FEC_CREACION , USUARIO_CREACION , FEC_ULTIMA_MOD, USUARIO_ULTIMA_MOD );

end INSERT_COLOR_OJOS;
