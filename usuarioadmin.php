<?php
session_start();
$usuario=$_POST['usuario'];
$contrasena=$_POST['contrasena'];
if ($usuario=="newvision" and $contrasena=="qweQWE123"){
    $entrar['index']="funciona";
    $usuario=0;
    $contrasena=0;
    header("location: alumnos.php");
    exit;
}
else{
    header("location: index.html");
    exit;
}
