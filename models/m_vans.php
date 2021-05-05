<?php
include './database.php';
class M_Vans extends database{
    public function LayGiayVans()
    {
        # code lay giay vans
        $this->setSql('select * from tblgiay g where g.idHangGiay = 1');
        return $this->getAllRows();
    }
}
?>