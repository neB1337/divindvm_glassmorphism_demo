#!/bin/bash
# Glassmorphic-Kit Startup Script
# Dieses Skript startet das Projekt, buildet es und öffnet die Demo im Browser

echo "======================================"
echo "Glassmorphic-Kit Projekt Startup"
echo "======================================"
echo ""

# Überprüfe, ob npm installiert ist
if ! command -v npm &> /dev/null; then
    echo "Fehler: npm ist nicht installiert."
    echo "Bitte Node.js von https://nodejs.org/ installieren."
    exit 1
fi

echo "[1/4] Installiere Abhängigkeiten..."
npm install

if [ $? -ne 0 ]; then
    echo "Fehler beim Installieren der Abhängigkeiten."
    exit 1
fi

echo ""
echo "[2/4] Installiere http-server (für Demo-Server)..."
npm install -D http-server

if [ $? -ne 0 ]; then
    echo "Fehler beim Installieren von http-server."
    exit 1
fi

echo ""
echo "[3/4] Baue Projekt..."
npm run build

if [ $? -ne 0 ]; then
    echo "Fehler beim Bauen des Projekts."
    exit 1
fi

echo ""
echo "[4/4] Starte HTTP-Server und öffne Demo..."

# Starte den HTTP-Server im Hintergrund
npx http-server -p 8080 -c-1 &
SERVER_PID=$!

# Warte kurz, damit der Server startet
sleep 2

# Öffne die Demo im Standard-Browser
if command -v open &> /dev/null; then
    # macOS
    open http://localhost:8080/demo.html
elif command -v xdg-open &> /dev/null; then
    # Linux
    xdg-open http://localhost:8080/demo.html
else
    echo "Browser konnte nicht automatisch geöffnet werden."
    echo "Öffne manuell: http://localhost:8080/demo.html"
fi

echo ""
echo "======================================"
echo "Startup erfolgreich abgeschlossen!"
echo "======================================"
echo ""
echo "HTTP-Server läuft auf http://localhost:8080"
echo "Server PID: $SERVER_PID"
echo ""
echo "Verfügbare Demos:"
echo "- http://localhost:8080/demo.html"
echo "- http://localhost:8080/demo-react.html"
echo "- http://localhost:8080/demo-angular.html"
echo ""
echo "Verfügbare Befehle in VS Code:"
echo "- npm: install    - Abhängigkeiten installieren"
echo "- npm: build      - Projekt bauen"
echo "- npm: dev        - Watch Mode starten (auto-rebuild)"
echo "- npm: type-check - TypeScript überprüfen"
echo "- npm: lint       - Code analysieren"
echo ""
echo "Drücke Ctrl+Shift+B um Tasks zu öffnen."
echo "Zum Beenden des Servers: kill $SERVER_PID oder Ctrl+C"
echo ""
