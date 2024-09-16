<?php
require_once 'Conexion.php'; // Asegúrate de que esta ruta sea correcta

class Cliente {
    private $conexion;

    public function __construct() {
        $this->conexion = Conectarse();
    }


    public function agregarCliente($nombre, $apellidos, $telefono, $correo, $direccion, $contrasena) {
        // Buscar el menor ID disponible en la tabla
        $query_min_id = "SELECT MIN(t1.id_Cliente + 1) AS nextID
                         FROM cliente t1
                         LEFT JOIN cliente t2 ON t1.id_Cliente + 1 = t2.id_Cliente
                         WHERE t2.id_Cliente IS NULL";
        $result = $this->conexion->query($query_min_id);
        $nextID = $result->fetch_assoc()['nextID'];
    
        // Si no hay un ID disponible, significa que seguimos con el auto-increment
        if (empty($nextID)) {
            $nextID = null; // Deja que el auto-increment se encargue del ID
        }
    
        $query = "INSERT INTO cliente (id_Cliente, Nombre, Apellidos, Telefono, Correo, Direccion, Contraseña) VALUES (?, ?, ?, ?, ?, ?, ?)";
        $stmt = $this->conexion->prepare($query);
        
        // Almacena el hash de la contraseña en una variable
        $hashedPassword = password_hash($contrasena, PASSWORD_BCRYPT);
    
        // Pasa la variable nextID solo si tiene un valor, o permite el auto-increment
        if ($nextID !== null) {
            $stmt->bind_param("issssss", $nextID, $nombre, $apellidos, $telefono, $correo, $direccion, $hashedPassword);
        } else {
            $stmt->bind_param("ssssss", $nombre, $apellidos, $telefono, $correo, $direccion, $hashedPassword);
        }
        $stmt->execute();
        $stmt->close();
    }
    
    
    public function actualizarCliente($idCliente, $nombre, $apellidos, $telefono, $correo, $direccion) {
        $query = "UPDATE cliente SET Nombre=?, Apellidos=?, Telefono=?, Correo=?, Direccion=? WHERE id_Cliente=?";
        $stmt = $this->conexion->prepare($query);
        $stmt->bind_param("sssssi", $nombre, $apellidos, $telefono, $correo, $direccion, $idCliente);
        $stmt->execute();
        $stmt->close();
    }

    public function borrarCliente($idCliente) {
        $query = "DELETE FROM cliente WHERE id_Cliente=?";
        $stmt = $this->conexion->prepare($query);
        $stmt->bind_param("i", $idCliente);
        $stmt->execute();
        $stmt->close();
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