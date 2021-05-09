<?php
include 'database.php';
class M_Index extends database{
    public function LaySanPhamBanChay()
    {
        # code lay san pham ban chay
        $this->setSql("select * from tblgiay where banChay = true");
        return $this->getAllRows();
    }
    public function LaySanPhamMoi()
    {
        # code lay san pham moi
        $this->setSql("select * from tblgiay where isNew = true ");
        return $this->getAllRows();
    }
}
?>