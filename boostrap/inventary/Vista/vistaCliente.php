<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../../css/principal.css">
    <link href="https://fonts.cdnfonts.com/css/antique-book-cover" rel="stylesheet">
    <title>Inventario</title>
</head>
<body id="inventario">
<div class="container-fluid d-flex">
    <nav class="navbar navbar-expand-lg navbar-light inventariomenu">
        <a class="navbar-brand mx-auto" href="../../principal/inventario.html">
            <img src="../../media/logo.png" class="imgmenu" alt="Logo" style="max-width: 100px;">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav flex-column">
                <li class="nav-item">
                    <a class="nav-link" href="../../Vista/vistaProductos.html">
                        <img class="imginv" src="../../media/productos.png" alt="Productos">Productos
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../../inventary/Controlador/controladorCliente.php">
                        <img class="imginv" src="../../media/clientes.png" alt="Clientes">Clientes
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../../Vista/vistaEmpleados.html">
                        <img class="imginv" src="../../media/empleo.png" alt="Empleados">Empleados
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../../Vista/vistaFacturas.html">
                        <img class="imginv" src="../../media/factura.png" alt="Facturas">Facturas
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../../principal/index.html">
                        <img class="imginv" src="../../media/salir.png" alt="Salir">Salir
                    </a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container mt-5">
        <div class="inventario flex-grow-1">
        <link rel="stylesheet" href="../../css/img.css">
        <img class="imgmenu" src="../../media/clientes.png" alt="">
        <h1>Clientes</h1>
        
        <img class="imgmenu2" src="../../media/user.png" alt=""> 
        <link rel="stylesheet" href="../../css/img.css">
    </div>
     <!-- Contenedor principal para el contenido -->
     <div class="container mt-5">
        <!-- Contenedor del título -->
        

        <!-- Contenedor de la tabla -->
        <div class="tablestyle">
                    <h3>Lista de Clientes</h3>
                    <form action="../Controlador/controladorCliente.php" method="post" class="d-inline">
                        <button class="btn button-value mb-3" type="submit" name="Acciones" value="Refrescar tabla">Refrescar tabla</button>
                    </form>
                    <button class="btn button-value mb-3 ms-2" data-bs-toggle="modal" data-bs-target="#addClientModal">Agregar nuevo usuario</button>
                    

                    <div class="table-responsive mt-3">
                <table class="table table-bordered">
                    <thead>
                    <tr>
        <th>ID Cliente</th>
        <th>Nombre</th>
        <th>Apellidos</th>
        <th>Telefono</th>
        <th>Correo</th>
        <th>Dirección</th>
        <th>Identificacion</th>
        <th>Estado</th>
        <th>Actualizar</th>
        <th>Cambiar Estado</th>
    </tr>
                    </thead>
                    <tbody>
                    <?php
require_once '../Modelo/Cliente.php';

$clienteModelo = new Cliente();

// Obtener la página actual desde la URL
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$limit = 5;
$offset = ($page - 1) * $limit;

// Obtener clientes para la página actual
$resultado = $clienteModelo->obtenerClientes($limit, $offset);

