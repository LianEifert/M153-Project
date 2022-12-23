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

   --Schauen ob das Team fahrer hat
    IF NOT EXISTS (SELECT 1 FROM Fahrer WHERE FK_TeamId = @team_id AND Einkommen IS NOT NULL)
    BEGIN
        RETURN NULL
    END

    SELECT @result = AVG(Einkommen)
    FROM Fahrer
    WHERE FK_TeamId = @team_id

    RETURN @result
END

