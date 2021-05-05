<?php 
class C_Nikef1 {
    public function ShowNikef1()
    {
        include './models/m_nikef1.php';
        $m_nikef1 = new M_Nikef1();
        $dsGiay = $m_nikef1->LayGiayNikef1();
        # code nikef1 page
        $views = './views/v_GIAY_MOI.php';
        $carousel = './views/item/vi_carousel.php';
        include './includes/layout.php';
    }
}