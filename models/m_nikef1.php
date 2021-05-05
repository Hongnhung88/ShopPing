<?php
include './database.php';
class M_Nikef1 extends database{
    public function LayGiayNikef1()
    {
        # code lay giay nikef1
        $this->setSql('select * from tblgiay g where g.idHangGiay = 4');
        return $this->getAllRows();
    }
}
?>