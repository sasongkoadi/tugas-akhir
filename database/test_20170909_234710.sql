-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "kendaraan" --------------------------------
-- CREATE TABLE "kendaraan" ------------------------------------
CREATE TABLE `kendaraan` ( 
	`kendaraanId` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`user_id` Int( 11 ) NOT NULL,
	`jenisKendaraan` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
	`noPlat` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
	`noRangka` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
	`noMesin` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
	PRIMARY KEY ( `kendaraanId` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 5;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "service" ----------------------------------
-- CREATE TABLE "service" --------------------------------------
CREATE TABLE `service` ( 
	`serviceId` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`kendaraan_id` Int( 11 ) NOT NULL,
	`tanggalService` Date NULL DEFAULT NULL,
	`jenisService` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
	`statusService` Char( 20 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
	PRIMARY KEY ( `serviceId` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "user" -------------------------------------
-- CREATE TABLE "user" -----------------------------------------
CREATE TABLE `user` ( 
	`personId` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`namaDepan` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
	`namaBelakang` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
	`username` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
	`email` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
	`password` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
	`alamat` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
	`noPonsel` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
	PRIMARY KEY ( `personId` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "kendaraan" --------------------------------
BEGIN;

REPLACE INTO `kendaraan`(`kendaraanId`,`user_id`,`jenisKendaraan`,`noPlat`,`noRangka`,`noMesin`) VALUES ( '2', '2', 'Mio', 'KT 4424 DA', 'MH1234MR', 'MH1234MN' );
REPLACE INTO `kendaraan`(`kendaraanId`,`user_id`,`jenisKendaraan`,`noPlat`,`noRangka`,`noMesin`) VALUES ( '3', '2', 'MX', 'KT 5452 DJ', 'MH2222MR', 'MH333MN' );
REPLACE INTO `kendaraan`(`kendaraanId`,`user_id`,`jenisKendaraan`,`noPlat`,`noRangka`,`noMesin`) VALUES ( '4', '1', 'NMAX', 'KT 5555 DA', 'MH5555MR', 'MH5555MN' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "service" ----------------------------------
-- ---------------------------------------------------------


-- Dump data of "user" -------------------------------------
BEGIN;

REPLACE INTO `user`(`personId`,`namaDepan`,`namaBelakang`,`username`,`email`,`password`,`alamat`,`noPonsel`) VALUES ( '1', 'Sasongko', 'Adi', 'sasongkoadi', 'sasongko005@gmail.com', '12345', 'BSD', '12' );
REPLACE INTO `user`(`personId`,`namaDepan`,`namaBelakang`,`username`,`email`,`password`,`alamat`,`noPonsel`) VALUES ( '2', 'Adi', 'Nugroho', 'adinug', 'adinug@gmail.com', '1234', 'BSD', '08115441192' );
COMMIT;
-- ---------------------------------------------------------


-- CREATE INDEX "FK_user_id" -------------------------------
-- CREATE INDEX "FK_user_id" -----------------------------------
CREATE INDEX `FK_user_id` USING BTREE ON `kendaraan`( `user_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "kendaraan_ibfk_1" --------------------------
-- CREATE LINK "kendaraan_ibfk_1" ------------------------------
ALTER TABLE `kendaraan`
	ADD CONSTRAINT `kendaraan_ibfk_1` FOREIGN KEY ( `user_id` )
	REFERENCES `user`( `personId` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE VIEW "view1" -------------------------------------
-- CREATE VIEW "view1" -----------------------------------------
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view1`
AS select 1 AS `1`;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


