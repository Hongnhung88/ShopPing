<?php
include 'database.php';
class M_Boost extends database{
    public function LayGiayBoost()
    {
        # code lay giay boost
        $this->setSql('select * from tblgiay g where g.idHangGiay = 3');
        return $this->getAllRows();
    }
}
?>