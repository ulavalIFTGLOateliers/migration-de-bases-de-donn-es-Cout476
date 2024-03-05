DROP TABLE IF EXISTS band;

ALTER TABLE album DROP FOREIGN KEY FK_A_singerName;

ALTER TABLE musician DROP COLUMN bandName;

ALTER TABLE musician DROP COLUMN role;

ALTER TABLE musician CHANGE COLUMN musicianName singerName varchar(50);

ALTER TABLE musician RENAME TO singer;

ALTER TABLE album ADD CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES singer(singerName);





