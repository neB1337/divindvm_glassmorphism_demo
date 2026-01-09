@echo off
REM Glassmorphic-Kit Startup Script
REM Dieses Skript startet das Projekt, buildet es und öffnet die Demo im Browser

echo ======================================
echo Glassmorphic-Kit Projekt Startup
echo ======================================
echo.

REM Überprüfe, ob npm installiert ist
where npm >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Fehler: npm ist nicht installiert oder nicht in PATH.
    echo Bitte Node.js von https://nodejs.org/ installieren.
    pause
    exit /b 1
)

echo [1/4] Installiere Abhängigkeiten...
call npm install

if %ERRORLEVEL% NEQ 0 (
    echo Fehler beim Installieren der Abhängigkeiten.
    pause
    exit /b 1
)

echo.
echo [2/4] Installiere http-server (für Demo-Server)...
call npm install -D http-server

if %ERRORLEVEL% NEQ 0 (
    echo Fehler beim Installieren von http-server.
    pause
    exit /b 1
)

echo.
echo [3/4] Baue Projekt...
call npm run build

if %ERRORLEVEL% NEQ 0 (
    echo Fehler beim Bauen des Projekts.
    pause
    exit /b 1
)

echo.
echo [4/4] Starte HTTP-Server und öffne Demo...

REM Starte den HTTP-Server im Hintergrund und öffne die Demo
start /B cmd /C "npx http-server -p 8080 -c-1 -o"
timeout /t 2 /nobreak

REM Öffne die Demo im Standard-Browser
start http://localhost:8080/demo.html

echo.
echo ======================================
echo Startup erfolgreich abgeschlossen!
echo ======================================
echo.
echo HTTP-Server läuft auf http://localhost:8080
echo.
echo Verfügbare Demos:
echo - http://localhost:8080/demo.html
echo - http://localhost:8080/demo-react.html
echo - http://localhost:8080/demo-angular.html
echo.
echo Verfügbare Befehle in VS Code:
echo - npm: install    - Abhängigkeiten installieren
echo - npm: build      - Projekt bauen
echo - npm: dev        - Watch Mode starten (auto-rebuild)
echo - npm: type-check - TypeScript überprüfen
echo - npm: lint       - Code analysieren
echo.
echo Drücke Ctrl+Shift+B um Tasks zu öffnen.
echo Zum Beenden des Servers: Drücke Ctrl+C
echo.
