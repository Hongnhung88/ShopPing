<?php 
session_start();
include './controllers/c_cart.php';
$c_cart = new C_Cart();
$c_cart->ShowCart();