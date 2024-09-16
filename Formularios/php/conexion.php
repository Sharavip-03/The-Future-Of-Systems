<?php

$conexion = new mysqli("localhost", "root", "", "formularios");

if ($conexion->connect_error) {
    die("Error en la conexión: " . $conexion->connect_error);
}
