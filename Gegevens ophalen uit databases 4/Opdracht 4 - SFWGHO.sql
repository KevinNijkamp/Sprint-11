SELECT YEAR(EpisodeDate) [Episode year], EnemyName, COUNT(tblEpisode.EpisodeId)[Number of episodes]
FROM tblEpisode 
INNER JOIN tblEpisodeEnemy ON tblEpisode.EpisodeId = tblEpisodeEnemy.EpisodeId  INNER JOIN tblDoctor ON tblEpisode.DoctorId = tblDoctor.DoctorId  INNER JOIN tblEnemy ON tblEpisodeEnemy.EnemyId = tblEnemy.EnemyId
WHERE YEAR(tblDoctor.BirthDate) < 1970 GROUP BY YEAR(tblEpisode.EpisodeDate), EnemyName
HAVING COUNT(tblEpisode.EpisodeId) != 1 ORDER BY [Number of episodes] DESC;