// Obtener el total de clientes para la paginación
$totalClientes = $clienteModelo->contarClientes();
$totalPages = ceil($totalClientes / $limit);



                        if ($resultado) {
                            while ($fila = mysqli_fetch_assoc($resultado)) {
                                echo "<tr>";
                                echo "<td>" . $fila['id_Cliente'] . "</td>";
                                echo "<td>" . $fila['Nombre'] . "</td>";
                                echo "<td>" . $fila['Apellidos'] . "</td>";
                                echo "<td>" . $fila['Telefono'] . "</td>";
                                echo "<td>" . $fila['Correo'] . "</td>";
                                echo "<td>" . $fila['Direccion'] . "</td>";
                                echo "<td>" . $fila['Identificacion'] . "</td>";
                                echo "<td>" . $fila['Estado'] . "</td>";


                                echo '<td>
                                        <button class="btn button-value btn-warning" data-bs-toggle="modal" data-bs-target="#updateModal' . $fila['id_Cliente'] . '">Editar</button>
                                      </td>';
                                      echo '<td>
                                      <form action="../Controlador/controladorCliente.php" method="post">
                                          <input type="hidden" name="id_Cliente" value="' . $fila['id_Cliente'] . '">
<input type="hidden" name="estado_actual" value="' . ($fila['Estado'] == 'Activo' ? 'Inactivo' : 'Activo') . '">
                                          <button class="btn button-value btn-secondary" type="submit" name="Acciones" value="Cambiar Estado">' . ($fila['Estado'] == 'activo' ? 'Desactivar' : 'Cambiar') . '</button>
                                      </form>
                                    </td>';
                                echo "</tr>";
                                // Modal para actualización
                                echo '<div class="modal fade" id="updateModal' . $fila['id_Cliente'] . '" tabindex="-1" aria-labelledby="updateModalLabel' . $fila['id_Cliente'] . '" aria-hidden="true">';
                                echo '<div class="modal-dialog">';
                                echo '<div class="modal-content">';
                                echo '<div class="modal-header">';
                                echo '<h5 class="modal-title" id="updateModalLabel' . $fila['id_Cliente'] . '">Actualizar Cliente - ID: ' . $fila['id_Cliente'] . '</h5>';
                                echo '<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>';
                                echo '</div>';
                                echo '<div class="modal-body">';
                                echo '<form action="../Controlador/controladorCliente.php" method="post">';
                                echo '<input type="hidden" name="id_Cliente" value="' . $fila['id_Cliente'] . '">';
                        
                                echo '<div class="mb-3">
                                        <label class="form-label">Nombre</label>
                                        <input class="form-control" name="Nombre" type="text" value="' . $fila['Nombre'] . '"required>
                                      </div>';
                                echo '<div class="mb-3">
                                        <label class="form-label">Apellidos</label>
                                        <input class="form-control" name="Apellidos" type="text" value="' . $fila['Apellidos'] . '" required>
                                      </div>';
                                echo '<div class="mb-3">
                                        <label class="form-label">Teléfono</label>
                                        <input class="form-control" name="Telefono" type="text" value="' . $fila['Telefono'] . '" required>
                                      </div>';
                                echo '<div class="mb-3">
                                        <label class="form-label">Correo</label>
                                        <input class="form-control" name="Correo" type="text" value="' . $fila['Correo'] . '" required>
                                      </div>';
                                echo '<div class="mb-3">
                                        <label class="form-label">Dirección</label>
                                        <input class="form-control" name="Direccion" type="text" value="' . $fila['Direccion'] . '" required>
                                      </div>';
                                echo '<button class="btn btn-primary" type="submit" name="Acciones" value="Actualizar Cliente">Actualizar</button>';
                                echo '</form>';
                                echo '</div>';
                                echo '<div class="modal-footer">';
                                echo '<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>';
                                echo '</div>';
                                echo '</div>';
                                echo '</div>';
                                echo '</div>';
                            }
                        } else {
                            echo '<tr><td colspan="8">No se encontraron registros.</td></tr>';
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div><br><br>
    <!-- Paginación -->
<nav aria-label="Page navigation">
    <ul class="pagination">
        <li class="page-item <?= $page <= 1 ? 'disabled' : '' ?>">
            <a class="page-link" href="?page=<?= $page - 1 ?>" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
            </a>
        </li>

        <?php for ($i = 1; $i <= $totalPages; $i++): ?>
            <li class="page-item <?= $i == $page ? 'active' : '' ?>">
                <a class="page-link" href="?page=<?= $i ?>"><?= $i ?></a>
            </li>
        <?php endfor; ?>

        <li class="page-item <?= $page >= $totalPages ? 'disabled' : '' ?>">
            <a class="page-link" href="?page=<?= $page + 1 ?>" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
            </a>
        </li>
    </ul>
</nav>

    <!-- Modal para agregar nuevo cliente -->
<div class="modal fade" id="addClientModal" tabindex="-1" aria-labelledby="addClientModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addClientModalLabel">Agregar Nuevo Cliente</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="../Controlador/controladorCliente.php" method="post">
                <div class="mb-3">
                        <label class="form-label">Identificacion</label>
                        <input class="form-control" name="Identificacion" type="text" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nombre</label>
                        <input class="form-control" name="Nombre" type="text" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Apellidos</label>
                        <input class="form-control" name="Apellidos" type="text" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Teléfono</label>
                        <input class="form-control" name="Telefono" type="text" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Correo</label>
                        <input class="form-control" name="Correo" type="email" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Dirección</label>
                        <input class="form-control" name="Direccion" type="text" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Contraseña</label>
                        <input class="form-control" name="Contrasena" type="password" required>
                    </div>
                    <button class="btn btn-primary" type="submit" name="Acciones" value="Crear Cliente">Agregar Cliente</button>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>