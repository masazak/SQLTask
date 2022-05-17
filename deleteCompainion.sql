delete from Companion
where CompanionId in
( select C.CompanionId
from EpisodeCompanion AS EC
right join Companion AS C
on EC.CompanionId=C.CompanionId
where EC.CompanionId IS NULL)