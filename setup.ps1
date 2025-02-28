# Setup script for Chickensoft documentation
Write-Host "Setting up Chickensoft documentation..." -ForegroundColor Green

# Check if Python is installed
try {
  python --version
}
catch {
  Write-Host "Python is not installed or not in PATH. Please install Python 3.7 or higher." -ForegroundColor Red
  exit 1
}

# Create virtual environment if it doesn't exist
if (-not (Test-Path "venv")) {
  Write-Host "Creating virtual environment..." -ForegroundColor Yellow
  python -m venv venv
}

# Activate virtual environment
Write-Host "Activating virtual environment..." -ForegroundColor Yellow
& .\venv\Scripts\Activate.ps1

# Install dependencies
Write-Host "Installing dependencies..." -ForegroundColor Yellow
pip install -r requirements.txt

Write-Host "Setup complete!" -ForegroundColor Green
Write-Host "Run 'mkdocs serve' to start the development server." -ForegroundColor Cyan 