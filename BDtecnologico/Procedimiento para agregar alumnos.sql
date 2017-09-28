use tecnologico;
drop procedure pragregaralumnos;
delimiter $$
create procedure pragregaralumnos(pnocontrol varchar(10), 
	ppaterno varchar(40), pmaterno varchar(40), 
    pnombre varchar(40), pfechanac date, 
    psexo char, pcarrera integer) -- parametros
begin
	insert into alumnos (nocontrol, paterno, materno, nombre,
		fechanac, sexo, carrera)
    values (pnocontrol, ppaterno, pmaterno, pnombre,
		pfechanac, psexo, pcarrera);
        
	commit; -- Termina la transacción 
		-- Consulta los alumnos
end;
$$