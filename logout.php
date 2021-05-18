<?php 
session_start();
session_unset();
header("Location: /ShopPing/index.php");
?>