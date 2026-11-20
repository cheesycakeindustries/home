# ClipStack – erweiterte Zwischenablage für macOS

Kleine Menüleisten-App (ohne Dock-Symbol), die sich alles merkt, was du kopierst.

| Kürzel | Funktion |
|---|---|
| **⌘C** | Kopiert wie gewohnt, der Eintrag landet zusätzlich im Verlauf |
| **⌘V** | Fügt wie gewohnt das zuletzt Kopierte ein |
| **⇧⌘V** | Öffnet den Verlauf zum Auswählen |

Im Verlaufsfenster:

- Tippen → durchsuchen
- **↑ / ↓** → auswählen, **⏎** oder Doppelklick → einfügen
- **⌘1 … ⌘9** → Eintrag 1–9 sofort einfügen
- **⌘⌫** → Eintrag aus dem Verlauf entfernen
- **esc** → schließen

Gespeichert werden Text (mit Formatierung), Bilder und kopierte Dateien aus dem Finder. Standardmäßig sind es die letzten 50 Einträge.

## Installation auf dem Mac

1. Einmalig die Entwicklerwerkzeuge installieren (Terminal):
   ```bash
   xcode-select --install
   ```
2. Das Repository holen und bauen:
   ```bash
   git clone https://github.com/cheesycakeindustries/home.git
   cd home/ClipStack
   chmod +x build.sh
   ./build.sh --install
   ```
3. **Bedienungshilfen erlauben:** Beim ersten Start fragt macOS danach.
   *Systemeinstellungen → Datenschutz & Sicherheit → Bedienungshilfen → ClipStack einschalten.*
   Ohne diese Freigabe landet der gewählte Eintrag nur in der Zwischenablage, und du drückst danach selbst ⌘V.
4. **Autostart:** Klick auf das Symbol in der Menüleiste und dann auf „Beim Anmelden starten“ (ab macOS 13).

## Gut zu wissen

- **⇧⌘V ist in manchen Apps schon belegt**, zum Beispiel mit „Einfügen und Stil anpassen“ in Pages, Word, Chrome oder Mail. Solange ClipStack läuft, öffnet das Kürzel überall den Verlauf.
- **Passwörter:** Einträge, die Passwort-Manager als vertraulich markieren (1Password, Bitwarden usw.), werden nicht gespeichert.
- **Speicherort:** `~/Library/Application Support/ClipStack/history.json` (unverschlüsselt).
- **Nach einem Neubau** musst du die Bedienungshilfen-Freigabe eventuell neu setzen, weil sich die Signatur ändert. Dazu ClipStack in der Liste mit „–“ entfernen und wieder hinzufügen.
- **Anzahl der Einträge ändern** (z. B. auf 100):
  ```bash
  defaults write com.cheesycakeindustries.ClipStack maxItems 100
  ```
  Danach ClipStack neu starten.
- **„Automatisch einfügen“** lässt sich im Menü ausschalten. Dann kopiert die Auswahl den Eintrag nur in die Zwischenablage.
