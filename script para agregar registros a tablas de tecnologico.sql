-- 1 carreras
-- 2 materias
-- 3 materiascarreras
-- 4 alumnos
-- 5 maestros

-- Agregar registros
use tecnologico;


-- AGREGAR UNA CARRERA NUEVA
insert into carreras (clave, nombre)
	values (999, 'AERONAUTICA');
select * from carreras;


-- AGREGAR UNA NUEVA MATERIA DE ESA CARRERA
insert into materias (clave, nombre)
	values ('A1', 'INTRODUCCION A LA AERONAUTICA');
select * from materias;    


-- AGREGAR UNA NUEVA MATERIA A LA CARRERA QUE AGREGAMOS
insert into materiascarreras (clavecarrera, clavemateria)
	values (999, 'A1');
select * from materiascarreras;


-- AGREGAR UN ALUMNO A CARRERA DE AERONAUTICA
insert into alumnos (nocontrol, paterno, materno, nombre, 
	sexo, fechanac, carrera)
	values ('10041112', 'RUIZ', 'GOMEZ', 'ARACELY', 
    'F', '1992-06-15', 999);
select * from alumnos;

-- Agregar otro alumno de otra carrera
select * from alumnos;
insert into alumnos (nocontrol, paterno, materno, nombre, 
	sexo, fechanac, carrera)
	values ('10042020', 'JUAREZ', 'LOPEZ', 'ADRIANA', 
    'F', '1990-04-20', 300);

-- AGREGAR UN NUEVO MAESTRO
insert into maestros (rfc, nombrecompleto, profesion)
	values ('PEGO', 'PEREZ GONZALEZ OLGA', 'PILOTO AVIADOR');

select * from maestros;



    




    
    
    


