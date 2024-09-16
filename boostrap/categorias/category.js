let products = {
    data: [
        {
            productName: "Whiskas Adulto 1 año",
            category: "Comidas",
            price: "$3.489",
            image: "../media/producto-1-whiskas.png",
            productPage: "../productos/producto-whiskas.html"
        },
        {
            productName: "Sheba sobre para gato adulto pollo",
            category: "Comidas",
            price: "$3.489",
            image: "../media/producto-2-sheba.jpg",
        },
        {
            productName: "Comida para perros Equilibrio - Light Todas Las Razas Adulto",
            category: "Comidas",
            price: "$438.489",
            image: "../media/comida-perros-equilibrio.jpg",
        },
        {
            productName: "Cama para perros color beige",
            category: "Camas",
            price: "$101.015",
            image: "../media/camaconhuellas.jpg",
        },
        {
            productName: "Juguete cascabel con doble pluma para gatos",
            category: "Juguetes",
            price: "$13.000",
            image: "../media/Jueguetecascabel.jpg",
        },
        {
            productName: "Pelota para perros GiGwi",
            category: "Juguetes",
            price: "$14.000",
            image: "../media/pelotaparaperros.jpg",
        },
        {
            productName: "Corbatin talla S",
            category: "Accesorios",
            price: "$3.708",
            image: "../media/corbata.jpg",
        },
        {
            productName: "Ratones para gatos",
            category: "Juguetes",
            price: "$25.789",
            image: "../media/ratonesparagatos.jpg",
        },
        {
            productName: "Royal Canin-Comida para gatos",
            category: "Comidas",
            price: "$11.390",
            image: "../media/atun_para_gatos.jpg",
            productPage: "../productos/producto-whiskas.html"
        },
        {
            productName: "Cama Dona-Para Perros",
            category: "Camas",
            price: "$110.200",
            image: "../media/cama_dona_para_perros.png",
            productPage: "../productos/producto-whiskas.html"
        },
        {
            productName: "Ocean Blue Home-Cama Para Perros",
            category: "Camas",
            price: "$285.000",
            image: "../media/cama_puntiaguda_iglu_para_perros.jpg",
            productPage: "../productos/producto-whiskas.html"
        },
    ],
};

for (let i of products.data) {
    // Crear la card
    let card = document.createElement("div");
    // Asignar clases de categoría y ocultar inicialmente
    card.classList.add("card", i.category, "hide");
    // Contenedor de imagen
    let imgContainer = document.createElement("div");
    imgContainer.classList.add("image-container");
    // Crear la imagen
    let image = document.createElement("img");
    image.setAttribute("src", i.image);
    imgContainer.appendChild(image);
    card.appendChild(imgContainer);
    // Contenedor de información del producto
    let prodContainer = document.createElement("div");
    prodContainer.classList.add("prodContainer");
    // Nombre del producto
    let name = document.createElement("h5");
    name.classList.add("product-name");
    name.innerText = i.productName.toUpperCase();
    prodContainer.appendChild(name);
    // Precio del producto
    let price = document.createElement("h6");
    price.innerText = i.price;
    prodContainer.appendChild(price);

    card.appendChild(prodContainer);
    document.getElementById("products").appendChild(card);
}

function displayProducts() {
    let container = document.getElementById("products");
    container.innerHTML = ''; // Limpiar el contenedor antes de agregar nuevos productos
    products.data.forEach(product => {
        let card = document.createElement("div");
        card.classList.add("card", product.category, "hide");
        
        // Agregar un evento de clic para redirigir al producto
        card.addEventListener("click", () => {
            if (product.productPage) {
                window.location.href = product.productPage;
            }
        });

        let imgContainer = document.createElement("div");
        imgContainer.classList.add("image-container");
        let image = document.createElement("img");
        image.setAttribute("src", product.image);
        imgContainer.appendChild(image);
        card.appendChild(imgContainer);

        let prodContainer = document.createElement("div");
        prodContainer.classList.add("prodContainer");
        let name = document.createElement("h5");
        name.classList.add("product-name");
        name.innerText = product.productName.toUpperCase();
        prodContainer.appendChild(name);
        let price = document.createElement("h6");
        price.innerText = product.price;
        prodContainer.appendChild(price);

        card.appendChild(prodContainer);
        container.appendChild(card);
    });
}

// Filtrar productos por término de búsqueda
function filterProductsBySearchTerm(searchTerm) {
    let elements = document.querySelectorAll(".product-name");
    let cards = document.querySelectorAll(".card");

    elements.forEach((element, index) => {
        if (element.innerText.includes(searchTerm.toUpperCase())) {
            cards[index].classList.remove("hide");
        } else {
            cards[index].classList.add("hide");
        }
    });
}

// Filtrar productos por categoría
function filterProduct(category) {
    let elements = document.querySelectorAll(".card");
    elements.forEach((element) => {
        if (category === "todo" || element.classList.contains(category)) {
            element.classList.remove("hide");
        } else {
            element.classList.add("hide");
        }
    });
}

// Inicialización
window.onload = () => {
    displayProducts(); // Mostrar productos al cargar la página
    const urlParams = new URLSearchParams(window.location.search);
    const category = urlParams.get('category');
    const searchTerm = urlParams.get('search');

    if (searchTerm) {
        document.getElementById("cate-search-input").value = searchTerm;
        filterProductsBySearchTerm(searchTerm);
    } else if (category) {
        filterProduct(category);
    } else {
        filterProduct("todo");
    }
}

// Eventos
document.getElementById("cate-search").addEventListener("click", () => {
    let searchInput = document.getElementById("cate-search-input").value;
    if (searchInput.trim() !== "") {
        filterProductsBySearchTerm(searchInput);
    }
});

document.getElementById("search").addEventListener("click", () => {
    let searchInput = document.getElementById("search-input").value;
    if (searchInput.trim() !== "") {
        filterProductsBySearchTerm(searchInput);
    }
});