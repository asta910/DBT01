drop trigger if exists updateStudent;
delimiter $
create trigger updateStudent before update on STUDENT for each row
begin
	IF NEW.EMAILid != OLD.EMAILID THEN 
		insert into STUDENT_LOG values(new.id,new.namefirst,new.namelast,new.dob,new.emailID) ;
	END IF;
end $
delimiter ;