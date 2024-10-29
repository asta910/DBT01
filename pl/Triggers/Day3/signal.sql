/* Signal - set_message */
DROP TRIGGER IF EXISTS TRIGGER1;
DELIMITER $ 
CREATE TRIGGER TRIGGER1 BEFORE INSERT ON dateTable FOR EACH ROW;
BEGIN
	IF dayname(NEW.dateEntered) = 'Thursday' THEN
		signal sqlstate '45000' 
		set message_text = 'Cannot enter on thursday stupid..!'; 
	END IF;
END $ 
DELIMITER ;


/* Signal - set_message 
DROP TRIGGER IF EXISTS TRIGGER1;
DELIMITER $$

CREATE TRIGGER TRIGGER1 
BEFORE INSERT ON dateTable 
FOR EACH ROW
BEGIN
    IF DAYNAME(NEW.dateEntered) = 'Thursday' THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Cannot enter on Thursday, stupid..!';
    END IF;
END $$

DELIMITER ;




drop trigger if exists tr1;
delimiter $
create trigger tr1 before insert on dept for each ROW
begin
	if dayname(curdate()) = 'Thursday' then
		signal sqlstate '42000' set message_text = 'Invalid Day';
	end if;
end $
delimiter ;
*/