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
