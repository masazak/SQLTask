
CREATE FUNCTION fnCompanions(
@EpisodeId INT
)
RETURNS TABLE 
AS
RETURN
	SELECT c.CompanionName
	FROM Companion AS c inner join EpisodeCompanion AS ec
	on c.CompanionId=ec.CompanionId
	WHERE ec.EpisodeId=@EpisodeId;


SELECT * FROM  fnCompanions(4);