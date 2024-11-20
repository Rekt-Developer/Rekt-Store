#!/bin/bash

# Function to create a directory and handle errors
create_directory() {
    local dir=$1
    if mkdir -p "$dir"; then
        echo "Created directory: $dir"
    else
        echo "Failed to create directory: $dir"
        exit 1
    fi
}

# Function to create a file and handle errors
create_file() {
    local file=$1
    if touch "$file"; then
        echo "Created file: $file"
    else
        echo "Failed to create file: $file"
        exit 1
    fi
}

# Function to write content to a file and handle errors
write_to_file() {
    local file=$1
    local content=$2
    if echo "$content" > "$file"; then
        echo "Wrote content to: $file"
    else
        echo "Failed to write content to: $file"
        exit 1
    fi
}

# Function to generate HTML content
generate_html() {
    local file=$1
    local template=$2
    if cat > "$file" << 'EOL'
        $template
    EOL
    then
        echo "Generated HTML content for: $file"
    else
        echo "Failed to generate HTML content for: $file"
        exit 1
    fi
}

# Function to generate CSS content
generate_css() {
    local file=$1
    local template=$2
    if cat > "$file" << 'EOL'
        $template
    EOL
    then
        echo "Generated CSS content for: $file"
    else
        echo "Failed to generate CSS content for: $file"
        exit 1
    fi
}

# Function to generate JS content
generate_js() {
    local file=$1
    local template=$2
    if cat > "$file" << 'EOL'
        $template
    EOL
    then
        echo "Generated JS content for: $file"
    else
        echo "Failed to generate JS content for: $file"
        exit 1
    fi
}

# Function to generate JSON content
generate_json() {
    local file=$1
    local template=$2
    if cat > "$file" << 'EOL'
        $template
    EOL
    then
        echo "Generated JSON content for: $file"
    else
        echo "Failed to generate JSON content for: $file"
        exit 1
    fi
}

# Function to generate README content
generate_readme() {
    local file=$1
    local template=$2
    if cat > "$file" << 'EOL'
        $template
    EOL
    then
        echo "Generated README content for: $file"
    else
        echo "Failed to generate README content for: $file"
        exit 1
    fi
}

# Main script execution
echo "Starting advanced setup for Rekt-Store..."

# Project Structure
echo "Setting up project files and directories..."
create_directory "css"
create_directory "js"
create_directory "data"
create_directory "images"
create_directory "admin"

create_file "index.html"
create_file "admin.html"
create_file ".gitignore"
create_file "README.md"
create_file "admin/README.md"
create_file "config.json"
create_file "package.json"

# Generate Main Storefront
generate_html "index.html" "
<!DOCTYPE html>
<html lang=\"en\">
<head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <meta name=\"description\" content=\"Rekt-Store: A futuristic marketplace for crypto enthusiasts.\">
    <meta property=\"og:title\" content=\"Rekt-Store\">
    <meta property=\"og:description\" content=\"Explore and trade products with TonConnect wallet integration.\">
    <meta property=\"og:image\" content=\"https://via.placeholder.com/1200x630\">
    <meta property=\"og:url\" content=\"https://rekt-developer.github.io/Rekt-Store/\">
    <title>Rekt-Store</title>
    <link rel=\"stylesheet\" href=\"css/style.css\">
    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">
    <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap\" rel=\"stylesheet\">
</head>
<body>
    <header class=\"header\">
        <nav class=\"navbar\">
            <a href=\"#\" class=\"brand\"><img src=\"images/logo.svg\" alt=\"Rekt-Store Logo\"></a>
            <ul class=\"nav-links\">
                <li><a href=\"#store\">Store</a></li>
                <li><a href=\"admin.html\">Admin</a></li>
                <li><button id=\"connectWallet\">Connect Wallet</button></li>
            </ul>
        </nav>
    </header>
    <main>
        <section id=\"store\" class=\"store-section\">
            <h1>Welcome to Rekt-Store</h1>
            <div id=\"productGrid\" class=\"product-grid\">
                <!-- Products dynamically loaded here -->
            </div>
        </section>
    </main>
    <footer>
        <p>&copy; 2024 Rekt-Store. Powered by <a href=\"https://ton.org\" target=\"_blank\">TON</a>.</p>
    </footer>
    <!-- TonConnect Wallet Integration -->
    <script src=\"https://unpkg.com/@tonconnect/sdk@latest/dist/tonconnect.min.js\"></script>
    <script src=\"js/tonconnect.js\"></script>
    <script src=\"js/main.js\"></script>
