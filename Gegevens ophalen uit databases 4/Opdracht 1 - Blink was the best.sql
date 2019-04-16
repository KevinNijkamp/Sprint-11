SELECT tblAuthor.AuthorName, COUNT(tblEpisode.EpisodeId) [Episodes], MIN(tblEpisode.EpisodeDate) [Earliest date], MAX(tblEpisode.EpisodeDate) [Latest date] FROM tblEpisode
INNER JOIN tblAuthor ON tblAuthor.AuthorId = tblEpisode.AuthorId
GROUP BY tblAuthor.AuthorName ORDER BY [Episodes] DESC;