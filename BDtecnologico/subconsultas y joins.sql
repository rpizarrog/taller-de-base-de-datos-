use tecnologico;

select * from alumnos
	where carrera in 
    (select clave from carreras
		where nombre = 'ARQUITECTURA');
        
select * from  materias	
 where clave in ('M1', 'M10', 'M3', 'M4');  
 
-- Todas las carreras que SI TIENEN ALUMNOS 
select * from carreras
	where clave in (select carrera from alumnos); 
    
-- Todas las carreras que NO TIENEN ALUMNOS 
select * from carreras
	where clave not in (select carrera from alumnos);    
    
-- Las materias que SI están asociadas a alguna carrera
-- Utilizar materiascarreras
select * from materias
where clave in (select clavemateria from materiascarreras);

-- LAS MATERIAS QUE PERTENECEN A LA CARRERA DE ARQUITECTURA
select * from materias
	where clave in (select clavemateria from materiascarreras
		where clavecarrera in (select clave from carreras
			where nombre = 'ARQUITECTURA'));

/* ESTO SE PUEDE HACER USANDO JOINS */
select materias.clave, materias.nombre	
	from materias
    join materiascarreras on materias.clave = materiascarreras.clavemateria
    join carreras on materiascarreras.clavecarrera = carreras.clave
    where carreras.nombre = 'ARQUITECTURA';
    

