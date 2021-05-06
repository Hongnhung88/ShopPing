<?php 
class C_Mcqueen {
    public function ShowMcQueen()
    {
        # code mcqeen page
        include './models/m_mcqueen.php';
        $m_mcqueen = new M_Mcqueen();
        $dsGiay = $m_mcqueen->LayGiayMcqueen();
        #views
        $views = './views/v_GIAY_MOI.php';
        $carousel = './views/item/vi_carousel.php';
        include './includes/layout.php';
    }
}