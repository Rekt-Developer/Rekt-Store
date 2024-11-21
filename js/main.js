
// Product Grid Loader
document.addEventListener('DOMContentLoaded', async () => {
    try {
        const response = await fetch('data/products.json');
        const { products } = await response.json();
        const productGrid = document.getElementById('productGrid');

        products.forEach(product => {
            const card = document.createElement('div');
            card.classList.add('product-card');
            card.innerHTML = `
                <img src=${product.image} alt=${product.name}>
                <h2>${product.name}</h2>
                <p>${product.price} TON</p>
                <p>${product.description}</p>
            `;
            productGrid.appendChild(card);
        });
    } catch (error) {
        console.error('Error loading products:', error);
    }
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