</body>
</html>
"

# Generate Admin Panel
generate_html "admin.html" "
<!DOCTYPE html>
<html lang=\"en\">
<head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <title>Admin Panel - Rekt-Store</title>
    <link rel=\"stylesheet\" href=\"css/style.css\">
</head>
<body>
    <header class=\"header\">
        <nav class=\"navbar\">
            <a href=\"index.html\" class=\"brand\"><img src=\"images/logo.svg\" alt=\"Rekt-Store Logo\"></a>
            <ul class=\"nav-links\">
                <li><a href=\"index.html\">Store</a></li>
                <li><button id=\"connectWallet\">Connect Wallet</button></li>
            </ul>
        </nav>
    </header>
    <main>
        <section class=\"admin-panel\">
            <h1>Admin Panel</h1>
            <form id=\"addProductForm\">
                <input type=\"text\" id=\"productName\" placeholder=\"Product Name\" required>
                <input type=\"number\" id=\"productPrice\" placeholder=\"Price (TON)\" required>
                <textarea id=\"productDescription\" placeholder=\"Description\" required></textarea>
                <input type=\"url\" id=\"productImage\" placeholder=\"Image URL\" required>
                <button type=\"submit\">Add Product</button>
            </form>
            <div id=\"productList\">
                <!-- Products dynamically listed here -->
            </div>
        </section>
    </main>
    <footer>
        <p>&copy; 2024 Rekt-Store. Managed by admins with â¤ï¸ for crypto.</p>
    </footer>
    <!-- TonConnect Wallet Integration -->
    <script src=\"https://unpkg.com/@tonconnect/sdk@latest/dist/tonconnect.min.js\"></script>
    <script src=\"js/tonconnect.js\"></script>
    <script src=\"js/admin.js\"></script>
</body>
</html>
"

# Generate Advanced CSS
generate_css "css/style.css" "
:root {
  --primary-color: #1a1a1a;
  --secondary-color: #f9f9f9;
  --accent-color: #ff0000;
  --text-color: #333;
  --background-color: #f9f9f9;
  --font Family
  --font-family: 'Roboto', sans-serif;
  -- Transition Duration
  --transition-duration: 0.3s;
}

@media (prefers-color-scheme: dark) {
  :root {
    --primary-color: #f9f9f9;
    --secondary-color: #1a1a1a;
    --text-color: #fff;
    --background-color: #1a1a1a;
  }
}

body {
    font-family: var(--font-family);
    margin: 0;
    padding: 0;
    background-color: var(--background-color);
    color: var(--text-color);
    transition: background-color var(--transition-duration), color var(--transition-duration);
}

.header {
    background: var(--primary-color);
    color: var(--secondary-color);
    padding: 1rem;
}

.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.nav-links {
    list-style: none;
    display: flex;
    gap: 1rem;
}

.nav-links a, button {
    color: var(--secondary-color);
    text-decoration: none;
    transition: color var(--transition-duration);
}

.nav-links a:hover, button:hover {
    color: var(--accent-color);
}

.store-section, .admin-panel {
    padding: 2rem;
}

.product-grid {
    display: flex;
    flex-wrap: wrap;
    gap: 1rem;
    justify-content: center;
}

.product-card {
    border: 1px solid #ddd;
    padding: 1rem;
    width: 200px;
    background: var(--secondary-color);
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    transition: transform var(--transition-duration);
}

.product-card:hover {
    transform: translateY(-10px);
}

.product-card img {
    width: 100%;
    border-radius: 8px;
}

h1, h2 {
    font-size: 2rem;
    margin-bottom: 1rem;
}

@media (max-width: 768px) {
    h1, h2 {
        font-size: 1.5rem;
    }

    .product-card {
        width: 100%;
    }
}
"

