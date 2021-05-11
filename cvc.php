<?php 
session_start();
include './controllers/c_cvc.php';
$c_cvc = new C_Cvc();
$c_cvc->ShowCvc();