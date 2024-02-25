# DevOps Setup Script

This script automates the setup of a development environment for a DevOps role on a macOS system. It installs essential tools commonly used in DevOps workflows, including iTerm, Cask, Docker, Minikube, AWSCLI, kubectl, kubectx, Poetry, helm, tree, k9s, tfenv, Rectangle(window mgmt), Visual Studio Code, Git, and Homebrew with some GNU flavors.

## Prerequisites

- Make sure you have a macOS system.
- Ensure that you have an internet connection.

## Instructions

1. **Download the Script:**
   Download the `setup.sh` script to your local machine.

2. **Make the Script Executable:**
   Open Terminal and navigate to the directory where you saved the script. Run the following command to make it executable:

   ```bash
   chmod +x devops_setup.sh

3. Execute the script by running the following command:
   ./devops_setup.sh

4. I included a copy of my .zshrc but didnt command it to overwrite the existing one after the OhMyZsh install, its really just my backup.