drop trigger if exists insertDuplicate;
delimiter $
create trigger insertDuplicate before insert on STUDENT for each row
begin
	insert into STUDENT_LOG values(new.id,new.namefirst,new.namelast,new.dob,new.emailID) ;
end $
delimiter ;
