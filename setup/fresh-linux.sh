#!/bin/bash

DISTRIBUTION=$(lsb_release -si)
VERSION=$(lsb_release -sr)

# First update and upgrade
sudo apt-get update && sudo apt-get dist-upgrade -y

# Add base stuff
sudo apt-get install \
	curl \
	apt-transport-https \
	ca-certificates \
	gnupg \
	lsb-release \
	-y

# Install zsh
sudo apt-get install zsh -y

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Copy zsh config
cp .zshrc ~/.zshrc

# Apply config
source ~/.zshrc

# Install GitHub CLI
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg \
	| sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo \
	"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" \
	| sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt-get update
sudo apt-get install gh

# Add dependencies for Microsoft
wget https://packages.microsoft.com/config/${DISTRIBUTION:l}/$VERSION/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

# Install dotnet
sudo apt-get update; \
  sudo apt-get install -y dotnet-sdk-5.0

# Install powershell
sudo apt-get install powershell -y

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker 

# Install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash