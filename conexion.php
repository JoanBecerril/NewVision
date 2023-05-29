<?php
// Variable que hace una conexión al servidor mysqli donde conectamos el host, usuario,
// contraseña y la base de datos donde haremos la consulta (NewVision)
$mysqli=mysqli_connect('localhost','newvision','qweQWE123',"newvision");
if (!empty($_POST["login"])) {
    if (empty($_POST["username"]) || empty($_POST["password"])) {
        echo "Los campos están vacíos";
    } else {
        // Recoge el valor del usuario en el formulario (input text)
        $user=$_POST["username"];
        // Recoge el valor de la contraseña en el formulario (input text)
        $contraseña=$_POST["password"];
    }
}

?>