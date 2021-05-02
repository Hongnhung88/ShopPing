<?php
class database{
    var $_dbh = '';
    var $_sql = '';
    var $_cursor = '';
   public function database()
   {
    try
    {
        $this->_dbh = new PDO('mysql:host=localhost; dbname=shop_ping','root','');
        $this->_dbh->query('set names "utf8"');
        echo 'thanh cong<br/>';
    }
    catch(Exception $ex)
    {
        echo $ex->getMessage();
        die();
    }
   }
   public function selectData()
   {
       $this->_dbh->prepare($this->_sql);
       return $this->_dbh->execute();
   }
   public function setSql($sql)
   {
      $this->_sql=$sql;
   }
   public function showSql()
   {
      echo $this->_sql;
   }

}
$db= new database();
$db->setSql('select * from tblgiay where id = 10');
$db->showSql();
$result = $db->selectData();
$result->selectData('select * from tbladmin');


?>