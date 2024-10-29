/* DELETE - track changes */

drop trigger if exists trigger2;
delimiter $

create trigger trigger2 BEFORE DELETE on dept for each ROW
BEGIN
	insert into recycle values(old.deptno,old.dname,old.loc,old.pwd,curdate(),USER());
END $
delimiter ;
