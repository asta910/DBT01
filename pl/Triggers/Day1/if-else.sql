drop procedure if exists p1;

delimiter $
create procedure p1(in x int)
begin
	DECLARE EXIT handler FOR 1318  select 'Wrong number of inputs' as status; 
	if x=100 then
		select "good";
	else
		select "not good";
	end if;
end$
delimiter ;