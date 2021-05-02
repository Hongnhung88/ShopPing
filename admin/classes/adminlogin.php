<?php
include '../lib/session.php';
session::checkLogin();
include '../lib/database.php';
include '../helpers/format.php';

class adminlogin
{ private $db;
    private $fm; //format
    public function _construct()
    {
        $this->db = new Database();
        $this->fm = new Format();
    }

    public function adminlogin($adminUser,$adminPass)
    {
        $adminUser =$this->fm->validation($adminUser);
        $adminPass =$this->fm->validation($adminPass);
        $adminUser = mysqli_real_escape_string($this->db->link,$adminUser);
        $adminPass = mysqli_real_escape_string($this->db->link,$adminPass);
        if(empty($adminUser) || empty($adminPass)){
            $alert = " khon duoc de trong";

        }else{
            $query ="SELECT * FORM tbl_admin WHERE adminUser = '$adminUser' AND adminPass = '$adminPass'LIMIT 1";
            $result = $this ->db->select($query);
            if($result !== false){
                $value = $result ->fecth_assoc();
                session::set('adminlogin',true);
                session::set('adminId',$value('adminID'));
                session::set('adminUser',$value('adminUser'));
                session::set('adminName',$value('adminName'));
                header('index.php');

            }else{
                $alert = " sai mat khau";
            }
        }
    }

}