SELECT LEFT(tblCategory.CategoryName, 1) [Category initial], COUNT(tblEvent.EventID) [Number of Events] , CAST(AVG(LEN(tblEvent.EventName))AS DECIMAL(10,2)) [Average event name length] FROM tblEvent
INNER JOIN tblCategory ON tblCategory.CategoryID = tblEvent.CategoryID
GROUP BY LEFT(tblCategory.CategoryName, 1); 