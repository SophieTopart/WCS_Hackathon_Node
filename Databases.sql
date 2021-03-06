-- MySQL Script generated by MySQL Workbench
-- Tue May 11 16:40:26 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mars_vs_wild
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mars_vs_wild
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mars_vs_wild` DEFAULT CHARACTER SET utf8 ;
USE `mars_vs_wild` ;

-- -----------------------------------------------------
-- Table `mars_vs_wild`.`games`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mars_vs_wild`.`games` (
  `idgames` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `place` VARCHAR(45) NOT NULL,
  `image` LONGTEXT NOT NULL,
  `description` LONGTEXT NOT NULL,
  PRIMARY KEY (`idgames`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mars_vs_wild`.`players`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mars_vs_wild`.`players` (
  `idplayers` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `species` VARCHAR(45) NOT NULL,
  `planet` VARCHAR(45) NOT NULL,
  `photo` LONGTEXT NULL,
  `player_description` LONGTEXT NULL,
  `team` VARCHAR(45) NULL,
  `games_idgames` INT NOT NULL,
  PRIMARY KEY (`idplayers`, `games_idgames`),
  INDEX `fk_players_games_idx` (`games_idgames` ASC) VISIBLE,
  CONSTRAINT `fk_players_games`
    FOREIGN KEY (`games_idgames`)
    REFERENCES `mars_vs_wild`.`games` (`idgames`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
