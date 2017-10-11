
select sum(creditos), count(*), avg(creditos) from materias
	where creditos = 6;    


-- Conocer las suma de creditos de todas las materias

select 'materias con creditos =',creditos, 
	sum(creditos), count(*)
	from materias
    group by creditos;     


/* Conocer cuantos créditos tienen las materias de una carrera */
select carreras.clave, carreras.nombre, 
	sum(creditos) as creditos-- materias.clave, materias.nombre, creditos
	from carreras
    join materiascarreras 
		on carreras.clave = materiascarreras.clavecarrera
	join materias	
		on materiascarreras.clavemateria = materias.clave
	-- and carreras.clave = '100'
    group by carreras.clave, carreras.nombre;
    
    
    
    
    
    
    
    
    
    