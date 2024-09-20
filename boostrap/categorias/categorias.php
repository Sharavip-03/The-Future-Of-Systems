<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Categorías</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/principal.css">
    <link href="https://fonts.cdnfonts.com/css/antique-book-cover" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ad70f2e67d.js" crossorigin="anonymous"></script>
</head>

<body>
    <!-- Header -->
    <header class="navbar-custom py-3">
        <div class="container d-flex justify-content-between align-items-center">
            <div class="d-flex align-items-center">
                <a href="../principal/index.html" class="btn btn-outline me-2" style="color: white" id="user-logo">
                    <i class="fa-solid fa-left-long"></i>
                </a>
                <p class="mb-0" style="color: white">Volver</p>
            </div>
            <div>
                <a href="#"><img src="../media/logo.png" alt="Logo" class="img-fluid" style="max-height: 60px;"></a>
            </div>
        </div>
    </header>

    <!-- Buscador y Categorías -->
    <div class="container my-4">
        <div id="search-container" class="d-flex justify-content-center">
            <input type="search" id="cate-search-input" class="form-control w-75" placeholder="Busca tus productos aquí">
            <button id="cate-search" class="btn btn-primary ms-3">Buscar</button>
        </div>

        <div id="buttons" class="d-flex justify-content-center mt-3">
            <button class="btn btn-primary me-2" onclick="filterProduct('todo')">Todo</button>
            <button class="btn btn-secondary me-2" onclick="filterProduct('Comidas')">Comidas</button>
            <button class="btn btn-secondary me-2" onclick="filterProduct('Camas')">Camas</button>
            <button class="btn btn-secondary me-2" onclick="filterProduct('Accesorios')">Accesorios</button>
            <button class="btn btn-secondary me-2" onclick="filterProduct('Juguetes')">Juguetes</button>
        </div>

        <div id="products" class="row mt-4">
    <?php include 'category.php'; ?>
</div>

    </div>

    <!-- JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="category.js"></script>
</body>

</html>
