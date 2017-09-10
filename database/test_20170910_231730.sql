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
AUTO_INCREMENT = 6;
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
AUTO_INCREMENT = 3;
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
AUTO_INCREMENT = 6;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "kendaraan" --------------------------------
/*!40000 ALTER TABLE `kendaraan` DISABLE KEYS */

BEGIN;

REPLACE INTO `kendaraan`(`kendaraanId`,`user_id`,`jenisKendaraan`,`noPlat`,`noRangka`,`noMesin`) VALUES ( '6', '4', 'Mio', 'KT 4424 DA', 'MR1234MR', 'MH1234MH' );
REPLACE INTO `kendaraan`(`kendaraanId`,`user_id`,`jenisKendaraan`,`noPlat`,`noRangka`,`noMesin`) VALUES ( '7', '5', 'MX', 'KT 3333 DJ', 'MN1234MN', 'MH1234MH' );
COMMIT;
/*!40000 ALTER TABLE `kendaraan` ENABLE KEYS */

-- ---------------------------------------------------------


-- Dump data of "service" ----------------------------------
/*!40000 ALTER TABLE `service` DISABLE KEYS */

BEGIN;

REPLACE INTO `service`(`serviceId`,`kendaraan_id`,`tanggalService`,`jenisService`,`statusService`) VALUES ( '3', '6', '2017-09-10', 'Berat', 'waiting' );
COMMIT;
/*!40000 ALTER TABLE `service` ENABLE KEYS */

-- ---------------------------------------------------------


-- Dump data of "user" -------------------------------------
/*!40000 ALTER TABLE `user` DISABLE KEYS */

BEGIN;

REPLACE INTO `user`(`personId`,`namaDepan`,`namaBelakang`,`username`,`email`,`password`,`alamat`,`noPonsel`) VALUES ( '4', 'Sasongko', 'Adi', 'sasongkoadi', 'sasongoko005@gmail.com', '123', 'BSD', '082250040086' );
REPLACE INTO `user`(`personId`,`namaDepan`,`namaBelakang`,`username`,`email`,`password`,`alamat`,`noPonsel`) VALUES ( '5', 'Fauzi', 'Achmad', 'fauziachmad', 'fauziachmad@gmail.com', '123', 'BSD', '08115441192' );
COMMIT;
/*!40000 ALTER TABLE `user` ENABLE KEYS */

-- ---------------------------------------------------------


-- CREATE INDEX "FK_user_id" -------------------------------
-- CREATE INDEX "FK_user_id" -----------------------------------
CREATE INDEX `FK_user_id` USING BTREE ON `kendaraan`( `user_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "kendaraan_id" -----------------------------
-- CREATE INDEX "kendaraan_id" ---------------------------------
CREATE INDEX `kendaraan_id` USING BTREE ON `service`( `kendaraan_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "serviceId" --------------------------------
-- CREATE INDEX "serviceId" ------------------------------------
CREATE INDEX `serviceId` USING BTREE ON `service`( `serviceId` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "personId" ---------------------------------
-- CREATE INDEX "personId" -------------------------------------
CREATE INDEX `personId` USING BTREE ON `user`( `personId` );
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


-- CREATE LINK "kendaraan_idfk_1" --------------------------
-- CREATE LINK "kendaraan_idfk_1" ------------------------------
ALTER TABLE `service`
	ADD CONSTRAINT `kendaraan_idfk_1` FOREIGN KEY ( `kendaraan_id` )
	REFERENCES `kendaraan`( `kendaraanId` )
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


