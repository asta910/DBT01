drop procedure if exists p1;

delimiter $
create procedure p1(in x int)
begin
	declare count int default 0;
	declare random int default 0;
	declare name VARCHAR(7);
	DECLARE EXIT handler FOR 1318  select 'Wrong number of id'; 

	set random := rand();
	
	
	lo : loop 
		
		
	select cast(CHAR(67) as char ) AS Char_C;
		if count = 6 THEN
			leave lo;
		ELSE
			count := count + 1;
	end loop lo;
	
end$
delimiter ;