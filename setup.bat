@echo off
echo Breast Cancer Detection System Setup
echo =====================================
echo.

REM Check if Composer is installed
where composer >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Composer is not installed or not in PATH.
    echo Please install Composer from https://getcomposer.org/
    pause
    exit /b 1
)

REM Install dependencies
echo [1/6] Installing Composer dependencies...
composer install --no-dev --optimize-autoloader

REM Generate application key
echo [2/6] Generating application key...
php artisan key:generate --force

REM Create database
echo [3/6] Setting up database...
echo Please make sure MySQL is running and create a database named 'breast_cancer_detection'
pause

REM Run migrations
echo [4/6] Running database migrations...
php artisan migrate --force

REM Create storage link
echo [5/6] Creating storage link...
php artisan storage:link

REM Create necessary directories
echo [6/6] Creating storage directories...
if not exist "storage\app\public\xray_scans" mkdir "storage\app\public\xray_scans"

echo.
echo Setup completed successfully!
echo.
echo To start the development server, run:
echo php artisan serve
echo.
echo Then visit: http://localhost:8000
echo.
pause