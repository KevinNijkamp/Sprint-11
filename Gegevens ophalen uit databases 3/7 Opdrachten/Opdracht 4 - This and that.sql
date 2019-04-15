SELECT EventDate, EventName, CHARINDEX('this', EventDetails, 1) AS 'thisPosition', 
							CHARINDEX('that', EventDetails, 1) AS 'thatPosition',
CHARINDEX('that', EventDetails, 1) - CHARINDEX('this', EventDetails, 1) 					   
FROM tblEvent 
WHERE CHARINDEX('that', EventDetails, 1) - CHARINDEX('this', EventDetails, 1) > 0 AND CHARINDEX('this', EventDetails, 1) > 0