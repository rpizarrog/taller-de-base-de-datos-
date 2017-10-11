/* Funciones de agregado */
-- Conagr registros
select count(*) as cuantos from alumnos -- Contar registros
union 
select count(*) as cuantos from carreras; -- Contar registro

-- Función de agregado count combinado con group by
select carrera, carreras.nombre, count(*) as cuantos 
	from alumnos, carreras
    where alumnos.carrera = carreras.clave -- join natural
	group by carrera, carreras.nombre
 order by carrera;
 
 
 /*Cuantas materias hay por cada carrera, 
mostrar los nombres de cada carrera */
select materiascarreras.clavecarrera, carreras.nombre, count(*)
	from materiascarreras 
    join carreras on materiascarreras.clavecarrera = carreras.clave
    group by materiascarreras.clavecarrera, carreras.nombre
    order by clavecarrera;
 
 
 
 
 
 
 
 