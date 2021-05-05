<?php
include './database.php';
class M_Mcqueen extends database{
    public function LayGiayMcqueen()
    {
        # code lay giay Mcqueen
        $this->setSql('select * from tblgiay g where g.idHangGiay = 2');
        return $this->getAllRows();
    }
}
?>