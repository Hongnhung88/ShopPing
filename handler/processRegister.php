<?php
session_start();
include '../models/m_Register.php';
	if (isset($_POST["email"])) {
		//lấy thông tin từ các form bằng phương thức POST
		$email = $_POST["email"];
		$password = $_POST["password"];
		$cfpassword = $_POST["cfpassword"];
		$m_register = new M_Register();
		//Kiểm tra điều kiện bắt buộc đối với các ô không được bỏ trống
		if ($email == null || $password == null || $cfpassword == null) {
			echo "bạn vui lòng nhập đầy đủ thông tin";
		}else {
			//thực hiện việc lưu trữ dữ liệu vào db
                $_SESSION['username'] = $login[0]->username;
                print_r($_SESSION['username']);
                header("Location: /ShopPing/index.php");
	}