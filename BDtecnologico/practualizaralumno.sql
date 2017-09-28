use tecnologico;
-- drop procedure practualizaralumno;
delimiter $$
create procedure practualizaralumno(pnocontrol varchar(10), 
	ppaterno varchar(40), pmaterno varchar(40), 
    pnombre varchar(40), pfechanac date, 
    psexo char, pcarrera integer)
begin
	update alumnos
		set paterno = ppaterno, materno = pmaterno,
			nombre = pnombre, fechanac = pfechanac,
            sexo = psexo, carrera = pcarrera
		where nocontrol = pnocontrol;
        
	commit;
end;
$$

