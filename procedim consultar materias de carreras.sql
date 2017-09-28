use tecnologico;
drop procedure prconsmatcarreras;

delimiter $$
create procedure prconsmatcarreras(arg int)
begin
	select materiascarreras.clavemateria,
		nombre, clavecarrera
		from materiascarreras, materias
			where materiascarreras.clavemateria = materias.clave
			and clavecarrera = arg;
		-- Consulta las materias de cualqueir carrera
end;
$$