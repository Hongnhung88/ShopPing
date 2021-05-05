<?php 
class C_Boost {
    public function ShowBoost()
    {
        include './models/m_boost.php';
        $m_boost = new M_Boost();
        $dsGiay = $m_boost->LayGiayBoost();
        # code boost page
        $views = './views/v_GIAY_MOI.php';
        $carousel = './views/item/vi_carousel.php';
        include './includes/layout.php';
    }
}