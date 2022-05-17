CREATE FUNCTION fnEnemies (@EpisodeId int)
RETURNS TABLE AS
RETURN
	SELECT e.EnemyName
	FROM Enemy AS e inner join EpisodeEnemy AS ee
	on e.EnemyId=ee.EnemyId
	WHERE ee.EpisodeId=@EpisodeId;



SELECT * FROM  fnEnemies(2);