-- MySQL Script generated by MySQL Workbench
-- Sun Jan  6 00:14:03 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DB_TE5
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DB_TE5
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DB_TE5` DEFAULT CHARACTER SET koi8r ;
USE `DB_TE5` ;

-- -----------------------------------------------------
-- Table `DB_TE5`.`cities`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_TE5`.`cities` (
  `cities_id` INT(3) UNSIGNED NOT NULL,
  `name_of_city` VARCHAR(45) NULL,
  PRIMARY KEY (`cities_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_TE5`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_TE5`.`customers` (
  `customers_id` INT(4) UNSIGNED NOT NULL,
  `customer_name` VARCHAR(45) NOT NULL,
  `customer_category` VARCHAR(10) NOT NULL,
  `cities_id` INT(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`customers_id`, `cities_id`),
  INDEX `customers_cities_fk_idx` (`cities_id` ASC) VISIBLE,
  CONSTRAINT `customers_cities_fk`
    FOREIGN KEY (`cities_id`)
    REFERENCES `DB_TE5`.`cities` (`cities_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_TE5`.`codes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_TE5`.`codes` (
  `codes_id` INT(6) UNSIGNED NOT NULL,
  `data_time` DATETIME NOT NULL,
  `cust_id` INT(4) UNSIGNED NOT NULL,
  `code_1` TINYINT(1) UNSIGNED NOT NULL,
  `code_2` TINYINT(1) UNSIGNED NOT NULL,
  `code_3` TINYINT(1) UNSIGNED NOT NULL,
  `code_4` TINYINT(1) UNSIGNED NOT NULL,
  `code_5` TINYINT(1) UNSIGNED NOT NULL,
  `used?` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`codes_id`, `cust_id`),
  INDEX `codes_customers_fk_idx` (`cust_id` ASC) VISIBLE,
  CONSTRAINT `codes_customers_fk`
    FOREIGN KEY (`cust_id`)
    REFERENCES `DB_TE5`.`customers` (`customers_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
COMMENT = '			';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
