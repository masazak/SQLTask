CREATE VIEW viewEpisodes
AS
SELECT e.* ,a.AuthorName,d.DoctorName,fe.EnemyName,fc.CompanionName
from 
	Episode as e CROSS APPLY fnEnemies(e.EpisodeID) fe
	CROSS APPLY fnCompanions(e.EpisodeID) fc
	full outer join Author as a
	on e.AuthorId=a.AuthorId
	full outer join Doctor as d 
	on e.DoctorId=d.DoctorId;
	