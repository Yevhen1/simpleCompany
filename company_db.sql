-- MySQL Script generated by MySQL Workbench
-- 06/16/16 16:44:56
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema company_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema company_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `company_db` DEFAULT CHARACTER SET utf8 ;
USE `company_db` ;

-- -----------------------------------------------------
-- Table `company_db`.`department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `company_db`.`department` (
  `id_department` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_department`),
  UNIQUE INDEX `id_department_UNIQUE` (`id_department` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `company_db`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `company_db`.`employees` (
  `id_employees` INT NOT NULL AUTO_INCREMENT,
  `sur_name` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` INT NOT NULL,
  `department_id_department` INT NOT NULL,
  PRIMARY KEY (`id_employees`, `department_id_department`),
  INDEX `fk_employees_department_idx` (`department_id_department` ASC),
  CONSTRAINT `fk_employees_department`
    FOREIGN KEY (`department_id_department`)
    REFERENCES `company_db`.`department` (`id_department`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
