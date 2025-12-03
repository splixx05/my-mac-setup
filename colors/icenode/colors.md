---
id: colors
aliases: []
tags: []
---

# Common table

---

| Name      | HEX       | RGB                 | ANSI                    |
| --------- | --------- | ------------------- | ----------------------- |
| prim.main | `#00BAFF` | `rgb(0, 186, 255)`  | `\x1b[38;2:0:186:255m`  |
| prim.deep | `#007CAA` | `rgb(0, 124, 170)`  | `\x1b[38;2:0:124:170m`  |
| prim.soft | `#46D6FF` | `rgb(70, 214, 255)` | `\x1b[38;2:70:214:255m` |

| Name      | HEX       | RGB                | ANSI                   |
| --------- | --------- | ------------------ | ---------------------- |
| comp.main | `#0166A9` | `rgb(1, 102, 169)` | `\x1b[38;2:1:102:169m` |
| comp.grey | `#022945` | `rgb(2, 41, 69)`   | `\x1b[38;2:2:41:69m`   |
| comp.deep | `#283457` | `rgb(40, 52, 87)`  | `\x1b[38;2:40:52:87m`  |

| Name    | HEX       | RGB               | ANSI                  |
| ------- | --------- | ----------------- | --------------------- |
| bg.main | `#08192C` | `rgb(8, 25, 44)`  | `\x1b[38;2:8:25:44m`  |
| bg.sec  | `#081B30` | `rgb(8, 27, 48)`  | `\x1b[38;2:8:27:48m`  |
| bg.comp | `#123054` | `rgb(18, 48, 84)` | `\x1b[38;2:18:48:84m` |
| bg.deep | `#071321` | `rgb(7, 19, 33)`  | `\x1b[38;2:7:19:33m`  |

| Name    | HEX       | RGB                  | ANSI                     |
| ------- | --------- | -------------------- | ------------------------ |
| fg.main | `#ABC9ED` | `rgb(171, 201, 237)` | `\x1b[38;2:171:201:237m` |
| fg.acc  | `#D6F4FF` | `rgb(214, 244, 255)` | `\x1b[38;2:214:244:255m` |
| fg.hi   | `#85DEFF` | `rgb(133, 222, 255)` | `\x1b[38;2:133:222:255m` |

| Name       | HEX       | RGB                  | ANSI                     |
| ---------- | --------- | -------------------- | ------------------------ |
| black      | `#040A11` | `rgb(4, 10, 17)`     | `\x1b[38;2:4:10:17m`     |
| grey.deep  | `#07283F` | `rgb(7, 40, 63)`     | `\x1b[38;2:7:40:63m`     |
| grey.light | `#4A6070` | `rgb(74, 96, 112)`   | `\x1b[38;2:74:96:112m`   |
| green      | `#38FF9C` | `rgb(56, 255, 156)`  | `\x1b[38;2:56:255:156m`  |
| yellow     | `#FFDF6E` | `rgb(255, 223, 110)` | `\x1b[38;2:255:223:110m` |
| orange     | `#FFAA66` | `rgb(255, 170, 102)` | `\x1b[38;2:255:170:102m` |
| red        | `#FF6E8A` | `rgb(255, 110, 138)` | `\x1b[38;2:255:110:138m` |
| blue       | `#178FFF` | `rgb(23, 143, 255)`  | `\x1b[38;2:23:143:255m`  |
| cyan       | `#00B7EB` | `rgb(0, 183, 235)`   | `\x1b[38;2:0:183:235m`   |
| white      | `#F8FFFF` | `rgb(248, 255, 255)` | `\x1b[38;2:248:255:255m` |
| magenta    | `#E178FF` | `rgb(225, 120, 255)` | `\x1b[38;2:225:120:255m` |
| violet     | `#7A5CFF` | `rgb(122, 92, 255)`  | `\x1b[38;2:122:92:255m`  |

---

# Yaml

---

colors:
primary:
background: "#08192c"
foreground: "#ABC9ED"

cursor:
text: "#08192c"
cursor: "#ABC9ED"

selection:
text: "#ABC9ED"
background: "#123054"

