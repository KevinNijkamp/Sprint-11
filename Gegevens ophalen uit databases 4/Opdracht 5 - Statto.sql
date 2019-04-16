SELECT COUNT(EventId) [Number of Events], 
		 MAX(EventDate) [Last date], 
		 MIN(EventDate) [First date]
FROM tblEvent;