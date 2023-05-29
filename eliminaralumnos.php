<?php
if (!isset($_GET['num_matricula']) || empty($_GET['num_matricula'])) {
    header('Location: alumnos.php');
    exit;
}

include_once "conexion.php";

// Obtener el ID del alumno a eliminar
$num_matricula = $_GET['num_matricula'];

// Preparar la consulta SQL
$query = $mysqli->prepare('DELETE FROM alumno WHERE num_matricula = ?');
$query->bind_param('i', $num_matricula);

// Ejecutar la consulta
if ($query->execute()) {
    // Eliminación exitosa
    header('Location: alumnos.php');
} else {
    // Error en la eliminación
    echo "Error al eliminar el alumno: " . $mysqli->error;
}

$query->close();
$mysqli->close();
?>

<script src="./js/eliminar.js"></script>
