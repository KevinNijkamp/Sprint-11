SELECT tblContinent.ContinentName, tblCountry.CountryName, COUNT(tblEvent.EventID) [Number of events] FROM tblContinent
INNER JOIN tblCountry ON tblContinent.ContinentID = tblCountry.ContinentID INNER JOIN tblEvent ON tblCountry.CountryID = tblEvent.CountryID
WHERE tblContinent.ContinentName != 'Europe'
GROUP BY tblContinent.ContinentName, tblCountry.CountryName HAVING COUNT(tblEvent.EventID) >= 5 ;