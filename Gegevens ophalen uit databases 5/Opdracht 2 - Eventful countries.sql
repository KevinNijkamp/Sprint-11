--CountryName moet worden geselecteerd van tblCountry
SELECT CountryName FROM tblCountry

--Waar EventID van tabelEvent 8 of meer is. Landen met 8 of meer Events
WHERE (select Count(EventID) FROM tblEvent WHERE tblCountry.CountryID = tblEvent.CountryID) > 8

--Filter op CountryName
ORDER BY CountryName;