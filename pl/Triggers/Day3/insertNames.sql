/* INSERT - name changer */

drop trigger if exists trigger3;
delimiter $

create trigger trigger3 BEFORE INSERT on dept for each ROW
BEGIN
	set new.dname = concat(UCASE(substring(new.dname,1,1)), LCASE(substring(new.dname,2)));
END $
delimiter ;
