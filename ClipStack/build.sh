#!/bin/bash
# Baut ClipStack.app. Mit --install wird die App nach /Applications kopiert und gestartet.
set -euo pipefail
cd "$(dirname "$0")"

if ! command -v swiftc >/dev/null 2>&1; then
  echo "swiftc fehlt. Bitte zuerst die Xcode Command Line Tools installieren:"
  echo "  xcode-select --install"
  exit 1
fi

APP="build/ClipStack.app"
rm -rf "$APP"
mkdir -p "$APP/Contents/MacOS" "$APP/Contents/Resources"

echo "→ Kompiliere …"
swiftc -O Sources/main.swift \
  -o "$APP/Contents/MacOS/ClipStack" \
  -framework Cocoa -framework Carbon -framework ServiceManagement

cp Info.plist "$APP/Contents/Info.plist"

echo "→ Signiere (ad-hoc) …"
codesign --force --sign - "$APP"

echo "✓ Fertig: $(pwd)/$APP"

if [[ "${1:-}" == "--install" ]]; then
  pkill -x ClipStack 2>/dev/null || true
  rm -rf /Applications/ClipStack.app
  ditto "$APP" /Applications/ClipStack.app
  echo "✓ Installiert nach /Applications/ClipStack.app"
  open /Applications/ClipStack.app
fi
