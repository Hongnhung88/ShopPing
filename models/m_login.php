<?php
include 'database.php';
class M_Login extends database{
    public function DangNhap(string $email, string $password)
    {
        # code for check login
        $this->setSql("select * from tblusers where EmailId = '".$email."' and Password = '".$password."'");
        return $this->getAllRows();
    }
}
