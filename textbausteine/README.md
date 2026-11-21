# Textbausteine für den Mac

Ziel: `;uiu` tippen → wird automatisch zu „Unterstützung im Unterricht“.

## Weg 1: Eingebaute macOS-Textersetzung (ohne Zusatz-App)

1. **Systemeinstellungen → Tastatur → Textersetzungen…**
2. Auf **+** klicken, links `;uiu`, rechts `Unterstützung im Unterricht` eintragen.
   *Oder:* die Datei `Textersetzungen.plist` aus diesem Ordner direkt in das Fenster ziehen – dann werden alle Einträge auf einmal importiert.
3. Synchronisiert über iCloud auch aufs iPhone/iPad.

Einschränkung: Funktioniert in Apple-Programmen (Pages, Notizen, Mail, Safari, Nachrichten) zuverlässig,
in manchen anderen Programmen (z. B. Chrome, Word, Electron-Apps) nicht oder nur teilweise.

## Weg 2: Espanso (kostenlos, Open Source, funktioniert überall)

1. Installieren: <https://espanso.org/install/mac/> oder per Homebrew: `brew install espanso`
2. Espanso starten und die Bedienungshilfen-Berechtigung erteilen
   (**Systemeinstellungen → Datenschutz & Sicherheit → Bedienungshilfen**).
3. `espanso-textbausteine.yml` kopieren nach
   `~/Library/Application Support/espanso/match/textbausteine.yml`
4. Espanso lädt die Datei automatisch neu – fertig.

Neue Bausteine: in der `.yml` nach dem Muster `trigger` / `replace` ergänzen.
