DELIMITER $$
	CREATE PROCEDURE sp_check_employee_income ( IN ten_nhan_vien VARCHAR (100),
												IN	muc_luong INT)
		BEGIN
		DECLARE muc_thu_nhap VARCHAR (100);
                IF muc_luong >= 15000000 THEN
					SET muc_thu_nhap = 'Thu nhập cao';
				ELSEIF muc_luong >= 8000000 AND muc_luong < 15000000 THEN
					SET muc_thu_nhap = 'Thu nhập trung bình';
				ELSEIF muc_luong < 8000000 THEN
					SET muc_thu_nhap = 'Thu nhập thấp';
				END IF;
                SELECT ten_nhan_vien,
						muc_thu_nhap;
		END $$				
DELIMITER ;

CALL sp_check_employee_income('Nguyen Van An', 16000000);