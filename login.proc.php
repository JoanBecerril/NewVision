<?php
session_start();
include("./conexion.php");
$sql=$mysqli->query("SELECT * FROM tbl_users WHERE username='$user' AND password='$contraseña'");
 if ($datos=$sql->fetch_object()) {
   $_SESSION['loggedin'] = true;
   header("location: ./alumnos.php");
 } else {
    header("location: ./loginincorrecto.php");
}

?>