CREATE FUNCTION durchschnittliches_einkommen_pro_Team (@team_id INT)
RETURNS FLOAT
AS
BEGIN
    DECLARE @result FLOAT

    SELECT @result = AVG(Einkommen)
    FROM Fahrer
    WHERE FK_TeamId = @team_id

    RETURN @result
END
