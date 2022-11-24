# M153-Project

📓 1. Kurzbeschreibung 
=============
In einer Gruppenarbeit (max. zwei Lernende) entwerfen und erstellen Sie eine Datenbank zu einem frei gewählten 
Thema.
Die Datenbank wird unter MS-SQL (T-SQL) erstellt, so dass alle Skripts mit dem «SQL-Server Management Studio»
funktionieren.
Das Projekt umfasst:
• eine Dokumentation mit ER-Diagramm, Datenbankbeschreibung
• SQL-Code mit welchem die Datenbank inkl. Trigger, Stored Procedure und Function erstellt werden kann
• SQL-Code mit dem die Daten in die Datenbank eingetragen werden
• SQL-Code für Abfragen/Manipulation bzw. Tests inkl. einer kurzen Testbeschreibung zur Kontrolle des 
Triggers, der Stored Procedure und der Function.
• einen einfachen Arbeitsrapport (mit Datum, Dauer, Beschreibung, Person pro ausgeführte Arbeit).

🔢 2. Datenbank
=============
Das Datenbank-Thema kann frei gewählt werden und muss vor dem Projektstart durch die Lehrperson genehmigt 
werden. Das Thema muss eindeutig sein, d.h. es darf innerhalb der Klasse bzw. des Jahrgangs nur einmal vorkommen.
Die Datenbank muss die folgenden Bedingungen erfüllen:
• Das ER-Modell umfasst mind. vier Tabellen.
• Eine der Beziehungen im ER-Modell muss eine n-n-Beziehung sein. 
• Es müssen mindestens einmal die folgenden Datentypen verwendet werden:
▪ String, z.B. varchar, usw.
▪ Ganze Zahl, z.B. integer, usw.
▪ Fliess- und/oder Festkommazahl: z.B. float, usw.
▪ Wahrheitswert, z.B. bit usw.
▪ Datum- und/oder Zeitwert, z.B. date usw.
• Alle Primärschlüssel zählen von 1 bis n automatisch hoch
• Die referentielle Integrität wird durch die Fremdschlüsselbeziehungen über das System definiert 
(FOREIGN KEY … REFERENCES…)
• Es muss mindestens ein eigener Trigger verwendet werden
• Es müssen mindestens eine gespeicherte Procedure verwendet werden
• Es müssen mindestens eine Function verwendet werden
• Es müssen pro Trigger, Stored Procedure bzw. Function mindestens drei verschiedene 
Abfragen/Manipulationen bzw. Tests ausgeführt werden
• Es sollen pro Tabelle mindestens 20 Testdatensätze verwendet werden.

📁 3. SQL-Code
=============
Es wird SQL-Code für die folgenden Funktionalitäten erwartet:
• zum Erstellen der Datenbank inkl. Trigger und gespeicherte Prozeduren/Funktionen
• zum Abfüllen der Datenbank mit Testdaten
• zu jeder Abfrage / Manipulation bzw. Test

🥇 4. Erwartetes Resultat
=============
Eine Dokumentation mit:
• Kurzbeschreibung des Themas
• ER-Diagramm der Datenbank
• Relationales Modell der Datenbank inkl. Datentyp und Beschreibung der einzelnen Felder
• Beschreibung der Abfragen/Manipulationen bzw. Tests
• Beschreibung der gespeicherten Prozeduren/Funktionen und des Triggers und deren Anwendung
Der Trigger, die Stored Procedure bzw. die Function sollen über ein einfaches Fehler-Handling verfügen, d.h.:
- falsche oder leere Argumente werden abgefangen
- leere Resultate werden z.B. durch eine Fehlermeldung angezeigt oder geben null zurück
- der Rückgabewert der Stored Procedure gibt die Anzahl der betroffenen Datensätze zurück
- zu den Fehler werden entsprechende Fehlermeldungen generiert, wie im Management Studio üblich
- jeder Fehler führt zu einem definierten Abbruch
Auf jeder Seite der Dokumentation müssen die folgenden Angaben stehen:
• die Nachnamen und Vornamen der Gruppenmitglieder bzw. der Nachname und Vornamen bei einer 
Einzelarbeit
• Klasse
• Nummer der aktuellen Seite und die totale Anzahl Seiten 
Eine entsprechende Word-Vorlage kann bei Bedarf verlangt werden.

🤐 5. Abgabe
=============
Umfang: Eine gezippte Datei mit dem Namen der beiden Gruppenmitglieder bzw. Namen bei einer Einzelarbeit in 
der folgenden Form:
 M153_Projekt_Nachname1_Vorname1_Nachname2_Vorname2.zip
bzw. 
 M153_Projekt_Nachname_Vorname.zip
welche die folgenden Dateien enthält:
• Dokumentation als pdf-Datei (M153_Projekt.pdf)
• SQL-Skript für das Erstellen der Datenbank: M153_Projekt_Create.sql
• SQL-Skript für das Einfügen der Daten: M153_Projekt_Insert.sql
• SQL-Skript mit den Abfragen/Manipulationen bzw. Tests: M153_Projekt_Query.sql
Art: Die gezippte Datei als Anhang einer Teams Chat-Nachricht direkt an peter.kaufmann@sluz.ch senden.

