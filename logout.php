<?php
ob_start();
require_once('topnavigation.php');

if (isset($_SERVER['HTTP_COOKIE'])) {
    $cookies = explode(';', $_SERVER['HTTP_COOKIE']);
    foreach($cookies as $cookie) {
        $parts = explode('=', $cookie);
        $name = trim($parts[0]);
        setcookie($name, '', time()-1000);
        setcookie($name, '', time()-1000, '/');
    }
}
if(isset($_COOKIE[session_name()])){
    setcookie(session_name(), '', time()-7000000, '/');}

unset($_SESSION);
session_destroy();
session_commit();


    header('location: index.php?session=Logout');
    $msg = "log out success";

?>