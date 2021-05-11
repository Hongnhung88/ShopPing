<?php 
session_start();
include './controllers/c_coordination.php';
$c_coordination = new C_Coordination();
$c_coordination->ShowCoordination();