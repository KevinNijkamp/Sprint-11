--EventName en EventDate doen gelijk mee vanuit tblEvent, CountryName kan via een inner join meedoen aan tblEvent
SELECT EventName, EventDate, CountryName

--selecteer de tabel tblEvent
FROM tblEvent

--Gebruik de inner join om CountryID mee te kunnen laten doen aan from tblevent zodat bij SELECT CountryName
INNER JOIN tblCountry ON tblCountry.CountryID = tblEvent.CountryID

--Verder in gaan op EventDate. Ga tot de laatste eventDates door met CountryID 21
WHERE EventDate >( SELECT MAX(EventDate) FROM tblEvent WHERE CountryID = 21)

--Laat de laatste resultaten bovenaan zien
ORDER BY EventDate DESC