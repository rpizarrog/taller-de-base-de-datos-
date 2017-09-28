use tecnologico;
drop procedure prconsalumcarreras;

delimiter $$
create procedure prconsalumcarreras(arg int)
begin
	select nocontrol, paterno, materno, nombre,
		sexo, fechanac, carrera
		from alumnos
        where carrera = arg;
		-- Consulta los alumnos
        -- de una cualquier clave de carrera
end;
$$

