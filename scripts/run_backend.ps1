# Starts the FastAPI backend with uvicorn
$ErrorActionPreference = "Stop"
Write-Host "Starting CO-ATTAIN PRO AI Backend on http://localhost:8000..." -ForegroundColor Cyan

if (Test-Path ".\.venv\Scripts\python.exe") {
    .\.venv\Scripts\python.exe -m uvicorn backend.app.main:app --host 0.0.0.0 --port 8000 --reload
} else {
    python -m uvicorn backend.app.main:app --host 0.0.0.0 --port 8000 --reload
}
