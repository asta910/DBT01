drop procedure if exists p1;
delimiter $
create procedure p1(in num1 int,in num2 int)
begin
	declare result DOUBLE;
	
	set result := num1/num2;
	
	select result as division;
	
end $
delimiter ;

 
