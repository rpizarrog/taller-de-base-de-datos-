/* Creación de BD y tablas de tecnologico */
drop database tecnologico; -- Elimina base de datos cuando Exista

create database tecnologico; -- Crear BD
use tecnologico; -- Poner en uso , trarle a memoria
/* Crear tablas, camnpos y llaves priamruas y foráneas */


create table carreras
(
	clave integer,
    nombre varchar(50),
    primary key(clave)
);

create table materias
(
	clave varchar(6),
    nombre varchar(50),
    primary key(clave)
);


create table materiascarreras
(
	clavecarrera integer,
    clavemateria varchar(6),
    
    PRIMARY KEY (clavecarrera, clavemateria),
    
    constraint FOREIGN KEY (clavecarrera) 
		references carreras (clave),
        
	constraint FOREIGN KEY (clavemateria) 
		references materias (clave)
        
);



create table alumnos
(
	nocontrol varchar(10),
    paterno varchar(40), 
    materno varchar(40),
    nombre varchar(40),
    sexo char,
    fechanac date,
	carrera integer,
    primary key (nocontrol),
    
    constraint FOREIGN KEY (carrera)
		references carreras (clave)
);

create table maestros
(
	rfc varchar(13),
    nombrecompleto varchar(100),
    profesion varchar(50),
    
    primary key(rfc)
);


