<?php 
session_start();
include './controllers/c_mcqueen.php';
$c_mcqueen = new C_Mcqueen();
$c_mcqueen->ShowMcQueen();
echo $_SESSION['demo'];