CREATE FUNCTION durchschnittliches_einkommen_pro_punkt (@team_id INT)
RETURNS FLOAT
AS
BEGIN
    DECLARE @result FLOAT

    SELECT @result = AVG(EinkommenProPunkt)
    FROM Fahrer
    WHERE FK_TeamId = @team_id

    RETURN @result
END
