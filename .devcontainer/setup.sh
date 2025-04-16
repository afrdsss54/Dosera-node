#!/bin/bash
set -e

echo "🛠️  Updating & installing dependencies..."
sudo apt-get update && sudo apt-get upgrade -y

sudo apt install -y curl git wget build-essential lz4 jq make gcc nano automake autoconf \
tmux htop pkg-config libssl-dev libgbm1 libleveldb-dev clang unzip tar ncdu

# Docker support
echo "🐳 Installing Docker..."
sudo apt-get install -y docker.io docker-compose
sudo usermod -aG docker vscode

# Install Foundry
echo "🧱 Installing Foundry..."
curl -L https://foundry.paradigm.xyz | bash
echo 'source ~/.bashrc' >> ~/.bash_profile
source ~/.bash_profile
foundryup

# Install Bun
echo "🥐 Installing Bun..."
curl -fsSL https://bun.sh/install | bash
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Install Drosera CLI
echo "🕷️ Installing Drosera CLI..."
curl -L https://app.drosera.io/install | bash
export PATH="$HOME/.cargo/bin:$PATH"

# Setup done
echo "✅ Setup complete. You can now deploy your Trap!"
