Write-Host ""
Write-Host "Starting PySpark Training Lab setup..."

# Move to repository root (one folder above scripts)
Set-Location -Path $PSScriptRoot\..

Write-Host ""
Write-Host "Creating project folders..."

# Create folders (PowerShell will silently ignore duplicates)
New-Item -ItemType Directory -Path "notebooks" -Force | Out-Null
Write-Host "  - notebooks ready"

New-Item -ItemType Directory -Path "src" -Force | Out-Null
Write-Host "  - src ready"

New-Item -ItemType Directory -Path "data" -Force | Out-Null
Write-Host "  - data ready"

New-Item -ItemType Directory -Path "scripts" -Force | Out-Null
Write-Host "  - scripts ready"

Write-Host ""
Write-Host "Creating uv virtual environment (.venv)..."

# Create environment (uv will reuse if already exists)
uv venv .venv

Write-Host ""
Write-Host "Activating environment..."
. ".venv\Scripts\activate"

Write-Host ""
Write-Host "Installing Python dependencies..."

uv pip install pyspark==3.5.0
uv pip install pandas==2.1.4
uv pip install numpy==1.26.4
uv pip install pyarrow==14.0.2
uv pip install fsspec
uv pip install jupyter
uv pip install matplotlib

# Add findspark
uv pip install findspark

Write-Host ""
Write-Host "Creating requirements.txt..."
uv pip freeze > requirements.txt

Write-Host ""
Write-Host "Setup complete!"
Write-Host "-------------------------------------------"
Write-Host "Launch VS Code:        code ."
Write-Host "Interpreter path:      .venv/Scripts/python.exe"
Write-Host "Start notebooks in:    notebooks/"
Write-Host "-------------------------------------------"
