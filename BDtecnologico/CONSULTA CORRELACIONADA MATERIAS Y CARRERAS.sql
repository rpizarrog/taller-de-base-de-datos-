/* consultar materias de todas las carreras */
select materias.clave, materias.nombre,
	carreras.clave, carreras.nombre,
    materiascarreras.clavecarrera, materiascarreras.clavecarrera
	from materias, carreras, materiascarreras
		where materias.clave = materiascarreras.clavemateria
			and carreras.clave = materiascarreras.clavecarrera
	order by carreras.clave, materias.clave;
    
/* utilizando JOIN */
select materias.clave, materias.nombre,
	carreras.clave, carreras.nombre,
    materiascarreras.clavecarrera, materiascarreras.clavecarrera
    from materias	
    JOIN materiascarreras on materias.clave = materiascarreras.clavemateria
    JOIN carreras on carreras.clave = materiascarreras.clavecarrera
	order by carreras.clave, materias.clave;