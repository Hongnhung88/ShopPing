<?php
include 'database.php';
class M_Register extends database
{
    public function registerAccount($username, $password)
    {
        # code register account for user - customer
        $this->setSql("insert into tblusers(EmailId, Password) values (?,?)");
        return $this->execute([$username, $password]);
    }
    public function checkExistAccount($email)
    {
        # code check exist account 
        $this->setSql("select * from tblusers where EmailId = '".$email."' ");
        return $this->getAllRows();
    }
}
