# Vorbereitungen

Solltest Du das Repository geklont haben, so muss Du noch das `make.ps1` Skript ausführen damit in Bilder Beispiel-Dateien erstellt werden.

👉 Gehe dazu in den `exercises/01` Ordner und führe mit `./make.ps1` das Skript aus. Sollte dies nicht funktionieren dann kannst Du `. ./make.ps1` probieren.

Als letzte Möglichkeit für die Beispieldateien kannst Du mit `Expand-Archive bilder.zip -DestinationPath .` das vorhandene Archive entpacken.

# Übungen

## Get-ChildItem (dir)

👉 Verwende `dir` um den Inhalt des aktuellen Orders anzuzeigen.
Alternativ auch `Get-ChildItem` oder `gci`.

Dieses Befehl wirst Du sehr häufig brauchen (in der Praksis und in dieser Tutorial-Reihe).

## Set-Location (cd)

👉 Mit `cd bilder` gelangst Du in den Bilder-Ordner.
Versuch `cd bil` und drücke dann die `Tab` Taste bzw. in Windows ggfs. `Strg`+`Space`.

### Autovervollständigung

Ist der eingegebene Pfad eindeutig, wird automatisch zum vollständigen Text ergänzt.

Gäbe es nebem "Bilder" z.B. noch den Ordner "Bill Gates", dann wird entweder eine Auswahl dargestellt (dort kannst Du mit den Cursortasten den gewünschten Ordnernamen auswählen) oder es erscheint eine Liste der möglichen Ordnernamen (Bill Gates und Bilder).

Die Autovervollständigung funktioniert in der PowerShell überall gleich. Egal ob Befehlsnamen (`Get-Lo`<Tab>), Ordner-/Dateinamen, Parameternamen (`dir -dir`<Tab>) oder andere Argumente bei bestimmten Commandlet-Parametern.

Bei Fremdtools (z.B. git) gibt es keine Autovervollständigung.

## dir, dir und nochmehr dir

👉 Spiele hier etwas mit dem `dir` Cmdlet herum. Versuche folgendes:

- Nur Dateien des Typs `.gif` auflisten
- Alle Bilder/Videos in dessen Namen ein `Hund` vorkommt auflisten
- `mpeg` Dateien die von mir (`ich`) sind auflisten
- Alle Unter-Ordner im Ordner `Bilder` auflisten
- Alle Unter-Ordner mit `Opa` im Namen auflisten

## pushd Verwenden

👉 Nutze `pushd` um den Ordner zu wechseln.

Du kannst dies auf folgende Arten probieren:

### Relativ zum aktuellen (Bilder) Ordner

mit `..` kommt man ein Ordner zurück. Ordner werden mit `/` getrennt. D.h. es sind beliebige Kombinationen aus `..`, `/` und Ordnernamen möglich.

Du kannst im Explorer einen gewünschten Zielordner suchen und dann versuchen diesen in der PowerShell mit **einem einzigen** pushd Befehl zu erreichen.

Tipp: `ii .` öffnet den Explorer/Finder im Aktuellen Ordner (`ii` steht für `Invoke-Item`)

Jeden Ordner den Du im Explorer/Finder zurück gehst ist ein `../` jeden Ordner den Du öffnest ist dann der Ordnername.

### Absolute Ordnerangabe

In Windows kannst Du die Laufwerksbuchstaben angegeben. z.B. `cd c:\` gefolgt von Ordnernamen. Auf dem Mac und Linux ist `/` der absolute Root-Ordner. Um z.B. auf den User-Root zu gelangen kannst Du `cd c:\users\deinname` eingeben oder `cd /users/deinname` auf dem Mac/Linux.

Für einen absoluten Pfad kannst Du auch die Tilde (`~`) verwenden. Diese stellt **immer** den User-Root dar. `cd ~/Documents` (bzw. `cd ~/Dokumente`) wechselt also in den Dokumentenordner des aktuell angemeldeten Benutzers.

## popd

👉 Springe mit `popd` wieder in den vorherigen (Bilder) Ordner zurück. 

## Aktuellen Ordner ausgeben

Auch wenn dieser im Eingabe-Prompt der PowerShell steht, so solltest Du dich an die Verwendung von `Get-Location` (`gl`) gewöhnen. In der Praxis verwende ich dieses Cmdlet oft um mir einen Ordner zu "merken" (in einer Variable zu speichern).

Entwedet weil ich später dort hin zurück will (oder öfferts mal anspringen muss). Oder weil es die Zielort eine Operation (Kopieren, Verschieben) ist.

👉 Gibt einfach mal `gl` ein.

# Zurück zu...

- [Übersicht dieses Tutorials](../../readme.md)
- [Alle Themenbereichen](https://github.com/bugfrei/itea.git)