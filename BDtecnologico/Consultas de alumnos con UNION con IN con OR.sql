/* Unir datos de alumnos de la carrera 100 con datos 
de alumnos de la carrera 200 y 300 
*/
select * from alumnos
	where carrera = 100
union
select * from alumnos 
	where carrera in (200, 300);
    
/* Esta consulta se puede hacer por utilizando operadores logicos */
select * from alumnos
	where carrera = 100 or carrera = 200 or carrera = 300;
     
/* un solo select con operador IN */
select * from alumnos 
	where carrera in (100, 200, 300);

    
/* solo con uniones e IN */    
select * from alumnos where carrera in (100)
union
select * from alumnos where carrera in (200)
union
select * from alumnos where carrera in (300);

/* Con uniones y condicionales */
select * from alumnos where carrera = 100
union
select * from alumnos where carrera = 200
union
select * from alumnos where carrera = 300;


    
    
    
    