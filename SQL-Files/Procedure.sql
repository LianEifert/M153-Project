CREATE PROCEDURE SelectTeamVonFahrerVorname
   @Fahrervorname varchar(50)
   AS
   BEGIN
       SELECT Fahrer.Vorname +' '+Fahrer.Nachname as Name, teams.TeamName
       FROM Fahrer 
       INNER JOIN teams 
       ON fahrer.FK_TeamId = TeamId
       WHERE fahrer.Vorname = @Fahrervorname;
   END
