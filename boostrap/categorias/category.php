<?php
include '../inventary/Modelo/Conexion.php'; // Ajusta la ruta si es necesario

$conn = Conectarse();

// Obtener la página actual y calcular el desplazamiento
$pagina = isset($_GET['pagina']) ? (int)$_GET['pagina'] : 1;
$productosPorPagina = 8;
$offset = ($pagina - 1) * $productosPorPagina;

// Consulta para obtener productos con su categoría, limitados para paginación
$sql = "SELECT p.Nombre, p.Descripcion, p.Precio, p.imagen, c.Nombre as Categoria 
        FROM producto p 
        JOIN categoria c ON p.id_Categoria = c.id_Categoria 
        LIMIT $productosPorPagina OFFSET $offset";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo '<div class="card ' . htmlspecialchars($row["Categoria"]) . ' hide">';
        echo '  <div class="image-container">';
        echo '    <img src="../media/' . htmlspecialchars($row["imagen"]) . '" alt="' . htmlspecialchars($row["Nombre"]) . '">';
        echo '  </div>';
        echo '  <div class="prodContainer">';
        echo '    <h5 class="product-name">' . strtoupper(htmlspecialchars($row["Nombre"])) . '</h5>';
        echo '    <h6>Precio: ' . htmlspecialchars($row["Precio"]) . '</h6>';
        echo '    <h6>Categoría: ' . htmlspecialchars($row["Categoria"]) . '</h6>';
        echo '  </div>';
        echo '</div>';
    }
} else {
    echo "<p>No hay productos disponibles.</p>";
}

// Calcular el total de productos para la paginación
$sqlTotal = "SELECT COUNT(*) as total FROM producto";
$totalProductos = $conn->query($sqlTotal)->fetch_assoc()['total'];
$totalPaginas = ceil($totalProductos / $productosPorPagina);

// Mostrar botones de paginación
echo '<br>';
echo '<nav>';
echo '<ul class="pagination">';
for ($i = 1; $i <= $totalPaginas; $i++) {
    $active = ($i == $pagina) ? 'active' : '';
    echo '<li class="page-item ' . $active . '"><a class="page-link" href="?pagina=' . $i . '">' . $i . '</a></li>';
}
echo '</ul>';
echo '</nav>';

$conn->close();
?>
