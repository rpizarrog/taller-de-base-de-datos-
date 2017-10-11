select alumnos.nocontrol, alumnos.fechanac, alumnos.nombre,
	carreras.clave, carreras.nombre
    from alumnos, carreras
   where alumnos.carrera = carreras.clave
   order  by carreras.clave, alumnos.nocontrol;
   
/*usando JOIN */
select alumnos.nocontrol, alumnos.fechanac, alumnos.nombre,
	carreras.clave, carreras.nombre
    from alumnos 
    join carreras on alumnos.carrera = carreras.clave
    order  by carreras.clave, alumnos.nocontrol;
   