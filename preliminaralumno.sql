use tecnologico;
drop procedure preliminaralumno;
delimiter $$
create procedure preliminaralumno(pnocontrol varchar(10))
begin
	delete from alumnos
		where nocontrol = pnocontrol;
        
	commit;
end;
$$

