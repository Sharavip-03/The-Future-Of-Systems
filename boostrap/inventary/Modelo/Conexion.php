<?php
function Conectarse() {
    $servidor = "localhost";
    $usuario = "root";
    $contraseña = "";
    $bd = "formularios1";

    $conexion = new mysqli($servidor, $usuario, $contraseña, $bd);

    if ($conexion->connect_error) {
        die("Conexión fallida: " . $conexion->connect_error);
    }

    return $conexion;
}
?>
