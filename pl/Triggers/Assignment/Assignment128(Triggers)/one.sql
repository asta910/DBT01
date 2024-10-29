

DROP TRIGGER IF EXISTS insertStudent;
DELIMITER $
create trigger insertStudent before insert on STUDENT FOR EACH ROW
BEGIN
	INSERT into log (currentDate, currentTime, message)
	VALUES (CURDATE(), CURTIME(), "Record inserted successfully");
END $
DELIMITER ;


