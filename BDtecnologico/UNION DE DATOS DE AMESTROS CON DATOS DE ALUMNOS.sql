-- 	UNION DE DATOS DE MAESTROS CON DATOS DE ALUMNOS
select rfc as id, nombrecompleto, 'M' as clasifica, profesion 
 from maestros
union
select nocontrol as id, concat(paterno, ' ', materno, ' ', alumnos.nombre) 
	as nombrecompleto,
	'A' as clasifica, carreras.nombre as profesion
	from alumnos
    join carreras on alumnos.carrera = carreras.clave;
    