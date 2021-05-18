<?php
session_start();
include '../models/m_Register.php';
$m_register = new M_Register();
if (isset($_POST["email"])) {
	//lấy thông tin từ các form bằng phương thức POST
	$email = $_POST['email'];
	$password = $_POST['password'];
	$cfpassword = $_POST['cfpassword'];

	// kiem tra cac dieu kien cho phep dang ky 
	if ($password == null || $cfpassword == null) {
		header("Location: /ShopPing/register.php?error=Email không được để trống!");
	} else if ($password == $cfpassword && $password) {
		// kiem tra email ton tai
		$exist = $m_register->checkExistAccount($email);
		if (!$exist) {
			$a = $m_register->registerAccount($email, $password);
			if ($a) {
				$_SESSION['username'] = $email;
				header("Location: /ShopPing/index.php");
			}
		}else{
			header("Location: /ShopPing/register.php?error=Email đã được sử dụng vui lòng sử dụng email khác hoặc đăng nhập với tài khoản đã có!");
		}
	}
	// them dieu kien kiem tra dang ky
	// else if (){

	// }
	// 
	else {
		header("Location: /ShopPing/register.php?error=Xác nhận mật khẩu không khớp!");
	}
}
