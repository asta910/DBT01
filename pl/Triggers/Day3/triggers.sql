/* UPDATE - track changes */
drop trigger if exists trigger1;
delimiter $
create trigger trigger1 BEFORE UPDATE on dept for each ROW
BEGIN
	insert into change_tracker values(old.deptno,old.dname,new.dname,old.loc,new.loc);
END $
delimiter ;
