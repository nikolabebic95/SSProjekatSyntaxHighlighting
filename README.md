# SSProjekatSyntaxHighlighting

**Sistemski softver**

**Elektrotehnički fakultet**

**Univerzitet u Beogradu**

## Ukratko

Na projektu iz SS je potrebno pisati test primere u nekom (zamišljenom) asembleru, koji nema opciju za syntax highlighting ni u jednom editoru. Moguće je, ipak, podesiti sublime text 3 tako da ima syntax highlighting za bilo kakav asembler.

## Instalacija

1. Pokrenuti `install_sublime.sh` skriptu. Ona će instalirati Sublime text 3 editor
2. Pokrenuti Sublime text 3 editor. Iz komandne linije se može pokrenuti komandom `subl`
3. Pritisnuti `Ctrl+Shift+P`, zatim ukucati `Install Package Control` i izabrati tu opciju
4. Ponovo pritisnuti `Ctrl+Shift+P`, i izabrati `Package Control: Install package`
5. Izabrati `PackageDev`
6. Ponovo `Ctrl+Shift+P`, i izabrati `PackageDev: New Syntax Definition`
7. Otvoriće se fajl, popuniti ga sadržajem i snimiti na lokaciju koju Sublime ponudi. Snimiti sa ekstenzijom `sublime-syntax`. Sada može da se koristi nova definicija sintakse, sa novim highlighting-om

## Definisanje fajla sa pravilima

Skup pravila se definiše kao skup regexa i onoga šta oni predstavljaju. 

Fajl `MicroRISC Assembly.sublime-syntax` je fajl sa pravilima za projekat 2017.
Fajl `helloworld.ss` je test primer za projekat 2017. koji koristi ovu sintaksnu definiciju.

[Ovde](https://1drv.ms/u/s!AmhUspJ_9lSwuUKrUjSFmPFNQgsp) se nalazi virtuelna mašina sa podešenim editorom za projekat 2017.

### Primer jednostavnog fajla:
```yaml
%YAML 1.2
---
# http://www.sublimetext.com/docs/3/syntax.html
name: Example
file_extensions:
  - ex 
  - am
  - ple
scope: source
contexts:
  main:
    - match: '\b(?i)(v)?(load|store|jump|bz|bgt|add|sub|mul|div|call|ret|halt|push|pop)\b'
      scope: keyword.control.instruction
    - match: '\b(?i)(r[0-9]|r1[0-5]|pc|sp)\b'
      scope: variable.parameter.register
    - match: '\b[0-9]*\b'
      scope: constant.numeric.integer
    - match: '".*"'
      scope: string.quoted
    - match: '(\s)*(;|\/\/|@).*$'
      scope: comment.line
    - match: '(\+|\-|\*|\/)'
      scope: keyword.operator
    - match: ','
      scope: punctuation.separator
```

### Objašnjenje

- `name` definiše ime sintaksne definicije
- `file_extensions` definišu ekstenzije fajlova u kojima se koristi ova sintaksa
- Ostatak se piše u `main` kontekstu
- Svako pravilo se piše kao jedan `match`
- `scope` se definiše za `match`, i označava šta je deo teksta koji je matchovan regexom. [Ovde](https://www.sublimetext.com/docs/3/scope_naming.html) se nalazi spisak svih scopeova koji mogu da se koriste.

## Linkovi

- [Zvanična dokumentacija o sublime sintaksnim definicijama](https://www.sublimetext.com/docs/3/syntax.html)
- [Spisak scopeova koji se koriste u sintaksnim definicijama](https://www.sublimetext.com/docs/3/scope_naming.html)
- [PackageDev github strana](https://github.com/SublimeText/PackageDev)
- [Nameštena virtuelna mašina za projekat 2017](https://1drv.ms/u/s!AmhUspJ_9lSwuUKrUjSFmPFNQgsp)
