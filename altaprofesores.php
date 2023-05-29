<?php
if (!isset($_POST['dni_prof']) || empty($_POST['dni_prof']) || empty($_POST['nombre_prof']) || empty($_POST['apellido1_prof']) || empty($_POST['apellido2_prof']) || empty($_POST['email_prof']) || empty($_POST['telf_prof']) || empty($_POST['dept_prof']) || empty($_POST['sal_prof'])) {
    header('Location: alumnos.php');
    exit;
}

include_once "conexion.php";

// Obtener los datos del formulario
$dni_prof = $_POST['dni_prof'];
$nombre_prof = $_POST['nombre_prof'];
$apellido1_prof = $_POST['apellido1_prof'];
$apellido2_prof = $_POST['apellido2_prof'];
$email_prof = $_POST['email_prof'];
$telf_prof = $_POST['telf_prof'];
$dept_prof = $_POST['dept_prof'];
$sal_prof = $_POST['sal_prof'];

// Preparar la consulta SQL
$query = $mysqli->prepare('INSERT INTO PROFESOR (dni_prof, nombre_prof, apellido1_prof, apellido2_prof, email_prof, telf_prof, dept_prof, sal_prof) VALUES (?, ?, ?, ?, ?, ?, ?, ?)');
$query->bind_param('isssssis', $dni_prof, $nombre_prof, $apellido1_prof, $apellido2_prof, $email_prof, $telf_prof, $dept_prof, $sal_prof);

// Ejecutar la consulta
if ($query->execute()) {
    // Inserción exitosa
    header('Location: alumnos.php');
} else {
    // Error en la inserción
    echo "Error al insertar el profesor: " . $mysqli->error;
}

$query->close();
$mysqli->close();
?>


