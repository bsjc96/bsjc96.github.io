create or replace procedure INSERT_PER_DISPXINTE(pUSERNAME IN NUMBER,pES_REAL IN VARCHAR2, pINTERES_ID IN VARCHAR2,FEC_CREACION IN DATE, USUARIO_CREACION IN VARCHAR, FEC_ULTIMA_MOD IN DATE, USUARIO_ULTIMA_MOD IN VARCHAR2  ) is
begin
  INSERT INTO PERSONA_DISPONIBLEXINTERES
  VALUES (pUSERNAME,pES_REAL,pINTERES_ID,FEC_CREACION , USUARIO_CREACION , FEC_ULTIMA_MOD, USUARIO_ULTIMA_MOD );
  
end INSERT_PER_DISPXINTE;
