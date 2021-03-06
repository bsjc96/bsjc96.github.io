CREATE OR REPLACE PROCEDURE PERSONAS_POR_CIUDAD
(
  pCIUDAD_ID IN PERSONA.CIUDAD_ID%TYPE,
  p_recordset OUT SYS_REFCURSOR
) AS
BEGIN
  OPEN p_recordset FOR
SELECT COUNT(PERSONA.CIUDAD_ID) AS "Personas por ciudad",
       ciudad.nombre
       
FROM PERSONA
INNER JOIN CIUDAD
ON PERSONA.CIUDAD_ID = CIUDAD.CIUDAD_ID

WHERE CIUDAD.CIUDAD_ID = pCIUDAD_ID
GROUP BY CIUDAD.NOMBRE;

END PERSONAS_POR_CIUDAD;

