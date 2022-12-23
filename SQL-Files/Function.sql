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


Test case 3:


-- Test mit ID die keine Fahrer hat
DECLARE @team_id INT = 45

SELECT durchschnittliches_einkommen_pro_Team(@team_id)

