CREATE PROCEDURE spSummariseEpisodes

AS BEGIN
  SELECT top 3 COUNT(ec.EpisodeId) count_apperance,c.CompanionName
  FROM Companion AS c inner join EpisodeCompanion AS ec
  on c.CompanionId=ec.CompanionId
  group by ec.CompanionId,c.CompanionName
  order by COUNT(ec.EpisodeId) DESC;

   SELECT top 3 COUNT(ee.EpisodeId) count_apperance,e.EnemyName
  FROM Enemy AS e inner join EpisodeEnemy AS ee
	on e.EnemyId=ee.EnemyId
  group by e.EnemyId,e.EnemyName
  order by COUNT(ee.EpisodeId) DESC;
END;

EXEC spSummariseEpisodes;


