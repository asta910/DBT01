drop PROCEDURE if EXISTS proc;
delimiter $
create procedure proc(in i int)
BEGIN
	declare y int default 0;
	l:LOOP
	
	IF	y<i THEN
	SELECT y ;
	set y := y + 1;
	
	ELSE
		leave l;
	End IF;
		end  loop l;
end$
delimiter ;
	
	
	