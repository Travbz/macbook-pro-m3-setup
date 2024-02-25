#!/bin/bash

# Install Homebrew (if not already installed)
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    
    # Add Homebrew to the PATH
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/travops/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install Git
brew install git

# Install iTerm
brew install --cask iterm2

# Install Docker
brew install docker

# Install VirtualBox (required for Minikube)
brew install --cask virtualbox

# Install Minikube
brew install minikube

# Install AWS CLI
brew install awscli

# Install kubectl
brew install kubectl

# Install kubectx
brew install kubectx

# Install Poetry
brew install poetry

# Install k9s
brew install k9s

# Install Helm
brew install helm

# Install Visual Studio Code
brew install --cask visual-studio-code

# Install Tree (idk i just like this one)
brew install tree

# Install Rectangle window manager
brew install rectangle 

# Install tfenv
brew install tfenv

# Set Up Terraform Version
tfenv install 1.5.7
tfenv install 1.2.2
tfenv install 1.0.2
tfenv use 1.5.7

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Display installed versions
echo "Installed versions:"
echo "iTerm2: $(iterm2 --version)"
echo "Docker: $(docker --version)"
echo "VirtualBox: $(VBoxManage --version)"
echo "Minikube: $(minikube version)"
echo "AWS CLI: $(aws --version)"
echo "kubectl: $(kubectl version --client --short)"
echo "kubectx: $(kubectx --version)"
echo "Poetry: $(poetry --version)"
echo "k9s: $(k9s version)"
echo "Visual Studio Code: $(code --version)"
echo "Installed Tfenv"

## Uncomment below to add GNU flavorings to brew
# echo "Setting up brew"
# chmod +x setup-brew.sh
# ./setup-brew.sh

## Uncomment below to set up jupyter notebooks
# brew install jupyter

echo "Setup complete!"

echo "run the following command to set up your ~/.ssh directory, be sure to use your email"
echo "ssh-keygen -t ed25519 -C "your-email@company.com"
 