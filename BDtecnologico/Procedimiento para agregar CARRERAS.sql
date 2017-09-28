use tecnologico;
drop procedure pragregarcarreras;
delimiter $$
create procedure pragregarcarreras(pclave integer, 
				pnombre varchar(50)) -- parametros
begin
	insert into carreras (clave, nombre)
    values (pclave, pnombre);
        
	commit; -- Termina la transacción 
		-- Consulta los alumnos
end;
$$