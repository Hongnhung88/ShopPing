<?php 
class C_Cvc {
    public function ShowCvc()
    {
        # code cvc page
        include './models/m_cvc.php';
        $m_cvc = new M_Cvc();
        $dsGiay = $m_cvc->LayGiayCVC();
        #view
        $views = './views/v_GIAY_MOI.php';
        $carousel = './views/item/vi_carousel.php';
        include './includes/layout.php';
    }
}