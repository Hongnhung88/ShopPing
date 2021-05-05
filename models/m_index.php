<?php
include 'database.php';
class M_Index extends database{
    public function LaySanPhamBanChay()
    {
        # code lay san pham ban chay
        $this->setSql("select * from tblgiay where banChay = true");
        return $this->getAllRows();
    }
}
?>