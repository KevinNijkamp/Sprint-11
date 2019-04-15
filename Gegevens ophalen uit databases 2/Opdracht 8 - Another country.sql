SELECT tblCountry.CountryName, tblEvent.EventName, tblEvent.EventDetails, tblEvent.EventID 
FROM tblEvent 
FULL OUTER JOIN tblCountry ON tblEvent.CountryID = tblCountry.CountryID
WHERE tblEvent.EventID IS NULL;