<?php
include("../inventary/Modelo/Conexion.php");

$conexion = Conectarse(); // Asegúrate de obtener la conexión correctamente

if (isset($_POST['name'])) {  // Cambiado de 'register' a 'name', ya que es el primer campo enviado
    if (strlen($_POST['name']) && strlen($_POST['apellidos']) && strlen($_POST['telefono']) && strlen($_POST['email']) && strlen($_POST['direccion']) && strlen($_POST['contraseña'])) {
        $Nombre = trim($_POST['name']);
        $Apellidos = trim($_POST['apellidos']);
        $Telefono = trim($_POST['telefono']);
        $Correo = trim($_POST['email']);
        $Direccion = trim($_POST['direccion']);
        $Contraseña = trim($_POST['contraseña']);

        // Inserción en la tabla cliente
        $consulta = "INSERT INTO cliente (Nombre, Apellidos, Telefono, Correo, Direccion, Contraseña) VALUES ('$Nombre', '$Apellidos', '$Telefono', '$Correo', '$Direccion', '$Contraseña')";
        $resultado = mysqli_query($conexion, $consulta);

        if ($resultado) {
            header("location: ../principal/index.html");
            exit();
        } else {
            echo "Error en la consulta: " . mysqli_error($conexion);  // Mostrar el error de la consulta
        }
    } else {
        echo "Por favor, complete todos los campos.";
    }
}

?>
