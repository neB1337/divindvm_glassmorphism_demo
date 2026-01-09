# Quick Start Guide

Kurze Anleitung zum Starten des glassmorphic-kit Projekts.

## Voraussetzungen

- Node.js und npm installiert
- http-server installiert (wird automatisch installiert, oder global: `npm install -g http-server`)

## Schritte zum Starten

### 1. Abhängigkeiten installieren

```bash
cd glassmorphic-kit
npm install
```

Dies installiert alle erforderlichen Pakete und buildet das Projekt automatisch.

### 2. (Optional) Entwicklungsmodus starten

Für automatisches Rebuilden bei Dateiänderungen:

```bash
npm run dev
```

Der Watch-Modus überwacht die Dateien und rebuildet bei Änderungen.

### 3. HTTP-Server starten

In einem neuen Terminal:

```bash
cd glassmorphic-kit
http-server -p 8080 -a localhost
```

### 4. Demo-Seiten im Browser öffnen

Öffnen Sie eine der folgenden URLs in Ihrem Browser:

- **Standard-Demo**: http://localhost:8080/demo.html
- **React-Demo**: http://localhost:8080/demo-react.html
- **Angular-Demo**: http://localhost:8080/demo-angular.html

## Verfügbare npm-Befehle

| Befehl | Beschreibung |
|--------|-------------|
| `npm run build` | Buildet das Projekt mit Rollup |
| `npm run dev` | Startet Watch-Modus für Entwicklung |
| `npm run type-check` | Führt TypeScript-Typprüfung durch |
| `npm run lint` | ESLint-Überprüfung durchführen |
| `npm test` | Tests ausführen (Jest) |

## Troubleshooting

**Problem**: `npm install -g http-server` funktioniert nicht
- **Lösung**: Verwenden Sie stattdessen `npx http-server -p 8080 -a localhost`

**Problem**: Port 8080 ist bereits belegt
- **Lösung**: Ändern Sie den Port, z.B. `http-server -p 3000 -a localhost`

**Problem**: Demo-Seiten werden nicht angezeigt
- **Lösung**: Stellen Sie sicher, dass Sie die richtige URL besuchen (z.B. http://localhost:8080/demo.html)

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
