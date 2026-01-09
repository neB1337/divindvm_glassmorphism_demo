# Quick Start Guide

Kurze Anleitung zum Starten des glassmorphic-kit Projekts.

## Voraussetzungen

- Node.js (v14+) und npm installiert
- Windows, macOS oder Linux
- Ein moderner Webbrowser (Chrome, Firefox, Safari, Edge)

## ⚡ Schnellstart mit startup-Skript (Empfohlen)

### Windows

1. **Öffne den Explorer** und navigiere zum Projektordner `glassmorphic-kit`
2. **Doppelklick** auf `startup.bat`
3. **Fertig!** Das Skript wird automatisch:
   - Alle Abhängigkeiten installieren
   - Das Projekt bauen
   - HTTP-Server starten
   - Die Demo im Browser öffnen

```bash
startup.bat
```

### macOS / Linux

1. **Terminal öffnen** im Projektordner `glassmorphic-kit`
2. **Berechtigungen setzen:**
   ```bash
   chmod +x startup.sh
   ```
3. **Skript ausführen:**
   ```bash
   ./startup.sh
   ```

## Demo-Seiten

Nach erfolgreicher Ausführung des Startup-Skripts sind automatisch verfügbar:

- **Standard-Demo**: http://localhost:8080/demo.html
- **React-Demo**: http://localhost:8080/demo-react.html
- **Angular-Demo**: http://localhost:8080/demo-angular.html



## Weitere npm-Befehle (für fortgeschrittene Nutzer)

Für Entwicklung und Customization:

| Befehl | Beschreibung |
|--------|-------------|
| `npm run dev` | Startet Watch-Modus für Entwicklung (Auto-Rebuild) |
| `npm run build` | Buildet das Projekt mit Rollup |
| `npm run type-check` | Führt TypeScript-Typprüfung durch |
| `npm run lint` | ESLint-Überprüfung durchführen |
| `npm test` | Tests ausführen (Jest) |

Starten Sie diese Befehle in separaten Terminals im Projektordner `glassmorphic-kit`.

## Troubleshooting

### Startup-Skript Probleme

**Problem**: `startup.bat` wird nicht ausgeführt (Windows)
- **Lösung**: 
  - Klick-Rechts auf `startup.bat` → "Mit PowerShell öffnen"
  - Oder führe in PowerShell/CMD aus: `.\startup.bat`
  - Falls Fehler: Überprüfe, dass Node.js/npm installiert sind

**Problem**: `startup.sh` funktioniert nicht (macOS/Linux)
- **Lösung**:
  - Stelle sicher, dass das Skript ausführbar ist: `chmod +x startup.sh`
  - Starte mit: `./startup.sh`

### Allgemeine Probleme

**Problem**: npm ist nicht installiert
- **Lösung**: Installiere Node.js von https://nodejs.org/ (v14+)

**Problem**: Port 8080 ist bereits belegt
- **Lösung**: 
  - Ändere den Port in der Datei `startup.bat` oder `startup.sh`
  - Oder beende das Programm, das Port 8080 nutzt

**Problem**: Demo-Seiten werden nicht angezeigt
- **Lösung**: 
  - Überprüfe, dass der Server läuft: http://localhost:8080 im Browser
  - Stelle sicher, dass du die richtige URL besuchst
  - Leere den Browser-Cache (Ctrl+Shift+Delete)

**Problem**: Browser wird nicht automatisch geöffnet
- **Lösung**: Öffne manuell http://localhost:8080/demo.html im Browser

## Projektstruktur

```
glassmorphic-kit/
├── src/              # Quellcode
│   ├── core/        # Kern-Komponenten
│   ├── react/       # React-Komponenten
│   ├── angular/     # Angular-Komponenten
│   ├── styles/      # Styling
│   └── types/       # TypeScript-Typen
├── examples/        # Beispiele
├── dist/            # Gebaute Distribution (wird automatisch generiert)
├── demo.html        # Standard-Demo
├── demo-react.html  # React-Demo
└── demo-angular.html # Angular-Demo
```

## Weitere Informationen

Siehe [README.md](README.md) für vollständige Dokumentation der Komponenten und API.
