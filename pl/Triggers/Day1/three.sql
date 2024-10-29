drop procedure if exists p1;
delimiter $
create PROCEDURE p1(in x int,in y int ,out z int,inout z2 int)
BEGIN
	set z:= x+y;
	set z2:=x*y;
end$
delimiter ;
	