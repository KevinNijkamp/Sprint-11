USE DoctorWho
SELECT a.AuthorId,a.AuthorName,
b.Title,b.episodetype,
c.EnemyId, d.EnemyName
FROM tblAuthor AS a
INNER JOIN tblEpisode AS b ON
a.AuthorId = b.AuthorId
INNER JOIN tblEpisodeEnemy AS c ON
c.EpisodeId = b.EpisodeId
INNER JOIN tblEnemy AS d ON
d.EnemyId = c.EnemyId
WHERE d.EnemyName = 'Daleks'