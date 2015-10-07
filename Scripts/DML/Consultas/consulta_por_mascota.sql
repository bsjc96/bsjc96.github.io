CREATE OR REPLACE PROCEDURE PERSONAS_POR_MASCOTA(pMASCOTA IN MASCOTA.TIPO%TYPE, P_RECORDSET OUT SYS_REFCURSOR)
AS
BEGIN
  OPEN P_RECORDSET FOR
SELECT PERSONA_DISPONIBLE.USERNAME,
  PERSONA.NOMBRE AS NOMBRE,
  PERSONA.PRIMER_APELLIDO AS PRIMER_APELLIDO,
  PERSONA.SEGUNDO_APELLIDO AS SEGUNDO_APELLIDO,
  GENERO.NOMBRE              AS GENERO,
  RELIGION.NOMBRE AS RELIGION,
  SALARIO.RANGO AS SALARIO,
  OCUPACION.NOMBRE AS OCUPACI�N,
  ESTADO_CIVIL.NOMBRE      AS ESTADO_CIVIL,
  INTERES.NOMBRE AS INTERES,
  MASCOTA.TIPO             AS MASCOTA,
  CONTEXTURA.TIPO          AS CONTEXTURA,
  BEBEDOR.TIPO AS BEBEDOR,
  IDIOMA.NOMBRE            AS IDIOMA,
  COLOR_PIEL.NOMBRE        AS COLOR_DE_PIEL,
  COLOR_PELO.NOMBRE       AS COLOR_DE_PELO,
  COLOR_OJOS.NOMBRE        AS COLOR_DE_OJOS,
  PERSONA_DISPONIBLE.ALTURA AS ALTURA,
  PERSONA_DISPONIBLE.PESO AS PESO,
  PERSONA_DISPONIBLE.NUM_HIJOS AS NUM_HIJOS,
  PERSONA_DISPONIBLE.QUIERE_HIJOS AS QUIERE_HIJOS,
  EJERCICIO.NOMBRE AS EJERCICIO,
  NIVEL_EDUCACION.GRADO AS GRADO,
  FUMADOR.TIPO               AS FUMADOR,
  CATEGORIA_OCUPACION.NOMBRE AS CAT_OCUPACION,
  CIUDAD.NOMBRE  AS CIUDAD,
  PAIS.NOMBRE      AS PA�S,
  PERSONA.SLOGAN AS SLOGAN,
  FOTO.NOMBRE              AS FOTO

FROM PERSONA_DISPONIBLE
left outer JOIN SALARIO
ON SALARIO.SALARIO_ID = PERSONA_DISPONIBLE.SALARIO_ID
left outer JOIN BEBEDOR
ON BEBEDOR.BEBEDOR_ID = PERSONA_DISPONIBLE.BEBEDOR_ID
left outer JOIN COLOR_OJOS
ON COLOR_OJOS.COLOR_OJOS_ID = PERSONA_DISPONIBLE.COLOR_OJOS_ID
left outer JOIN COLOR_PIEL
ON COLOR_PIEL.COLOR_PIEL_ID = PERSONA_DISPONIBLE.COLOR_PIEL_ID
left outer JOIN CONTEXTURA
ON CONTEXTURA.CONTEXTURA_ID = PERSONA_DISPONIBLE.CONTEXTURA_ID
left outer JOIN ESTADO_CIVIL
ON ESTADO_CIVIL.ESTADO_CIVIL_ID = PERSONA_DISPONIBLE.ESTADO_CIVIL_ID
left outer JOIN FUMADOR
ON FUMADOR.FUMADOR_ID = PERSONA_DISPONIBLE.FUMADOR_ID
left outer JOIN NIVEL_EDUCACION
ON NIVEL_EDUCACION.NIVEL_EDUCACION_ID = PERSONA_DISPONIBLE.NIVEL_EDUCACION_ID
left outer JOIN PERSONA
ON PERSONA.USERNAME = PERSONA_DISPONIBLE.USERNAME
left outer JOIN FOTO
ON PERSONA.USERNAME = FOTO.USERNAME
left outer JOIN GENERO
ON PERSONA.GENERO_ID = GENERO.GENERO_ID
left outer JOIN CIUDAD
ON PERSONA.CIUDAD_ID = CIUDAD.CIUDAD_ID
left outer JOIN PAIS
ON PAIS.PAIS_ID = CIUDAD.PAIS_ID
left outer JOIN FRECUENCIA_EJERCICIO
ON FRECUENCIA_EJERCICIO.FRECUENCIA_EJERCICIO_ID = PERSONA_DISPONIBLE.FRECUENCIA_EJERCICIO_ID
left outer JOIN RELIGION
ON RELIGION.RELIGION_ID = PERSONA_DISPONIBLE.RELIGION_ID


left outer JOIN OCUPACION
ON OCUPACION.OCUPACION_ID = PERSONA_DISPONIBLE.OCUPACION_ID
left outer JOIN MASCOTA
ON MASCOTA.MASCOTA_ID = PERSONA_DISPONIBLE.MASCOTA_ID
left outer JOIN EJERCICIO
ON EJERCICIO.EJERCICIO_ID = PERSONA_DISPONIBLE.EJERCICIO_ID

left outer JOIN INTERES
ON INTERES.INTERES_ID = PERSONA_DISPONIBLE.INTERES_ID
left outer JOIN CATEGORIA_OCUPACION
ON CATEGORIA_OCUPACION.CATEGORIA_OCUPACION_ID = persona_disponible.categoRia_ocupacion
left outer JOIN IDIOMA
ON IDIOMA.IDIOMA_ID = PERSONA_DISPONIBLE.IDIOMA_ID
left outer JOIN COLOR_PELO
ON color_pelo.color_pelo_id = PERSONA_DISPONIBLE.COLOR_PELO_ID

WHERE MASCOTA.TIPO = pMASCOTA;
END PERSONAS_POR_MASCOTA;
