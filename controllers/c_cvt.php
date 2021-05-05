<?php 
class C_Cvt {
    public function ShowCvt()
    {
        include './models/m_cvt.php';
        $m_cvt = new M_Cvt();
        $giayCVT = $m_cvt->LayGiayCVT();
        # code cvt page
        $views = './views/v_GIAY_MOI.php';
        $carousel = './views/item/vi_carousel.php';
        include './includes/layout.php';
    }
}