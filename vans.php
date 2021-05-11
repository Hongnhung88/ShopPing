<?php 
session_start();
include './controllers/c_vans.php';
$c_vans = new C_Vans();
$c_vans->ShowVans();