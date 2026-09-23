DELIMITER $$
CREATE PROCEDURE sp_check_order_value ( IN tong_tien INT)
BEGIN
	DECLARE thong_bao VARCHAR(100);
	IF tong_tien >= 5000000 THEN
		SET thong_bao = 'Đơn hàng giá trị cao';
	ELSEIF tong_tien < 5000000 THEN
		SET thong_bao = 'Đơn hàng bình thường';
	END IF;
    SELECT thong_bao;
END $$

DELIMITER ; 

CALL sp_check_order_value(6000000);
CALL sp_check_order_value(4000000);