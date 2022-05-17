create table Enemy(
EnemyId INT PRIMARY KEY ,
EnemyName VARCHAR (50),
Description VARCHAR (50),
)

create table Companion(
CompanionId INT PRIMARY KEY,
CompanionName VARCHAR (10),
WhoPalyed VARCHAR (10)
)

create table Author(
AuthorId INT PRIMARY KEY,
AuthorName  VARCHAR (10)
)

create table Doctor(
DoctorId INT PRIMARY KEY,
DoctorName VARCHAR (10),
DoctorNumner VARCHAR (30),
BirthDate DATETIME,
FirstEpisodeDate DATETIME,
LastEpisodeDate DATETIME
)

create table Episode(
EpisodeId INT PRIMARY KEY,
SeriesNumber VARCHAR (50),
EpisodeNumber VARCHAR (50),
EpisodeType VARCHAR (50),
Title VARCHAR (50),
EpisodeDate DATETIME,
AuthorId INT ,
DoctorId INT ,
Notes VARCHAR (50),
FOREIGN KEY (AuthorId) REFERENCES Author (AuthorId),
FOREIGN KEY (DoctorId) REFERENCES Doctor (DoctorId)
)

create table EpisodeEnemy(
EpisodeEnemyId INT PRIMARY KEY,
EpisodeId INT ,
EnemyId INT  ,
FOREIGN KEY (EnemyId) REFERENCES Enemy (EnemyId),
FOREIGN KEY (EpisodeId) REFERENCES Episode (EpisodeId)
)

create table EpisodeCompanion(
EpisodeCompanionId INT PRIMARY KEY,
EpisodeId INT,
CompanionId INT ,
FOREIGN KEY (EpisodeId) REFERENCES Episode (EpisodeId),
FOREIGN KEY (CompanionId) REFERENCES Companion (CompanionId)
)




