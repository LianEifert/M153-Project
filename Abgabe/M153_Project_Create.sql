Create Database Formel1
GO
USE Formel1
GO
Create Table Teams (
TeamId integer identity,
TeamName varchar (50),
Budget int,
Besitzer varchar(50),
Einstiegsjahr int,
PRIMARY KEY (TeamId)
);
Create Table Fahrer (
 FahrerId integer identity,
 Vorname varchar(50),
 Nachname varchar(50),
 Einkommen float,
 Geburtsdatum date,
 Startnummer int,
 Punkte int,
 Einstiegsjahr int,
 EinkommenProPunkt float,
 FK_TeamId integer,
 PRIMARY KEY (FahrerId)
)

Create Table Mitarbeiter (
MitarbeiterId integer identity,
 Vorname varchar(50),
 Nachname varchar(50),
 Einkommen float,
 Geburtsdatum date,
 FK_TeamID integer,
 PRIMARY KEY (MitarbeiterID)
)
Create Table Sponsoren (
SponsorenId integer identity,
Sponsorenname varchar(50),
Besitzer varchar(50),
Einstiegsjahr int,
Investition float,
FK_TeamId integer
PRIMARY KEY (SponsorenId)
)
Create table Rennstrecken (
StreckenId Integer identity,
Ort varchar (50),
Streckenlänge float,
Streckenname varchar (50),
Land varchar (50),
PRIMARY KEY (StreckenId)
)
Create table fährt (
fährtId Integer identity,
Datum date,
FK_StreckenId integer,
FK_FahrerId integer,
PRIMARY KEY (fährtId)
)

GO

ALTER TABLE Fahrer
ADD FOREIGN KEY (FK_TeamId) REFERENCES Teams(TeamID);
GO
ALTER TABLE Mitarbeiter
ADD FOREIGN KEY (FK_TeamId) REFERENCES Teams(TeamID);
GO
ALTER TABLE Mitarbeiter
ADD FOREIGN KEY (FK_TeamId) REFERENCES Teams(TeamID);
GO
ALTER TABLE Mitarbeiter
ADD FOREIGN KEY (FK_TeamId) REFERENCES Teams(TeamID);
GO
ALTER TABLE fährt
ADD FOREIGN KEY (FK_StreckenId) REFERENCES Rennstrecken(StreckenId),
FOREIGN KEY (FK_FahrerID) REFERENCES Fahrer(FahrerId);
GO


