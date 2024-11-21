
# Rekt-Store

Welcome to **Rekt-Store**, a modern storefront with advanced UI and TonConnect wallet integration.

## Features
- Wallet connection using **TonConnect**.
- Modern, fully responsive design.
- Dynamic product management (CRUD) via **Admin Panel**.
- Secure admin panel with configuration via .
- SEO-friendly and deployable via **GitHub Pages**.

## How to Run
1. Clone this repository.
2. Set up your admin panel by creating a  file in the root directory with the following structure:
`json
{
  "adminUsername": "your_admin_username",
  "adminPassword": "your_admin_password"
}
`
3. Open  for the store.
4. Open  for product management.

Live Demo: [Rekt-Store GitHub Pages](https://rekt-developer.github.io/Rekt-Store/)

## TonConnect Wallet Integration
To integrate TonConnect, follow these steps:
1. Create a  file in the root directory with the following structure:
`json
{
  "url": "https://rekt-developer.github.io/Rekt-Store/",
  "name": "Rekt-Store",
  "iconUrl": "https://rekt-developer.github.io/Rekt-Store/images/logo.svg",
  "termsOfServiceUrl": "https://rekt-developer.github.io/Rekt-Store/terms",
  "privacyPolicyUrl": "https://rekt-developer.github.io/Rekt-Store/privacy"
}
`
2. Update the  and  files with your TonConnect manifest URL and wallet address.

## Security
- Ensure the  file is secure and not committed to public repositories.
- Follow best practices for handling sensitive data.

## Advanced Features
- Implement additional features as needed, such as user authentication, product categories, and more.

## Support and Donations
For support, join our Telegram channel: [Rekt Developers](https://t.me/RektDevelopers)

Donations are greatly appreciated:
- Ethereum: 0x3A06322e9F1124F6B2de8F343D4FDce4D1009869

Author: Likhon Sheikh

