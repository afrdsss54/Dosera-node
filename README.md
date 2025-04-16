# Drosera Node (Codespaces)

## Cara pakai

1. Klik `Code > Codespaces > Create Codespace on main`
2. Tunggu hingga semua instalasi selesai otomatis
3. Jalankan perintah berikut:

```bash
# Set git identity
git config --global user.email "paijanbae212@gmail.com"
git config --global user.name "afrdsss54"

# Init repo
forge init -t drosera-network/trap-foundry-template my-drosera-trap
cd my-drosera-trap

# Install deps & build
bun install
forge build

# Deploy Trap
DROSERA_PRIVATE_KEY=ISI_PRIVATE_KEY_LOE drosera apply
