<?php 
class C_Nikej1 {
    public function ShowNikej1()
    {
        include './models/m_nikej1.php';
        $m_nikej1 = new M_Nikej1();
        $dsGiay = $m_nikej1->LayGiayNikej1();
        # code Nikej1 page
        $views = './views/v_GIAY_MOI.php';
        $carousel = './views/item/vi_carousel.php';
        include './includes/layout.php';
    }
}