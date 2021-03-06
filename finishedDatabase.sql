CREATE TABLE IF NOT EXISTS USER(
  `ID_USER` INT(11) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(255) NOT NULL,
  `EMAIL` VARCHAR(255) NULL DEFAULT NULL,
  `CELLPHONE` VARCHAR(255) NULL DEFAULT NULL,
  `SPASSWORD` VARCHAR(40) NOT NULL,
  `SUPERUSER` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_USER`)
);

CREATE TABLE IF NOT EXISTS SCHEDULE (
  `ID_SCHEDULE` INT(11) NOT NULL AUTO_INCREMENT,
  `SCHEDULE_DATE` DATETIME NOT NULL,
  `TYPE_SERVICE` VARCHAR(255) NOT NULL,
  `ID_USER` INT(11) NOT NULL,
  PRIMARY KEY (`ID_SCHEDULE`),
  CONSTRAINT FK_USER_SCHEDULE FOREIGN KEY (ID_USER) REFERENCES USER(ID_USER)
);


