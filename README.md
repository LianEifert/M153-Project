# M153-Project

📓 1. Kurzbeschreibung 
=============
In einer Gruppenarbeit (max. zwei Lernende) entwerfen und erstellen Sie eine Datenbank zu einem frei gewählten 
Thema. <br>
Die Datenbank wird unter MS-SQL (T-SQL) erstellt, so dass alle Skripts mit dem «SQL-Server Management Studio»
funktionieren. <br>
Das Projekt umfasst: <br>
• eine Dokumentation mit ER-Diagramm, Datenbankbeschreibung <br>
• SQL-Code mit welchem die Datenbank inkl. Trigger, Stored Procedure und Function erstellt werden kann <br>
• SQL-Code mit dem die Daten in die Datenbank eingetragen werden <br>
• SQL-Code für Abfragen/Manipulation bzw. Tests inkl. einer kurzen Testbeschreibung zur Kontrolle des  <br>
Triggers, der Stored Procedure und der Function. <br>
• einen einfachen Arbeitsrapport (mit Datum, Dauer, Beschreibung, Person pro ausgeführte Arbeit). <br>

🔢 2. Datenbank
=============
Das Datenbank-Thema kann frei gewählt werden und muss vor dem Projektstart durch die Lehrperson genehmigt <br>
werden. Das Thema muss eindeutig sein, d.h. es darf innerhalb der Klasse bzw. des Jahrgangs nur einmal vorkommen. <br>
Die Datenbank muss die folgenden Bedingungen erfüllen: <br>
• Das ER-Modell umfasst mind. vier Tabellen. <br>
• Eine der Beziehungen im ER-Modell muss eine n-n-Beziehung sein. <br>
• Es müssen mindestens einmal die folgenden Datentypen verwendet werden: <br>
▪ String, z.B. varchar, usw. <br>
▪ Ganze Zahl, z.B. integer, usw. <br>
▪ Fliess- und/oder Festkommazahl: z.B. float, usw. <br>
▪ Wahrheitswert, z.B. bit usw. <br>
▪ Datum- und/oder Zeitwert, z.B. date usw. <br>
• Alle Primärschlüssel zählen von 1 bis n automatisch hoch <br>
• Die referentielle Integrität wird durch die Fremdschlüsselbeziehungen über das System definiert <br>
(FOREIGN KEY … REFERENCES…)<br>
• Es muss mindestens ein eigener Trigger verwendet werden <br>
• Es müssen mindestens eine gespeicherte Procedure verwendet werden <br>
• Es müssen mindestens eine Function verwendet werden <br>
• Es müssen pro Trigger, Stored Procedure bzw. Function mindestens drei verschiedene <br>
Abfragen/Manipulationen bzw. Tests ausgeführt werden <br>
• Es sollen pro Tabelle mindestens 20 Testdatensätze verwendet werden. <br>

📁 3. SQL-Code
=============
Es wird SQL-Code für die folgenden Funktionalitäten erwartet: <br>
• zum Erstellen der Datenbank inkl. Trigger und gespeicherte Prozeduren/Funktionen <br>
• zum Abfüllen der Datenbank mit Testdaten <br>
• zu jeder Abfrage / Manipulation bzw. Test <br>

🥇 4. Erwartetes Resultat
=============
Eine Dokumentation mit: <br>
• Kurzbeschreibung des Themas <br>
• ER-Diagramm der Datenbank <br>
• Relationales Modell der Datenbank inkl. Datentyp und Beschreibung der einzelnen Felder <br>
• Beschreibung der Abfragen/Manipulationen bzw. Tests <br>
• Beschreibung der gespeicherten Prozeduren/Funktionen und des Triggers und deren Anwendung <br>
Der Trigger, die Stored Procedure bzw. die Function sollen über ein einfaches Fehler-Handling verfügen, d.h.: <br>
- falsche oder leere Argumente werden abgefangen <br>
- leere Resultate werden z.B. durch eine Fehlermeldung angezeigt oder geben null zurück <br>
- der Rückgabewert der Stored Procedure gibt die Anzahl der betroffenen Datensätze zurück <br>
- zu den Fehler werden entsprechende Fehlermeldungen generiert, wie im Management Studio üblich <br>
- jeder Fehler führt zu einem definierten Abbruch <br>
Auf jeder Seite der Dokumentation müssen die folgenden Angaben stehen: <br>
• die Nachnamen und Vornamen der Gruppenmitglieder bzw. der Nachname und Vornamen bei einer Einzelarbeit <br>
• Klasse <br>
• Nummer der aktuellen Seite und die totale Anzahl Seiten <br>
Eine entsprechende Word-Vorlage kann bei Bedarf verlangt werden. <br>

🤐 5. Abgabe
=============
Umfang: Eine gezippte Datei mit dem Namen der beiden Gruppenmitglieder bzw. Namen bei einer Einzelarbeit in <br>
der folgenden Form: <br>
 M153_Projekt_Nachname1_Vorname1_Nachname2_Vorname2.zip <br>
bzw. <br>
 M153_Projekt_Nachname_Vorname.zip <br>
welche die folgenden Dateien enthält: <br>
• Dokumentation als pdf-Datei (M153_Projekt.pdf) <br>
• SQL-Skript für das Erstellen der Datenbank: M153_Projekt_Create.sql <br>
• SQL-Skript für das Einfügen der Daten: M153_Projekt_Insert.sql <br>
• SQL-Skript mit den Abfragen/Manipulationen bzw. Tests: M153_Projekt_Query.sql <br>
Art: Die gezippte Datei als Anhang einer Teams Chat-Nachricht direkt an peter.kaufmann@sluz.ch senden. <br>

