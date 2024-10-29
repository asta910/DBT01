drop PROCEDURE if EXISTS p1;
delimiter $
create procedure p1()
BEGIN
	DECLARE x int;
	DECLARE y int;
	declare z int;
	set x:=200;
	set y:=500;
	select x+y as z,x*y as z2;
	
end$
delimiter ;