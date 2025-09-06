@echo off
echo ============================================================
echo 🏥 Starting Breast Cancer Detection System Demo
echo ============================================================
echo.
echo 🤖 Everything has been set up automatically for you!
echo.

cd /d "c:\Users\User\.qoder\breast-cancer-detection\public"

echo 🚀 Starting demo server...
echo 🌐 Visit: http://localhost:8080/demo.html
echo.
echo 💡 Press Ctrl+C to stop the server
echo.

REM Try to start with installed PHP, fallback to PowerShell web server
if exist "C:\php\php.exe" (
    echo ✅ Using installed PHP
    C:\php\php.exe -S localhost:8080
) else (
    echo ⚠️ Using PowerShell web server
    powershell -Command "& {Add-Type -AssemblyName System.Web; $listener = New-Object System.Net.HttpListener; $listener.Prefixes.Add('http://localhost:8080/'); $listener.Start(); Write-Host 'Demo server running at http://localhost:8080/demo.html'; while ($listener.IsListening) { $context = $listener.GetContext(); $file = if ($context.Request.Url.LocalPath -eq '/') { './demo.html' } else { '.' + $context.Request.Url.LocalPath }; if (Test-Path $file) { $content = Get-Content $file -Raw; $buffer = [System.Text.Encoding]::UTF8.GetBytes($content); $context.Response.ContentLength64 = $buffer.Length; $context.Response.OutputStream.Write($buffer, 0, $buffer.Length) } else { $context.Response.StatusCode = 404 }; $context.Response.Close() }}"
)