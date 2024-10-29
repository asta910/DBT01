drop trigger if exists deleteStudent;
delimiter $
create trigger deleteStudent before delete on student for each row
begin
	insert into student_log  values(old.id,old.namefirst,old.namelast,old.dob,old.emailID); 
end $
delimiter ;