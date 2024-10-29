drop function if exists f1;
delimiter $
create function p1() returns int
begin
	declare commRate double;
	declare sal int;
	declare bonus int;
	declare total int;
	
	/*
	select rate into commRate from bonus where ID = (select bonusID from emp limit 1);
	select sal into sal from emp limit 1;
	
	IF commRate IS NULL THEN
        commRate := 0;
    END IF;
	*/
	
	
    -- Get commission rate from bonus table
    SELECT rate INTO commRate 
    FROM bonus 
    WHERE ID = (SELECT bonusID FROM emp LIMIT 1);
    
    -- Get salary from emp table
    SELECT sal INTO sal 
    FROM emp 
    LIMIT 1;

    -- Check if commRate is NULL and set it to 0 if so
    IF commRate IS NULL THEN
        commRate := 0;
    END IF;
	
	SET bonus := commRate * sal;  
    SET total := bonus + sal; 
	
	RETURN total;
end $
delimiter ;

/*
DROP FUNCTION IF EXISTS p1;  -- Drop function p1 if it exists
DELIMITER $$
CREATE FUNCTION p1() RETURNS INT
BEGIN
    DECLARE commRate DOUBLE;
    DECLARE sal INT;
    DECLARE bonus INT;
    DECLARE total INT;

    -- Get commission rate from bonus table
    SELECT rate INTO commRate 
    FROM bonus 
    WHERE ID = (SELECT bonusID FROM emp LIMIT 1);
    
    -- Get salary from emp table
    SELECT sal INTO sal 
    FROM emp 
    LIMIT 1;

    -- Check if commRate is NULL and set it to 0 if so
    IF commRate IS NULL THEN
        commRate := 0;
    END IF;

    -- Calculate bonus and total
    SET bonus := commRate * sal;  
    SET total := bonus + sal; 

    RETURN total;  -- Return total compensation
END$$

DELIMITER ;  -- Reset delimiter to default
*/