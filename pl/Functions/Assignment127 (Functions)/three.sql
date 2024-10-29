
drop function if exists Log;
delimiter $
create function Log(_email varchar(30)) returns varchar(30)
deterministic
begin
	declare x varchar(30);
	declare ans varchar(50);
	select distinct email into x where email=_email;
	select x;
	if x IS NOT NULL THEN
		 select name into ans from (SELECT distinct CONCAT(uname, password) name FROM login WHERE email = _email) T1;
	ELSE
		set ans='Employee not fount';
	end if;
	return ans;
end $
delimiter ;

/*
DROP FUNCTION IF EXISTS Log;
DELIMITER $$
CREATE FUNCTION Log(_email VARCHAR(30)) RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE x VARCHAR(30);
    DECLARE ans VARCHAR(50);

    -- Correctly select the email into x
    SELECT email INTO x FROM login WHERE email = _email LIMIT 1;

    IF x IS NOT NULL THEN
        -- If email exists, get the username and password
        SELECT CONCAT(uname, password) INTO ans FROM login WHERE email = x;
    ELSE
        -- If email does not exist, set ans to the error message
        SET ans = 'Employee not found';
    END IF;

    RETURN ans;
END $$ 
DELIMITER ;


*/