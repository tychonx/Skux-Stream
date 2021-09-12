USE sql5436308;

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `permission` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id` int PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE `playlist` (
  `ownerID` int NOT NULL,
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `ImageUrl` varchar(255) NOT NULL,
  `acessTier` int NOT NULL,
  `date` varchar(255) NOT NULL
);

CREATE TABLE `Arist` (
  `userid` int,
  `name` varchar(255),
  `id` int PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE `SongGroup` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `playlistId` int,
  `songId` int,
  `ablumId` int,
  `genre` varchar(255)
);

CREATE TABLE `song` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `artist` int,
  `AudioFile` varchar(255) NOT NULL,
  `ImageUrl` varchar(255) NOT NULL,
  `features` boolean NOT NULL,
  `featuresUserId` int
);

CREATE TABLE `album` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `artist` int,
  `name` varchar(255) NOT NULL
);

ALTER TABLE `playlist` ADD FOREIGN KEY (`ownerID`) REFERENCES `user` (`id`);

ALTER TABLE `Arist` ADD FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

ALTER TABLE `SongGroup` ADD FOREIGN KEY (`playlistId`) REFERENCES `playlist` (`id`);

ALTER TABLE `SongGroup` ADD FOREIGN KEY (`songId`) REFERENCES `song` (`id`);

ALTER TABLE `SongGroup` ADD FOREIGN KEY (`ablumId`) REFERENCES `album` (`id`);

ALTER TABLE `song` ADD FOREIGN KEY (`artist`) REFERENCES `Arist` (`id`);

ALTER TABLE `album` ADD FOREIGN KEY (`artist`) REFERENCES `Arist` (`id`);
