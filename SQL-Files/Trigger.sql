Create TRIGGER GetEinkommenProPunkt
ON fahrer
AFTER INSERT
AS
BEGIN
  UPDATE fahrer
  SET EinkommenProPunkt = ROUND(Einkommen/Punkte, 2);
END;
