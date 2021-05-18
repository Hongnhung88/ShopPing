<?php
session_start();
include '../models/m_login.php';
$email = $_POST['email'];
$password = $_POST['password'];
if ($email == null && $password == null) {
    header("Location: /ShopPing/login.php?error=Email hoặc mật khẩu không được để trống!");
}
$m_login = new M_Login();
$login = $m_login->DangNhap($email, $password);
if (count($login) == 1) {
    $_SESSION['username'] = $login[0]->username;
    print_r($_SESSION['username']);
    header("Location: /ShopPing/index.php");
} else {
    header("Location: /ShopPing/login.php?error=Email hoặc mật khẩu sai!");
}
