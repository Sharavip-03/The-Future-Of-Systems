<?php
require_once '../Modelo/Cliente.php';
require_once '../Modelo/Conexion.php'; // Asegúrate de que esta ruta sea correcta
$gestorCliente = new Cliente();

$elegirAcciones = isset($_POST['Acciones']) ? $_POST['Acciones'] : "Cargar";

if ($elegirAcciones == 'Crear Cliente') {
    $gestorCliente->agregarCliente(
        $_POST['Nombre'],
        $_POST['Apellidos'],
        $_POST['Telefono'],
        $_POST['Correo'],
        $_POST['Direccion'],
        $_POST['Contrasena'],  // La contraseña se maneja por separado en otra tabla
        $_POST['Identificacion']
    );
}

 elseif ($elegirAcciones == 'Actualizar Cliente') {
    $id_Cliente = $_POST['id_Cliente'];
    $Nombre = $_POST['Nombre'];
    $Apellidos = $_POST['Apellidos'];
    $Telefono = $_POST['Telefono'];
    $Correo = $_POST['Correo'];
    $Direccion = $_POST['Direccion'];

    $gestorCliente->actualizarCliente($id_Cliente, $Nombre, $Apellidos, $Telefono, $Correo, $Direccion);
} 
elseif ($elegirAcciones == 'Refrescar tabla') {
    $resultado = $gestorCliente->obtenerClientes();
}

if (isset($_POST['Acciones']) && $_POST['Acciones'] == 'Cambiar Estado') {
    $idCliente = $_POST['id_Cliente'];
    $estadoActual = $_POST['estado_actual'];
    $gestorCliente->cambiarEstadoCliente($idCliente, $estadoActual);
    // Redirigir o refrescar la página después de la acción
}



include "../Vista/vistaCliente.php";