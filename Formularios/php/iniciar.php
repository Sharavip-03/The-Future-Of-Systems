<?php
include("conexion.php");
$Correo = $_POST['email'];
$Contraseña = $_POST['contraseña'];
$res_usuario = $conexion->query("select * from cliente where Correo= '$Correo' and Contraseña= '$Contraseña'");
$num_reg = $res_usuario->num_rows;
if ($num_reg == 1) {
    header("location:");
} else {
    echo "El usuario o clave no son validos";
    mysqli_close($conexion);
}
