create database parking;
use parking;

  CREATE TABLE `parking`.`espaciovehiculo` (
  `espId` INT NOT NULL AUTO_INCREMENT,
  `espNumero` INT NOT NULL,
  `espEstado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`espId`));
  
CREATE TABLE `parking`.`conductor` (
  `conId` INT NOT NULL AUTO_INCREMENT,
  `conTipoDocumento` VARCHAR(45) NOT NULL,
  `conDocumento` INT NOT NULL,
  `conNombre` VARCHAR(45) NOT NULL,
  `conApellido` VARCHAR(45) NOT NULL,
  `conTelefono` INT NOT NULL,
  `conFechaEntrada` DATETIME NOT NULL,
  `conFechaSalida` DATETIME NULL,
  `conTotalTiempo` INT NULL,
  `ConMonto` DOUBLE NULL,
  PRIMARY KEY (`conId`));
  
CREATE TABLE `parking`.`vehiculo` (
  `vehId` INT NOT NULL AUTO_INCREMENT,
  `condId_fk` INT NOT NULL,
  `vehMarca` VARCHAR(45) NOT NULL,
  `vehPlaca` VARCHAR(45) NOT NULL,
  `espId_fk` INT NOT NULL,
PRIMARY KEY (`vehId`),
FOREIGN KEY (condId_fk) REFERENCES conductor(conId),
FOREIGN KEY (espId_fk) REFERENCES espaciovehiculo(espId));