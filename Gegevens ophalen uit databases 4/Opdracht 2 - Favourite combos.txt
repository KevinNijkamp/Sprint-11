SELECT COUNT(EpisodeId), AuthorId
FROM tblEpisode AS Episodes
GROUP BY AuthorId
HAVING COUNT(EpisodeId) > 5; 