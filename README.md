# typst-template

Dieses Repository enthält eine Vorlage für das Verfassen einer Projektarbeit oder einer Bachelorarbeit. Es kann an spezifische Anforderungen angepasst und erweitert werden.

---

## Installation

- Linux: View [Typst on Repology][repology]
- macOS: `brew install typst`
- Windows: `winget install --id Typst.Typst`

Weitere Infos gibt es unter [Typst][typst-in]

## Nutzung

### Aufbau

- `metadata.typ`: Wichtigen Daten der Arbeit (automatisch eingesetzt)
- `abstract.typ`: Abstract
- `acknowledgement.typ`: Danksagung
- `appendix.typ`: Anhang
- `thesis.typ`: Hauptabschnitt

### Bauen der PDF

Wenn Typst installiert ist:

```sh
# Creates `thesis.pdf` in working directory.
typst compile thesis.typ

# Creates PDF file at the desired path.
typst compile thesis.typ path/to/output.pdf
```

Das bauen nach abspeichern der Datei:

```sh
# Watches source files and recompiles on changes.
typst watch thesis.typ
```

### Typst

Die Dokumentation von [Typst][typst]

[repology]: https://repology.org/project/typst/versions
[typst]: https://typst.app/docs/
[typst-in]: https://github.com/typst/typst
