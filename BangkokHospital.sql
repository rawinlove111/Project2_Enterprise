-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- BangkokHospital
-- -----------------------------------------------------

-- -----------------------------------------------------
-- BangkokHospital
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BangkokHospital` DEFAULT CHARACTER SET utf8 ;
USE `BangkokHospital` ;

-- -----------------------------------------------------
-- Table `schooladmission`.`advisor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BangkokHospital`.`Doctor` (
  `doctor_id` INT(11) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  `ethnicity` VARCHAR(50) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `phone_number` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`doctor_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `schooladmission`.`advisor_staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BangkokHospital`.`doctor_patient` (
  `id` INT(11) NOT NULL,
  `patient_id` INT(11) NOT NULL,
  `doctor_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `schooladmission`.`staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BangkokHospital`.`staff` (
  `id` INT(11) NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `schooladmission`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BangkokHospital`.`patient` (
  `id` INT(11) NOT NULL,
  `fname` VARCHAR(100) NULL DEFAULT NULL,
  `lname` VARCHAR(100) NULL DEFAULT NULL,
  `age` INT(11) NULL DEFAULT NULL,
  `gender` VARCHAR(20) NULL DEFAULT NULL,
  `zipcode` VARCHAR(50) NULL DEFAULT NULL,
  `city` VARCHAR(100) NULL DEFAULT NULL,
  `province` VARCHAR(100) NULL DEFAULT NULL,
  `address` VARCHAR(200) NULL DEFAULT NULL,
  `phone` VARCHAR(50) NULL DEFAULT NULL,
  `email` VARCHAR(200) NULL DEFAULT NULL,
  `password` VARCHAR(100) NULL DEFAULT NULL,
  `ethnicity` VARCHAR(100) NULL DEFAULT NULL,
  `religion` VARCHAR(100) NULL DEFAULT NULL,
 `status` VARCHAR(100) NULL DEFAULT NULL,
  `remarks` VARCHAR(300) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idstudent_UNIQUE` (`id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
