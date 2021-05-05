<?php 
class C_Vans {
    public function ShowVans()
    {
        include './models/m_vans.php';
        $m_vans = new M_Vans();
        $dsGiay = $m_vans->LayGiayVans();
        # code Vans page
        $views = './views/v_GIAY_MOI.php';
        $carousel = './views/item/vi_carousel.php';
        include './includes/layout.php';
    }
}