# Projekt-Dokumentation

Timo Goedertier

| Datum | Version | Zusammenfassung                                              |
| ----- | ------- | ------------------------------------------------------------ |
|02.02.24| 0.1.0   |Das leaderstats Script wurde erstellt und konfiguriert.|
|05.02.24| 0.2.0   |Das MoneyPickup Script wurde erstellt und konfiguriert.|
|06.02.24| 0.3.0   |Das PlayerData Module Script wurde erstellt und konfiguriert.|
|07.02.24| 1.0.0   |Die 3 Scripts wurden verbunden und funktionieren gemeinsam.|
|08.02.24| 1.1.0   |Ich habe alle Dateien nochmals überprüft und getestet.|

## 1 Informieren

### 1.1 Ihr Projekt

In meinem Projekt geht es um das Speichern und Laden von Spieler Daten in meinem Roblox Spiel.

### 1.2 User Stories

| US-№ | Verbindlichkeit | Typ  | Beschreibung                       |
| ---- | --------------- | ---- | ---------------------------------- |
| 1    |Muss             |Funktional| Als ein User möchte ich, dass meine Daten gespeichert werden. |
| 2    |Muss             |Funktional| Als ein Developer möchte ich, dass ich das speichern anhand von Geld aufheben testen kann.|
| 3    |Muss             |Funktional| Als ein User möchte ich, dass mein Geld in Leaderstats angezeigt wird.|
| 4    |Muss             |Funktional| Als ein Developer möchte ich, dass Leaderstats und das Speichern von Daten verbunden sind.|

### 1.3 Testfälle

| TC-№ | Ausgangslage | Eingabe | Erwartete Ausgabe |
| ---- | ------------ | ------- | ----------------- |
| 1.1  |Der Spieler hat Geld gesammelt|Der Spieler verlässt das Spiel|Das Geld wird gespeichert|
| 1.2  |Der Spieler hat Geld gesammelt|Das Spiel stürtzt ab|Das Geld wird gespeichert|
| 2.1  |Es gibt ein Objekt zum Aufheben|Der Spieler interagiert mit dem Objekt|Es wird dem Spieler Geld gegeben|
| 3.1  |Es gibt Leaderstats|Der Spieler sammelt Geld ein|Der aktualisierte Kontostand wird angezeigt in den Leaderstats|
| 4.1  |Die Daten des Spielers werden temporär gespeichert|Die temporären Daten synchronisieren sich mit den Leaderstats|Die temporären Daten werden auf den Leaderstats angezeigt|
| 4.2  |Der Spieler verlässt das Spiel|Die temporären Daten werden mit im DataStore gespeichert|Die temporären Daten werden wieder gelöscht|

## 2 Planen

| AP-№ | Frist | Zuständig | Beschreibung | geplante Zeit |
| ---- | ----- | --------- | ------------ | ------------- |
| 1.A  |23.02.24|Timo Goedertier|Das PlayerData Script ist erstellt und richtig konfiguriert| 60' |
| 2.A  |23.02.24|Timo Goedertier|Das MoneyPickup Script soll dem Spieler Geld geben beim interagieren| 30' |
| 3.A  |23.02.24|Timo Goedertier|Das leaderstats Script zeigt die Geldmenge des Spielers| 15' |
| 4.A  |23.02.24|Timo Goedertier|Das leaderstats Script ist mit dem PlayerData Module Script verbunden| 20' |

## 3 Entscheiden

In diesem Projekt möchte ich Scripts erstellen, die die Daten der Spieler speichert und anzeigt.

## 4 Realisieren

| AP-№ | Datum | Zuständig | geplante Zeit | tatsächliche Zeit |
| ---- | ----- | --------- | ------------- | ----------------- |
| 1.A  |23.02.24|Timo Goedertier| 60' | 60' |
| 2.A  |23.02.24|Timo Goedertier| 30' | 30' |
| 3.A  |23.02.24|Timo Goedertier| 15' | 20' |
| 4.A  |23.02.24|Timo Goedertier| 20' | 45' |

## 5 Kontrollieren

### 5.1 Testprotokoll

| TC-№ | Datum | Resultat | Tester |
| ---- | ----- | -------- | ------ |
| 1.1  |23.02.24| OK |Timo Goedertier|
| 1.2  |23.02.24| OK |Timo Goedertier|
| 2.1  |23.02.24| OK |Timo Goedertier|
| 3.1  |23.02.24| OK |Timo Goedertier|
| 4.1  |23.02.24| OK |Timo Goedertier|
| 4.2  |23.02.24| OK |Timo Goedertier|

## 6 Auswerten

Mahara Portfolio: 
