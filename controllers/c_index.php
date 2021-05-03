<?php 
class C_index {
    public function ShowShoseIndex()
    {
        # code show shose index
        # page and item include
        #item 
        $ViewsBanChay = './views/item/vi_giay.php';
        $carousel = './views/item/vi_carousel.php';
        #page
        $views = './views/page/vp_index.php';
        $sellmore = './views/v_GiayBanChay.php';
        $newShose ='./views/v_GiayMoi.php';
        $aboutUsIndex = './views/v_aboutUsIndex.php';
        include("./includes/layout.php");
    }
}