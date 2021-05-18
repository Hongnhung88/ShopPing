<?php
include 'database.php';
class M_Login extends database{
    public function DangNhap(string $email, string $password)
    {
        # code for check login
        $this->setSql("select * from tbladmin a where a.email = '".$email."' and a.password = '".$password."'");
        return $this->getAllRows();
    }
}
?>