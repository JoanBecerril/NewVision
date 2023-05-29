<?php
include_once "conexion.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['dni_prof'])) {
        $dni_prof = $_POST['dni_prof'];
        $nombre_prof = $_POST['nombre_prof'];
        $apellido1_prof = $_POST['apellido1_prof'];
        $apellido2_prof = $_POST['apellido2_prof'];
        $email_prof = $_POST['email_prof'];
        $telf_prof = $_POST['telf_prof'];
        $dept_prof = $_POST['dept_prof'];
        $sal_prof = $_POST['sal_prof'];
        
        // Actualizar los datos del profesor
        $query = $mysqli->prepare('UPDATE PROFESOR SET nombre_prof = ?, apellido1_prof = ?, apellido2_prof = ?, email_prof = ?, telf_prof = ?, dept_prof = ?, sal_prof = ? WHERE dni_prof = ?');
        $query->bind_param('ssssisis', $nombre_prof, $apellido1_prof, $apellido2_prof, $email_prof, $telf_prof, $dept_prof, $sal_prof, $dni_prof);
        
        if ($query->execute()) {
            header('Location: alumnos.php');
        } else {
            echo "Error al actualizar los datos del profesor.";
        }
        
        $query->close();
    } else {
        echo "No se especificó el ID del profesor.";
    }
} else {
    echo "Acceso inválido al formulario.";
}

$mysqli->close();
?>
