

DROP function IF EXISTS sumSalary;

DELIMITER $

create function sumSalary(num int) returns int
deterministic
BEGIN
	declare x int; 
	select sum(sal) into x from EMP where DEPTNO = num;
	
	return x;
END $
DELIMITER ;