# Generate Advanced JavaScript
generate_js "js/main.js" "
// Product Grid Loader
document.addEventListener('DOMContentLoaded', async () => {
    try {
        const response = await fetch('data/products.json');
        const { products } = await response.json();
        const productGrid = document.getElementById('productGrid');

        products.forEach(product => {
            const card = document.createElement('div');
            card.classList.add('product-card');
            card.innerHTML = \`
                <img src="\${product.image}" alt="\${product.name}">
                <h2>\${product.name}</h2>
                <p>\${product.price} TON</p>
                <p>\${product.description}</p>
            \`;
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
"

generate_js "js/admin.js" "
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
        newProductCard.innerHTML = \`
            <img src="\${productImage}" alt="\${productName}">
            <h2>\${productName}</h2>
            <p>\${productPrice} TON</p>
            <p>\${productDescription}</p>
        \`;
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
"

# Create other scripts, data, and README
generate_json "data/products.json" "
{
    \"products\": [
        {
            \"id\": 1,
            \"name\": \"TON Wallet\",
            \"price\": 15.00,
            \"description\": \"Secure TON wallet for crypto assets.\",
            \"image\": \"https://via.placeholder.com/150\"
        },
        {
            \"id\": 2,
            \"name\": \"TON T-Shirt\",
            \"price\": 10.00,
            \"description\": \"Premium crypto merch for enthusiasts.\",
            \"image\": \"https://via.placeholder.com/150\"
        }
    ]
}
"

# README.md
generate_readme "README.md" "
# Rekt-Store

Welcome to **Rekt-Store**, a modern storefront with advanced UI and TonConnect wallet integration.

Features:
- Wallet connection using **TonConnect**.
- Modern, fully responsive design.
- Dynamic product management (CRUD) via **Admin Panel**.
- Secure admin panel with configuration via `config.json`.
- SEO-friendly and deployable via **GitHub Pages**.

## How to Run
1. Clone this repository.
2. Set up your admin panel by creating a `config.json` file in the root directory with the following structure:
\```json
{
  \"adminUsername\": \"your_admin_username\",
  \"adminPassword\": \"your_admin_password\"
}
\```
3. Open `index.html` for the store.
4. Open `admin.html` for product management.

Live Demo: [Rekt-Store GitHub Pages](https://rekt-developer.github.io/Rekt-Store/)

## TonConnect Wallet Integration
To integrate TonConnect, follow these steps:
1. Create a `tonconnect-manifest.json` file in the root directory with the following structure:
\```json
{
  \"url\": \"https://rekt-developer.github.io/Rekt-Store/\",
  \"name\": \"Rekt-Store\",
  \"iconUrl\": \"https://rekt-developer.github.io/Rekt-Store/images/logo.svg\",
  \"termsOfServiceUrl\": \"https://rekt-developer.github.io/Rekt-Store/terms\",
  \"privacyPolicyUrl\": \"https://rekt-developer.github.io/Rekt-Store/privacy\"
}
\```
2. Update the `js/main.js` and `js/admin.js` files with your TonConnect manifest URL and wallet address.

## Security
- Ensure the `config.json` file is secure and not committed to public repositories.
- Follow best practices for handling sensitive data.

## Advanced Features
- Implement additional features as needed, such as user authentication, product categories, and more.
"

# Create config.json for admin panel security
generate_json "config.json" "
{
  \"adminUsername\": \"\",
  \"adminPassword\": \"\"
}
"

# Create package.json for npm
generate_json "package.json" "
{
  \"name\": \"rekt-store\",
  \"version\": \"1.0.0\",
  \"description\": \"A modern storefront with advanced UI and TonConnect wallet integration\",
  \"main\": \"index.html\",
  \"scripts\": {
    \"start\": \"live-server\",
    \"build\": \"cp -r . dist/\"
  },
  \"keywords\": [
    \"crypto\",
    \"storefront\",
    \"TonConnect\",
    \"responsive\",
    \"modern\"
  ],
  \"author\": \"Your Name\",
  \"license\": \"MIT\",
  \"dependencies\": {
    \"@tonconnect/sdk\": \"latest\"
  },
  \"devDependencies\": {
    \"live-server\": \"^1.2.1\"
  }
}
"

echo "Project setup complete. You can now start working on your Rekt-Store project!"
