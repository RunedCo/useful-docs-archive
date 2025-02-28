#!/bin/bash
# Setup script for Chickensoft documentation

echo -e "\033[0;32mSetting up Chickensoft documentation...\033[0m"

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo -e "\033[0;31mPython is not installed or not in PATH. Please install Python 3.7 or higher.\033[0m"
    exit 1
fi

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo -e "\033[0;33mCreating virtual environment...\033[0m"
    python3 -m venv venv
fi

# Activate virtual environment
echo -e "\033[0;33mActivating virtual environment...\033[0m"
source venv/bin/activate

# Install dependencies
echo -e "\033[0;33mInstalling dependencies...\033[0m"
pip install -r requirements.txt

echo -e "\033[0;32mSetup complete!\033[0m"
echo -e "\033[0;36mRun 'mkdocs serve' to start the development server.\033[0m" 