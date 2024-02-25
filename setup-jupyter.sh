#!/bin/bash

# Check if Homebrew is installed, if not, install it
if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Check if Python is installed, if not, install it
if ! command -v python3 &> /dev/null; then
    echo "Python not found. Installing Python..."
    brew install python
fi

# Check if pip is installed, if not, install it
if ! command -v pip3 &> /dev/null; then
    echo "pip not found. Installing pip..."
    python3 -m ensurepip
fi

# Create a virtual environment and activate it
python3 -m venv venv
source venv/bin/activate

# Upgrade pip
python -m pip install --upgrade pip

# Install Jupyter Notebook
python -m pip install jupyter

echo "Jupyter Notebook installed successfully."


