<?php
include("../inventary/Modelo/Conexion.php");

// Obtener la conexión a la base de datos
$conexion = Conectarse();

// Verificar si la conexión se ha establecido correctamente
if (!$conexion) {
    die("Error en la conexión: " . mysqli_connect_error());
}

$Correo = $_POST['email'];
$Contraseña = $_POST['contraseña'];

// Consulta en la tabla empleado
$res_usuario = $conexion->query("SELECT * FROM empleado WHERE Correo = '$Correo' AND Contraseña = '$Contraseña'");
$num_reg = $res_usuario->num_rows;

// Consulta en la tabla admin si no se encontró en empleado
if ($num_reg == 0) {
    $res_usuario = $conexion->query("SELECT * FROM admin WHERE Correo = '$Correo' AND Contraseña = '$Contraseña'");
    $num_reg = $res_usuario->num_rows;
}

if ($num_reg == 1) {
    header("location:../principal/inventario.html");
} else {
    echo "El usuario o clave no son válidos";
}

$conexion->close();
?>
