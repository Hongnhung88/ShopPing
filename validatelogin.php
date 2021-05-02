<?php 
session_start(); 
include "connect.php";

if (isset($_POST['email']) && isset($_POST['password'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$email = validate($_POST['email']);
	$password = validate($_POST['password']);

	if (empty($email)) {
		header("Location: login.php?error=Email không được để trống!");
	    exit();
	}else if(empty($password)){
        header("Location: login.php?error=Mật khẩu không được để trống!");
	    exit();
	}else{
		$sql = "SELECT * FROM user WHERE email='$email' AND password='$password'";

		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
            if ($row['email'] === $email && $row['password'] === $password) {
            	$_SESSION['email'] = $row['email'];
            	$_SESSION['password'] = $row['password'];
            	header("Location: index.php");
		        exit();
            }else{
				header("Location: login.php?error=Tên người dùng hoặc mật khẩu không chính xác!");
		        exit();
			}
		}else{
			header("Location: login.php?error=Tên người dùng hoặc mật khẩu không chính xác!");
	        exit();
		}
	}
	
}else{
	header("Location: index.php");
	exit();
}