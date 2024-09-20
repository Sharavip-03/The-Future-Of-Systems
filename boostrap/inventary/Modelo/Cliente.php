<?php
require_once 'Conexion.php'; // Asegúrate de que esta ruta sea correcta

class Cliente {
    private $conexion;

    public function __construct() {
        $this->conexion = Conectarse();
    }


    public function agregarCliente($nombre, $apellidos, $telefono, $correo, $direccion, $contrasena, $identificacion) {
        // Buscar el menor ID disponible en la tabla cliente
        $query_min_id = "SELECT MIN(t1.id_Cliente + 1) AS nextID
                         FROM cliente t1
                         LEFT JOIN cliente t2 ON t1.id_Cliente + 1 = t2.id_Cliente
                         WHERE t2.id_Cliente IS NULL";
        $result = $this->conexion->query($query_min_id);
        $nextID = $result->fetch_assoc()['nextID'];
    
        // Si no hay un ID disponible, seguimos con el auto-increment
        if (empty($nextID)) {
            $query = "INSERT INTO cliente (Nombre, Apellidos, Telefono, Correo, Direccion, Identificacion) VALUES (?, ?, ?, ?, ?, ?)";
            $stmt = $this->conexion->prepare($query);
            $stmt->bind_param("ssssss", $nombre, $apellidos, $telefono, $correo, $direccion, $identificacion);
        } else {
            $query = "INSERT INTO cliente (id_Cliente, Nombre, Apellidos, Telefono, Correo, Direccion, Identificacion) VALUES (?, ?, ?, ?, ?, ?, ?)";
            $stmt = $this->conexion->prepare($query);
            $stmt->bind_param("issssss", $nextID, $nombre, $apellidos, $telefono, $correo, $direccion, $identificacion);
        }
    
        // Ejecutar la inserción en la tabla cliente
        $stmt->execute();
        
        // Obtener el ID del cliente recién insertado
        $insertedID = $nextID ? $nextID : $this->conexion->insert_id;
        $stmt->close();
    
        // Insertar la contraseña en la tabla contraseñacliente
        $hashedPassword = password_hash($contrasena, PASSWORD_BCRYPT);
        $query_password = "INSERT INTO contraseñacliente (id_Cliente, Contraseña) VALUES (?, ?)";
        $stmt_password = $this->conexion->prepare($query_password);
        $stmt_password->bind_param("is", $insertedID, $hashedPassword);
        
        // Ejecutar la inserción en la tabla de contraseñas
        $stmt_password->execute();
        $stmt_password->close();
    }
    
    
    public function actualizarCliente($idCliente, $nombre, $apellidos, $telefono, $correo, $direccion) {
        $query = "UPDATE cliente SET Nombre=?, Apellidos=?, Telefono=?, Correo=?, Direccion=? WHERE id_Cliente=?";
        $stmt = $this->conexion->prepare($query);
        $stmt->bind_param("sssssi", $nombre, $apellidos, $telefono, $correo, $direccion, $idCliente);
        $stmt->execute();
        $stmt->close();
    }

    public function cambiarEstadoCliente($id_Cliente, $nuevoEstado) {
        $sql = "UPDATE cliente SET Estado = ? WHERE id_Cliente = ?";
        $stmt = $this->conexion->prepare($sql);
        $stmt->bind_param("si", $nuevoEstado, $id_Cliente);
        return $stmt->execute();
    }
    

    public function obtenerClientes($limit = 5, $offset = 0) {
        $query = "SELECT * FROM cliente LIMIT ? OFFSET ?";
        $stmt = $this->conexion->prepare($query);
        $stmt->bind_param("ii", $limit, $offset);
        $stmt->execute();
        $resultado = $stmt->get_result();
        return $resultado;
    }

public function contarClientes() {
    $query = "SELECT COUNT(*) AS total FROM cliente";
    $resultado = $this->conexion->query($query);
    $total = $resultado->fetch_assoc();
    return $total['total'];
}
}
?>