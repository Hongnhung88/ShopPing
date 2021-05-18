<?php
session_start();
include '../models/m_Register.php';
$m_register = new M_Register();
if (isset($_POST["email"])) {
	//lấy thông tin từ các form bằng phương thức POST
	$email = validate($_POST['email']);
	$password = validate($_POST['password']);
	$cfpassword = validate($_POST['cfpassword']);

	// kiem ta cac dieu kien cho phep dang ky 
	if ($password == $cfpassword) {
		echo 'mat khau khop voi nhap lai mat khau';
	} else {
		echo 'khong khop mat khau';
	}
}
