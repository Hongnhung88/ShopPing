<?php
include 'database.php';
class M_Cvt extends database{
    public function LayGiayCVT()
    {
        # code lay giay cvt
        $this->setSql('select * from tblgiay g where g.idHangGiay = 7');
        return $this->getAllRows();
    }
}
?>