create or replace procedure INSERT_MASCOTA(pMASCOTA_ID IN NUMBER, PTIPO IN VARCHAR2,FEC_CREACION IN DATE, USUARIO_CREACION IN VARCHAR, FEC_ULTIMA_MOD IN DATE, USUARIO_ULTIMA_MOD IN VARCHAR2  ) is
begin
  INSERT INTO MASCOTA
  VALUES (pMASCOTA_ID,PTIPO,FEC_CREACION , USUARIO_CREACION , FEC_ULTIMA_MOD, USUARIO_ULTIMA_MOD );
  
end INSERT_MASCOTA;
