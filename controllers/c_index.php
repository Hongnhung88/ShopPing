<?php 
include 'c_checklogin.php';
class C_index{
    public function ShowShoseIndex()
    {
        # code show shose index
        #models
        include './models/m_index.php';
        $m_index = new M_Index();
        $giayBanchay = $m_index->LaySanPhamBanChay();
        $giayMoi = $m_index->LaySanPhamMoi();
        # page and item include
        #item 
        $carousel = './views/item/vi_carousel.php';
        #page
        $views = './views/page/vp_index.php';
        $sellmore = './views/v_GiayBanChay.php';
        $newShose ='./views/v_GiayMoi.php';
        $aboutUsIndex = './views/v_aboutUsIndex.php';
        include("./includes/layout.php");
    }
}