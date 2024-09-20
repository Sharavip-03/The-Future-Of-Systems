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

// Inicialización
window.onload = () => {
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
