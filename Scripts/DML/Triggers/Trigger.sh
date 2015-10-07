tablas="PAIS CIUDAD GENERO PERSONA FOTO EMAIL COLOR_OJOS COLOR_PELO COLOR_PIEL CONTEXTURA NIVEL_EDUCACION IDIOMA RELIGION ESTADO_CIVIL FUMADOR BEBEDOR FRECUENCIA_EJERCICIO CATEGORIA_OCUPACION OCUPACION SALARIO MASCOTA EJERCICIO CATEGORIA_INTERES INTERES WINK VISITA OCUPACIONXCATEGORIA_OCUPACION INTERESXCATEGORIA_INTERES PERSONA_DISPONIBLE PERSONA_DISPONIBLEXOCUPACION PERSONA_DISPONIBLEXIDIOMA PERSONA_DISPONIBLEXRELIGION PERSONA_DISPONIBLEXMASCOTA PERSONA_DISPONIBLEXEJERCICIO PERSONA_DISPONIBLEXINTERES PERSONA_DISPONIBLEXCOLOR_PELO EVENTO PARAMETROS"

i=0
for tabla in $tablas
do
	cat > ${i}_TriggerInsert_${tabla}.sql <<- END_OF_FILE
	CREATE OR REPLACE TRIGGER beforeInsert_${tabla,,}
	       BEFORE INSERT
	       ON GE.${tabla} FOR EACH ROW
	BEGIN
	  :NEW.USUARIO_CREACION:= USER;
	  :NEW.FEC_CREACION:= SYSDATE;
	END;
	END_OF_FILE
	cat > ${i}_TriggerUpdate_${tabla}.sql <<- END_OF_FILE
	CREATE OR REPLACE TRIGGER beforeUpdate_${tabla,,}
	       BEFORE UPDATE
	       ON GE.${tabla} FOR EACH ROW
	BEGIN
	  :NEW.USUARIO_ULTIMA_MOD:= USER;
	  :NEW.FEC_ULTIMA_MOD:= SYSDATE;
	END;
	END_OF_FILE
	let i+=1
done