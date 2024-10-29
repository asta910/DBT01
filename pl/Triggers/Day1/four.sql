drop procedure if exists p1;

delimiter $
create procedure p1(in x int)
begin
	DECLARE EXIT handler FOR 1318  select 'Wrong number of id'; 
	
end$
delimiter ;