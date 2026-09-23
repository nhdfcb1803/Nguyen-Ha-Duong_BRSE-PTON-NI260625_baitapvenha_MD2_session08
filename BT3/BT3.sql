DELIMITER $$
CREATE PROCEDURE sp_get_avg_salary()
BEGIN
	DECLARE luong_trung_binh DOUBLE;
	SELECT AVG(luong) INTO luong_trung_binh -- đưa kết quả vào (INTO)
    FROM employees;
    
    SELECT luong_trung_binh;
END $$

DELIMITER ; 
CALL sp_get_avg_salary();