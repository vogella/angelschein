# Angelschein-Lernunterlagen

Dieses Repository enthält umfassende Lernmaterialien zur Vorbereitung auf die staatliche Fischerprüfung in Deutschland.

## PDF-Generierung

Die Lernunterlagen können automatisiert aus den Markdown-Dateien in hochwertige PDF-Dokumente umgewandelt werden.

### Voraussetzungen

Um die PDFs zu erzeugen, müssen folgende Tools auf deinem System installiert sein:

1.  **Pandoc**: Ein universeller Dokumentenkonverter.
2.  **TeX Live (mit LuaLaTeX)**: Für die PDF-Erzeugung und Typografie.
3.  **DejaVu Fonts**: Die Standard-Schriftart für die PDF-Ausgabe.

Unter Debian/Ubuntu kannst du die Abhängigkeiten wie folgt installieren:
```bash
sudo apt update
sudo apt install pandoc texlive-latex-base texlive-xetex texlive-luatex fonts-dejavu-core
```

### PDFs erstellen

Nutze das beigefügte `Makefile`, um alle Dokumente in den Ordner `pdfs/` zu exportieren:

```bash
# Erzeugt alle PDFs
make

# Löscht den pdfs/ Ordner
make clean
```

### Konfiguration

Die PDF-Konfiguration (Ränder, Schriftart, Inhaltsverzeichnis) ist im `Makefile` hinterlegt. Es wird die `lualatex`-Engine verwendet, um Unicode-Zeichen (wie O₂ oder ≠) korrekt darzustellen.

---
*Hinweis: Der Ordner `pdfs/` ist in der `.gitignore` enthalten und wird nicht im Repository versioniert.*
