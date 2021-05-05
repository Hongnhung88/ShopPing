<?php
include './database.php';
class M_Nikej1 extends database{
    public function LayGiayNikej1()
    {
        # code lay giay nikej1
        $this->setSql('select * from tblgiay g where g.idHangGiay = 8');
        return $this->getAllRows();
    }
}
?>