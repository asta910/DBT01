drop function if exists f1;
delimiter $

create function f1() returns int
deterministic
begin
	declare x int;
	SELECT max(ID) + 1 into x from dateTable;
	
	RETURN x;
end $
delimiter ;