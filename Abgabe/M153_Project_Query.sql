--Funktion erstellen
CREATE FUNCTION durchschnittliches_einkommen_pro_Team (@team_id INT)
RETURNS FLOAT
AS
BEGIN
    DECLARE @result FLOAT

   --Schauen ob TeamId existiert
    IF NOT EXISTS (SELECT 1 FROM Fahrer WHERE FK_TeamId = @team_id)
    BEGIN
        RETURN NULL
    END

   -- Schauen das es nicht NULL ist
       IF @team_id IS NULL
       BEGIN
          RETURN NULL
       END

    SELECT @result = AVG(Einkommen)
    FROM Fahrer
    WHERE FK_TeamId = @team_id

    RETURN @result
END

GO

-- Testfälle:


-- Test case 1:

-- Test mit Gültiger ID
DECLARE @team_id INT = 6;

SELECT durchschnittliches_einkommen_pro_Team(@team_id);

-- Dieser Testfall gibt die ID 6 mit die gültig ist und erwartet das es das durschnittliche Einkommen des Teams berechnet.

-- Test case 2:

-- Test mit ungültiger ID

DECLARE @team_id INT = 99;

SELECT durchschnittliches_einkommen_pro_Team(@team_id);

-- Dieser Testfall gibt die ID 99 mit die ungültig ist und erwartet den Rückgabewert NULL.


--Test case 3:


-- Test mit ID die NULL ist
DECLARE @team_id INT = NULL

SELECT durchschnittliches_einkommen_pro_Team(@team_id)

GO
--Procedure erstellen
CREATE PROCEDURE SelectTeamVonFahrerVorname
   @Fahrervorname varchar(50)
   AS
   BEGIN
       -- Schauen ob Vorname existiert
       IF NOT EXISTS (SELECT 1 FROM Fahrer WHERE Vorname = @Fahrervorname)
       BEGIN
           SELECT NULL AS Name, NULL AS TeamName
           RETURN
       END

       -- Schauen das es nicht NULL ist
       IF @Fahrervorname IS NULL
       BEGIN
           SELECT NULL AS Name, NULL AS TeamName
           RETURN
       END

       SELECT Fahrer.Vorname +' '+Fahrer.Nachname as Name, teams.TeamName
       FROM Fahrer 
       INNER JOIN teams 
       ON fahrer.FK_TeamId = TeamId
       WHERE fahrer.Vorname = @Fahrervorname;
   END

GO 
-- Testfälle

--Test case 1:


-- Test mit gültigem Vornamen
EXEC SelectTeamVonFahrerVorname 'Sebastian'
-- Dieser Test bekommt einen gültigen Vornamen und es wird erwartet das es den Nachnamen und Vornamen in einer Spalte und sein Team in einer anderen Spalte ausgibt

--Test case 2:


--Test mit ungültigem Vornamen
EXEC SelectTeamVonFahrerVorname 'Lian'
-- Dieser Test bekommt einen ungültigen Vornamen und es wird erwartet das in beiden Ausgabespalten NULL steht

--Test case 3:


-- Test mit NULL-Value
EXEC SelectTeamVonFahrerVorname NULL
--Dieser Test bekommt den Wert NULL und es wird erwartet das in beiden Ausgabespalten NULL steht
GO

--Trigger erstellen
CREATE TRIGGER GetEinkommenProPunkt
ON fahrer
AFTER INSERT
AS
BEGIN
  UPDATE fahrer
  SET EinkommenProPunkt = 
    CASE
      WHEN i.Einkommen IS NULL OR i.Punkte = 0 THEN NULL
      ELSE ROUND(i.Einkommen/i.Punkte, 2)
    END
  FROM inserted i
  WHERE fahrer.Einkommen = i.Einkommen AND fahrer.Punkte = i.Punkte
END;

GO
--Testfälle:

--Test case 1:


-- Test mit gültigen Daten
INSERT INTO fahrer (Vorname, Nachname, Einkommen, Punkte)
VALUES ('Jane', 'Doe', 10000, 100)
GO
select * from fahrer where Vorname = 'Jane';
Delete from fahrer where Vorname = 'Jane';
GO
--Dieser Test fügt die Daten Vorname, Nachname, Einkommen und Punkte korrekt ein und erwartet vom Trigger EinkommenProPunkt korrekt zu berechnen

--Test case 2:


-- Test mit Einkommen NULL
INSERT INTO fahrer (Vorname, Nachname, Einkommen, Punkte)
VALUES ('Jane', 'Doe', NULL, 100)
GO
select * from fahrer where Vorname = 'Jane';
Delete from fahrer where Vorname = 'Jane';
GO
--Dieser Test fügt die Daten Vorname, Nachname, Einkommen und Punkte nicht korrekt ein und erwartet vom Trigger EinkommenProPunkt auf NULL zu setzen

--Test case 3:


-- Test mit Punkte 0
INSERT INTO fahrer (Vorname, Nachname, Einkommen, Punkte)
VALUES ('Jane', 'Doe', 10000, 0)
GO
select * from fahrer where Vorname = 'Jane';
Delete from fahrer where Vorname = 'Jane';

--Dieser Test fügt die Daten Vorname, Nachname, Einkommen und Punkte nicht korrekt ein und erwartet vom Trigger EinkommenProPunkt auf NULL zu setzen, da es sonst eine DivideByZero exeption geben würde

GO



