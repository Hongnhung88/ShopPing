<?php 
session_start();
$_SESSION['demo'] = 'demo';
include('./controllers/c_index.php');
$c_index = new C_index();
$c_index->ShowShoseIndex();