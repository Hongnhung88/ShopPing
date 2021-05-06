<?php
include 'database.php';
class M_Cvc extends database{
    public function LayGiayCVC()
    {
        # code lay giay cvc
        $this->setSql('select * from tblgiay g where g.idHangGiay = 6');
        return $this->getAllRows();
    }
}
?>