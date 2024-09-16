<?php
include("conexion.php");

if (isset($_POST['register'])) 
{
   if(strlen($_POST['name'])&& strlen($_POST['telefono'])&& strlen($_POST['email'])&& strlen($_POST['direccion'])&& strlen($_POST['contraseña']))
   {
    $Nombre = trim($_POST['name']);
    $Telefono = trim($_POST['telefono']);
    $Correo = trim($_POST['email']); 
    $Direccion = trim($_POST['direccion']); 
    $Contraseña = trim($_POST['contraseña']); 

    $consulta= "INSERT INTO cliente(Nombre, Telefono, Correo, Direccion, Contraseña) VALUES ('$Nombre','$Telefono','$Correo','$Direccion','$Contraseña')";
    $resultado= mysqli_query($conexion,$consulta);
    if ($resultado){
        header("location: exito.php");
        exit();
        
        ?>

        <?php
        
    }
    else
    {
        ?>
        <?php
        header("location: fallo.php");
        exit();
    }
     }
     else
     {
        ?>
        <?php
         header("location: fallo.php");
         exit();
}
}
?>