use tecnologico;
drop procedure prlistarcarreras;

delimiter $$
create procedure prlistarcarreras ()
begin
	select * from carreras;
		
end;
$$

