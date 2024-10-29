drop function if exists autoNumberto;
delimiter $
create function autoNumberto() returns int
deterministic
begin
	declare x int;
	select max(studentID) into x from student_new;
/*	set @x := @x+1;*/
	return x+1;
end $
delimiter ;
