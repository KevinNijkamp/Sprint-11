-- Lijst met evenementen en countries
SELECT
-- velden van de country tabel
cy.CountryName AS Country,
 
-- Velden van de events tabel
ev.EventName AS [What happened],
ev.EventDate AS [When happened]
FROM
-- Hier begint de Country tabel
tblCountry AS cy

-- ... En hier worden de events gejoined
INNER JOIN tblEvent AS ev
ON cy.CountryID = ev.CountryID

ORDER BY
-- weergeven in datumvolgorde
[When happened]