
// Admin Panel Functionality
document.addEventListener('DOMContentLoaded', () => {
    const addProductForm = document.getElementById('addProductForm');
    const productList = document.getElementById('productList');

    addProductForm.addEventListener('submit', async (event) => {
        event.preventDefault();

        const productName = document.getElementById('productName').value;
        const productPrice = document.getElementById('productPrice').value;
        const productDescription = document.getElementById('productDescription').value;
        const productImage = document.getElementById('productImage').value;

        // Here, you would typically send the product data to a server for storage.
        // For this example, we'll just log the data to the console.
        console.log({
            name: productName,
            price: productPrice,
            description: productDescription,
            image: productImage,
        });

        // Create a new product card and append it to the product list
        const newProductCard = document.createElement('div');
        newProductCard.classList.add('product-card');
        newProductCard.innerHTML = `
            <img src=${productImage} alt=${productName}>
            <h2>${productName}</h2>
            <p>${productPrice} TON</p>
            <p>${productDescription}</p>
        `;
        productList.appendChild(newProductCard);

        // Clear the form fields
        addProductForm.reset();
    });
});

// TonConnect Wallet Integration
document.addEventListener('DOMContentLoaded', () => {
    const connectWalletButton = document.getElementById('connectWallet');
    const tonconnect = new TonConnect({
        manifestUrl: 'https://rekt-developer.github.io/Rekt-Store/tonconnect-manifest.json', // Update with your manifest URL
    });

    connectWalletButton.addEventListener('click', () => {
        tonconnect.connect();
    });

    tonconnect.on('connect', (account) => {
        console.log('Connected to wallet:', account);
    });

    tonconnect.on('disconnect', () => {
        console.log('Disconnected from wallet');
    });
});

