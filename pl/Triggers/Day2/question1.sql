drop procedure if exists p1;
delimiter $
create procedure p1()
begin
	declare _Message varchar(30);
	declare _Date DATE;
	
	set _Message := 'My First PL/SQL program';
	set _Date := CURDATE();
	
	CREATE table if not exists temp(mwssage varchar(30),date DATE);
	INSERT into temp values(_Message,_Date);
	
end $
delimiter ;

 
