-- MySQL Script generated by MySQL Workbench
-- jue 12 oct 2017 22:22:33 CDT
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema ACF
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ACF` ;

-- -----------------------------------------------------
-- Schema ACF
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ACF` DEFAULT CHARACTER SET utf8 ;
USE `ACF` ;

-- -----------------------------------------------------
-- Table `ACF`.`DATOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ACF`.`DATOS` (
  `DATOS_ID` INT NOT NULL AUTO_INCREMENT,
  `NOMBRE` VARCHAR(45) NULL,
  `APATERNO` VARCHAR(45) NULL,
  `AMATERNO` VARCHAR(45) NULL,
  `DIRECCION` VARCHAR(45) NULL,
  `COLONIA` VARCHAR(45) NULL,
  `MUNICIPIO` VARCHAR(45) NULL,
  `ESTADO` VARCHAR(45) NULL,
  PRIMARY KEY (`DATOS_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ACF`.`USUARIOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ACF`.`USUARIOS` (
  `USUARIOS_ID` INT NOT NULL AUTO_INCREMENT,
  `USUARIO` VARCHAR(68) NOT NULL,
  `PASS` VARCHAR(68) NOT NULL,
  `ES_ADMIN` INT NULL DEFAULT 0,
  `ES_DOCENTE` INT NULL DEFAULT 0,
  `CREADO` DATETIME NULL,
  `DATOS_ID` INT NULL,
  `MATRICULA` INT UNSIGNED NULL,
  `ES_ACTIVO` INT NULL DEFAULT 1,
  `CORREO` VARCHAR(45) NULL,
  PRIMARY KEY (`USUARIOS_ID`),
  INDEX `fk_USUARIOS_1_idx` (`DATOS_ID` ASC),
  INDEX `index3` (`MATRICULA` ASC),
  CONSTRAINT `fk_USUARIOS_1`
    FOREIGN KEY (`DATOS_ID`)
    REFERENCES `ACF`.`DATOS` (`DATOS_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);


-- -----------------------------------------------------
-- Table `ACF`.`MATERIAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ACF`.`MATERIAS` (
  `MATERIAS_ID` INT NOT NULL AUTO_INCREMENT,
  ` NOMBRE` VARCHAR(45) NULL,
  PRIMARY KEY (`MATERIAS_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ACF`.`HORARIOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ACF`.`HORARIOS` (
  `HORARIOS_ID` INT NOT NULL AUTO_INCREMENT,
  `HORARIOS` VARCHAR(45) NULL,
  `AULA` VARCHAR(45) NULL,
  PRIMARY KEY (`HORARIOS_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ACF`.`GRUPOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ACF`.`GRUPOS` (
  `GRUPOS_ID` INT NOT NULL AUTO_INCREMENT,
  ` DESCRIPCION` VARCHAR(45) NULL,
  PRIMARY KEY (`GRUPOS_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ACF`.`HORARIOSMATERIAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ACF`.`HORARIOSMATERIAS` (
  `HORARIOSMATERIAS_ID` INT NOT NULL AUTO_INCREMENT,
  `USUARIOS_ID` INT NULL,
  `MATERIAS_ID` INT NULL,
  `HORARIOS_ID` INT NULL,
  `GRUPOS_ID` INT NULL,
  PRIMARY KEY (`HORARIOSMATERIAS_ID`),
  INDEX `fk_HORARIOSMATERIA_1_idx` (`USUARIOS_ID` ASC),
  INDEX `fk_HORARIOSMATERIA_2_idx` (`MATERIAS_ID` ASC),
  INDEX `fk_HORARIOSMATERIA_3_idx` (`HORARIOS_ID` ASC),
  INDEX `fk_HORARIOSMATERIAS_4_idx` (`GRUPOS_ID` ASC),
  CONSTRAINT `fk_HORARIOSMATERIAS_1`
    FOREIGN KEY (`USUARIOS_ID`)
    REFERENCES `ACF`.`USUARIOS` (`USUARIOS_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_HORARIOSMATERIAS_2`
    FOREIGN KEY (`MATERIAS_ID`)
    REFERENCES `ACF`.`MATERIAS` (`MATERIAS_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_HORARIOSMATERIAS_3`
    FOREIGN KEY (`HORARIOS_ID`)
    REFERENCES `ACF`.`HORARIOS` (`HORARIOS_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_HORARIOSMATERIAS_4`
    FOREIGN KEY (`GRUPOS_ID`)
    REFERENCES `ACF`.`GRUPOS` (`GRUPOS_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
