-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "Motor" ------------------------------------
-- CREATE TABLE "Motor" ----------------------------------------
CREATE TABLE `Motor` ( 
	`motorId` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`jenis` Int( 11 ) NULL,
	`nama` Int( 11 ) NULL,
	`CC` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `motorId` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 6;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "User" -------------------------------------
-- CREATE TABLE "User" -----------------------------------------
CREATE TABLE `User` ( 
	`userId` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`nama_depan` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`nama_belakang` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`alamat` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`email` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`nomerTelepon` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	PRIMARY KEY ( `userId` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "pemilikMotor" -----------------------------
-- CREATE TABLE "pemilikMotor" ---------------------------------
CREATE TABLE `pemilikMotor` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`platNomer` VarChar( 11 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`namaPemilik` Int( 11 ) NULL,
	`namaMotor` Int( 11 ) NULL,
	`nomerRangka` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`nomerMesin` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 20;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "namaMotor" --------------------------------
-- CREATE TABLE "namaMotor" ------------------------------------
CREATE TABLE `namaMotor` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`namaMotor` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 7;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "centimeterCubic" --------------------------
-- CREATE TABLE "centimeterCubic" ------------------------------
CREATE TABLE `centimeterCubic` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`numberCC` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 7;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "jenisMotor" -------------------------------
-- CREATE TABLE "jenisMotor" -----------------------------------
CREATE TABLE `jenisMotor` ( 
	`jenisId` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`jenisMotor` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	PRIMARY KEY ( `jenisId` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "Motor" ------------------------------------
INSERT INTO `Motor`(`motorId`,`jenis`,`CC`,`nama`) VALUES ( '3', '2', '3', '5' );
INSERT INTO `Motor`(`motorId`,`jenis`,`CC`,`nama`) VALUES ( '4', '2', '1', '2' );
INSERT INTO `Motor`(`motorId`,`jenis`,`CC`,`nama`) VALUES ( '5', '2', '1', '3' );
-- ---------------------------------------------------------


-- Dump data of "User" -------------------------------------
-- ---------------------------------------------------------


-- Dump data of "pemilikMotor" -----------------------------
-- ---------------------------------------------------------


-- Dump data of "namaMotor" --------------------------------
INSERT INTO `namaMotor`(`id`,`namaMotor`) VALUES ( '1', 'Aerox' );
INSERT INTO `namaMotor`(`id`,`namaMotor`) VALUES ( '2', 'Mio Soul' );
INSERT INTO `namaMotor`(`id`,`namaMotor`) VALUES ( '3', 'Mio Soul GT' );
INSERT INTO `namaMotor`(`id`,`namaMotor`) VALUES ( '4', 'X-Ride' );
INSERT INTO `namaMotor`(`id`,`namaMotor`) VALUES ( '5', 'NMAX' );
INSERT INTO `namaMotor`(`id`,`namaMotor`) VALUES ( '6', 'XMAX' );
-- ---------------------------------------------------------


-- Dump data of "centimeterCubic" --------------------------
INSERT INTO `centimeterCubic`(`id`,`numberCC`) VALUES ( '1', '125' );
INSERT INTO `centimeterCubic`(`id`,`numberCC`) VALUES ( '2', '135' );
INSERT INTO `centimeterCubic`(`id`,`numberCC`) VALUES ( '3', '150' );
INSERT INTO `centimeterCubic`(`id`,`numberCC`) VALUES ( '4', '155' );
INSERT INTO `centimeterCubic`(`id`,`numberCC`) VALUES ( '5', '200' );
INSERT INTO `centimeterCubic`(`id`,`numberCC`) VALUES ( '6', '250' );
-- ---------------------------------------------------------


-- Dump data of "jenisMotor" -------------------------------
INSERT INTO `jenisMotor`(`jenisId`,`jenisMotor`) VALUES ( '1', 'Bebek' );
INSERT INTO `jenisMotor`(`jenisId`,`jenisMotor`) VALUES ( '2', 'Moped' );
INSERT INTO `jenisMotor`(`jenisId`,`jenisMotor`) VALUES ( '3', 'Sport' );
-- ---------------------------------------------------------


-- CREATE INDEX "centimeterCubic" --------------------------
-- CREATE INDEX "centimeterCubic" ------------------------------
CREATE INDEX `centimeterCubic` USING BTREE ON `Motor`( `CC` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "namaMotor" --------------------------------
-- CREATE INDEX "namaMotor" ------------------------------------
CREATE INDEX `namaMotor` USING BTREE ON `Motor`( `nama` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "jenis" ------------------------------------
-- CREATE INDEX "jenis" ----------------------------------------
CREATE INDEX `jenis` USING BTREE ON `Motor`( `jenis` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "namaMotor" --------------------------------
-- CREATE INDEX "namaMotor" ------------------------------------
CREATE INDEX `namaMotor` USING BTREE ON `pemilikMotor`( `namaMotor` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "namaPemilik" ------------------------------
-- CREATE INDEX "namaPemilik" ----------------------------------
CREATE INDEX `namaPemilik` USING BTREE ON `pemilikMotor`( `namaPemilik` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "pemilikmotor_ibfk_2" -----------------------
-- CREATE LINK "pemilikmotor_ibfk_2" ---------------------------
ALTER TABLE `pemilikMotor`
	ADD CONSTRAINT `pemilikmotor_ibfk_2` FOREIGN KEY ( `namaMotor` )
	REFERENCES `Motor`( `motorId` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "motor_ibfk_1" ------------------------------
-- CREATE LINK "motor_ibfk_1" ----------------------------------
ALTER TABLE `Motor`
	ADD CONSTRAINT `motor_ibfk_1` FOREIGN KEY ( `nama` )
	REFERENCES `namaMotor`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "motor_ibfk_2" ------------------------------
-- CREATE LINK "motor_ibfk_2" ----------------------------------
ALTER TABLE `Motor`
	ADD CONSTRAINT `motor_ibfk_2` FOREIGN KEY ( `CC` )
	REFERENCES `centimeterCubic`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "motor_ibfk_3" ------------------------------
-- CREATE LINK "motor_ibfk_3" ----------------------------------
ALTER TABLE `Motor`
	ADD CONSTRAINT `motor_ibfk_3` FOREIGN KEY ( `jenis` )
	REFERENCES `jenisMotor`( `jenisId` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


