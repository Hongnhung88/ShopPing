<?php 
class C_Login {
    public function ShowLogin()
    {
        # test 
        include './models/m_login.php';
        $m_login = new M_Login();
        $login = $m_login->DangNhap('admin','admin');
        # code login page
        $views = './views/page/vp_login.php';
        include './includes/layout.php';
    }
}