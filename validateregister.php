<?php 
session_start(); 
include "connect.php";

if (isset($_POST['email']) && isset($_POST['password']) && isset($_POST['cfpassword'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$email = validate($_POST['email']);
	$password = validate($_POST['password']);
	$cfpassword = validate($_POST['cfpassword']);
	// Validate password strength
	$uppercase = preg_match('@[A-Z]@', $password);
	$lowercase = preg_match('@[a-z]@', $password);
	$number    = preg_match('@[0-9]@', $password);

	if (empty($email)) {
		header("Location: register.php?error=Email không được để trống!");
	    exit();
	}else if(empty($password)){
        header("Location: register.php?error=Mật khẩu không được để trống!");
	    exit();
	}else if(empty($cfpassword)){
        header("Location: register.php?error=Phải xác nhận mật khẩu!");
	    exit();
	}elseif(!$uppercase || !$lowercase||  strlen($password) < 8){
		header("Location: register.php?error=Mật khẩu phải có độ dài tối thiểu 8 ký tự và phải bao gồm ít nhất một chữ cái viết hoa!");
	    exit();
	}
	else if($password  != $cfpassword){
        header("Location: register.php?error=Xác nhận mật khẩu không khớp!");
	    exit();
    }else{
        if(isset($_POST['register'])){
            $email = mysqli_real_escape_string($conn,$_POST['email']);
            $password = mysqli_real_escape_string($conn,$_POST['password']);
            $password = md5($password);
            $sql = "INSERT INTO user(email, password)
            VALUES ('$email', '$password')";
            
            if ($conn->query($sql) === TRUE) {
                header("Location: register.php?success=Tạo tài khoản thành công!");
            } else {
              echo "Error: " . $sql . "<br>" . $conn->error;
            }
            $conn->close();
          }
	}
	
}else{
	header("Location: index.php");
	exit();
}