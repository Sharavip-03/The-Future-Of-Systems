<?php
include("../inventary/Modelo/Conexion.php");

$conexion = Conectarse(); // Asegúrate de obtener la conexión correctamente

if (isset($_POST['name'])) {  // Cambiado de 'register' a 'name', ya que es el primer campo enviado
    // Verifica si todos los campos están completos
    if (!empty($_POST['identificacion']) && !empty($_POST['name']) && !empty($_POST['apellidos']) && !empty($_POST['telefono']) && !empty($_POST['email']) && !empty($_POST['direccion']) && !empty($_POST['contraseña'])) {
        $Identificacion = trim($_POST['identificacion']);
        $Nombre = trim($_POST['name']);
        $Apellidos = trim($_POST['apellidos']);
        $Telefono = trim($_POST['telefono']);
        $Correo = trim($_POST['email']);
        $Direccion = trim($_POST['direccion']);
        $Contraseña = trim($_POST['contraseña']);

        // Encriptar la contraseña
        $ContraseñaHash = password_hash($Contraseña, PASSWORD_DEFAULT);

        // Inserción de los datos del cliente
        $stmt = $conexion->prepare("INSERT INTO cliente (Nombre, Apellidos, Telefono, Correo, Direccion, Identificacion) VALUES (?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("ssssss", $Nombre, $Apellidos, $Telefono, $Correo, $Direccion, $Identificacion);

        if ($stmt->execute()) {
            // Obtener el último ID de cliente insertado
            $idCliente = $conexion->insert_id;

            // Inserción de la contraseña en la tabla 'contraseñacliente'
            $stmt_password = $conexion->prepare("INSERT INTO contraseñacliente (id_Cliente, Contraseña) VALUES (?, ?)");
            $stmt_password->bind_param("is", $idCliente, $ContraseñaHash);

            if ($stmt_password->execute()) {
                // Redirigir al usuario después de un registro exitoso
                header("Location: ../principal/index.html");
                exit();
            } else {
                echo "Error al insertar la contraseña: " . $stmt_password->error;
            }

            // Cerrar la declaración de contraseña
            $stmt_password->close();
        } else {
            echo "Error en la consulta de cliente: " . $stmt->error;
        }

        // Cerrar la declaración de cliente y la conexión
        $stmt->close();
        $conexion->close();
    } else {
        echo "Por favor, complete todos los campos.";
    }
}
