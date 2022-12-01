Create Database Formel1
GO
USE Formel1

Create Table Teams (
TeamId integer identity,
TeamName varchar (50),
Budget int,
Besitzer varchar(50),
Einstiegsjahr date
);
Create Table Fahrer (
 FahrerId integer identity,
 Vorname varchar(50),
 Nachname varchar(50),
 Einkommen float,
 Geburtsdatum date,
 Startnummer int,
 Punkte int,
 Einstiegsjahr int
)

Create Table Mitarbeiter (
MitarbeiterId integer identity,
 Vorname varchar(50),
 Nachname varchar(50),
 Einkommen float,
 Geburtsjahr date,
)
Create Table Sponsoren (
SponsorenId integer identity,
Sponsorenname varchar(50),
Besitzer varchar(50),
Einstiegsjahr date,
Investition float
)
Create table Rennstrecken (
StreckenId Integer identity,
Ort varchar (50),
Streckenlänge float,
Streckenname varchar (50),
Land varchar (50)
)
Create table fährt (
fährtId Integer identity,
Datum date,
)