normal:
black: "#040A11"
red: "#FF6E8A"
green: "#38ff9c"
yellow: "#FFDF6E"
blue: "#178FFF"
magenta: "#E178FF"
cyan: "#00B7EB"
white: "#F8FFFF"

bright:
black: "#07283f"
red: "#FF8FA3"
green: "#6CFFC0"
yellow: "#FFE995"
blue: "#46D6FF"
magenta: "#F0A6FF"
cyan: "#00BAFF"
white: "#FFFFFF"

---

# toml

---

[colors.primary]
background = "#08192c"
foreground = "#ABC9ED"

[colors.cursor]
text = "#08192c"
cursor = "#ABC9ED"

[colors.selection]
text = "#ABC9ED"
background = "#123054"

[colors.normal]
black = "#040A11"
red = "#FF6E8A"
green = "#38ff9c"
yellow = "#FFDF6E"
blue = "#178FFF"
magenta = "#E178FF"
cyan = "#00B7EB"
white = "#F8FFFF"

[colors.bright]
black = "#07283f"
red = "#FF8FA3"
green = "#6CFFC0"
yellow = "#FFE995"
blue = "#46D6FF"
magenta = "#F0A6FF"
cyan = "#46D6FF"
white = "#FFFFFF"

---

# json

---

{
"prim": {
"main": "#00baff",
"deep": "#007caa",
"soft": "#46d6ff"
},
"comp": {
"main": "#0166a9",
"grey": "#022945",
"deep": "#283457"
},
"bg": {
"main": "#08192c",
"sec": "#081b30",
"comp": "#123054",
"deep": "#071321"
},
"fg": {
"main": "#ABC9ED",
"acc": "#D6F4FF",
"hi": "#85DEFF"
},
"black": "#040A11",
"grey": {
"deep": "#07283f",
"light": "#4A6070"
},
"green": "#38ff9c",
"yellow": "#FFDF6E",
"orange": "#FFAA66",
"red": "#FF6E8A",
"blue": "#178FFF",
"cyan": "#00B7EB",
"white": "#F8FFFF",
"magenta": "#E178FF",
"violet": "#7A5CFF"
}

# xmlthm

Ihre Farbe (Hex),Name,Beschreibung der Verwendung
#283457,black,Hintergrund und UI-Elemente: Dies ist die primäre Hintergrundfarbe (background) des Editors.
#FF6E8A,red,"Fehler & Warnungen (kritisch): Wird für invalid Code, gelöschte Elemente (markup.deleted), reguläre Ausdrücke (Punkte) und sprachspezifische Schlüsselwörter wie this und language verwendet."
#38ff9c,green,"Strings & Erfolge: Wird für Zeichenketten (string), erfolgreiche Token (token.success), HTML-Klassen (.class), Markdown-Links und PHP/CSS-Konstanten wie font verwendet."
#FFDF6E,yellow,"Konstanten & Warnungen: Wird für Zahlen (constant.numeric), Booleans (constant.language), JSON-Keys in tieferen Ebenen, CSS-Werte und Warn-Token (token.warn) verwendet."
#178FFF,blue,"Funktionen & Haupt-Code: Die Hauptfarbe für Funktionsnamen (entity.name.function), Methoden (meta.class-method), HTML/CSS-Eigenschaften und JSON-Keys auf der obersten Ebene."
#E178FF,`magenta\*\*,"Schlüsselwörter & Modifikatoren: Wird für Kontroll-Schlüsselwörter (keyword.control), Storage Types (storage.type), import/export/from, HTML-Attribute und Preprocessor-Anweisungen verwendet."
#00B7EB,cyan,"Klassen & Support-Code: Wird für Framework- und Support-Klassen (support.class), reguläre Ausdrücke (Strings), Operatoren, CSS-Tags (entity.name.tag) und tiefer liegende JSON-Keys verwendet."
#ABC9ED,white,"Text & Variablen: Die Standard-Vordergrundfarbe (foreground) für normalen Text, Variablen (variable), nicht hervorgehobene Elemente und Kommentare im Dokumentations-Stil."
#4A6070,bright black,"Kommentare & Hintergrund-Akzente: Wird hauptsächlich für Kommentare (comment), unsichtbare Zeichen (invisibles) und UI-Hervorhebungen im Hintergrund (z.B. guide lines) verwendet."
