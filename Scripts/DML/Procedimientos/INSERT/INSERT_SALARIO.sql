create or replace procedure INSERT_SALARIO(pSALARIO_ID IN NUMBER, pRANGO IN VARCHAR2,FEC_CREACION IN DATE, USUARIO_CREACION IN VARCHAR, FEC_ULTIMA_MOD IN DATE, USUARIO_ULTIMA_MOD IN VARCHAR2  ) is
begin
  INSERT INTO SALARIO
  VALUES (pSALARIO_ID,pRANGO,FEC_CREACION , USUARIO_CREACION , FEC_ULTIMA_MOD, USUARIO_ULTIMA_MOD );
  
end INSERT_SALARIO;
