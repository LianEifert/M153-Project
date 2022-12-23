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
select * from fahrer where Vorname = 'Jane';
Delete from fahrer where Vorname = 'Jane';
--Dieser Test fügt die Daten Vorname, Nachname, Einkommen und Punkte korrekt ein und erwartet vom Trigger EinkommenProPunkt korrekt zu berechnen

--Test case 2:


-- Test mit Einkommen NULL
INSERT INTO fahrer (Vorname, Nachname, Einkommen, Punkte)
VALUES ('Jane', 'Doe', NULL, 100)
select * from fahrer where Vorname = 'Jane';
Delete from fahrer where Vorname = 'Jane';
--Dieser Test fügt die Daten Vorname, Nachname, Einkommen und Punkte nicht korrekt ein und erwartet vom Trigger EinkommenProPunkt auf NULL zu setzen

--Test case 3:


-- Test mit Punkte 0
INSERT INTO fahrer (Vorname, Nachname, Einkommen, Punkte)
VALUES ('Jane', 'Doe', 10000, 0)
select * from fahrer where Vorname = 'Jane';
Delete from fahrer where Vorname = 'Jane';

--Dieser Test fügt die Daten Vorname, Nachname, Einkommen und Punkte nicht korrekt ein und erwartet vom Trigger EinkommenProPunkt auf NULL zu setzen, da es sonst eine DivideByZero exeption geben würde





