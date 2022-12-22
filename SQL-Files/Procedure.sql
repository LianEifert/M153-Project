CREATE PROCEDURE SelectTeamVonFahrerVorname
   @Fahrervorname varchar(50)
   AS
   BEGIN
       SELECT fahrer.Vorname +" "fahrer.Nachname as Name, teams.TeamName
       FROM fahrer 
       INNER JOIN teams 
       ON fahrer.FK_TeamId = TeamId
       WHERE fahrer.Vorname = @Fahrervorname;
   END
