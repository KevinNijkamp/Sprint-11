--hier selecteer je Continentid, continentName en Summary
SELECT Continentid, continentName, Summary, 
ISNULL(Summary,'No Summary') AS 'Using IsNull',
Coalesce(Summary,'No Summary') AS 'Using COALESCE',
	CASE 
		WHEN summary is null THEN 'No Summary'
		ELSE summary
		END AS 'Using Case'
	FROM tblContinent
--van tabel continent