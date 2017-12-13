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
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`namaMotor` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`jenisMotor` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`CC` Int( 5 ) NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 5;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "User" -------------------------------------
-- CREATE TABLE "User" -----------------------------------------
CREATE TABLE `User` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`namaDepan` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`namaBelakang` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`alamatUser` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`emailUser` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`nomerPonselUser` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`userName` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "orderService" -----------------------------
-- CREATE TABLE "orderService" ---------------------------------
CREATE TABLE `orderService` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`motorPelanggan` Int( 11 ) NULL,
	`jenisPerbaikan` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`tanggalService` Date NULL,
	`jamService` Time NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "pegawai" ----------------------------------
-- CREATE TABLE "pegawai" --------------------------------------
CREATE TABLE `pegawai` ( 
	`pegawaiId` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`NIK` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`nama_depan` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`nama_belakang` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`nomer_telpon` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`alamat_pegawai` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`email_pegawai` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	PRIMARY KEY ( `pegawaiId` ) )
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
	`namaPemilik` Int( 11 ) NULL,
	`motorPemilik` Int( 11 ) NULL,
	`platNomer` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`nomerRangka` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`nomerMesin` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "dataOrderService" -------------------------
-- CREATE TABLE "dataOrderService" -----------------------------
CREATE TABLE `dataOrderService` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`PegawaiId` Int( 11 ) NULL,
	`DataPerbaikan` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`serviceOrderId` Int( 11 ) NULL,
	`serviceBerikutnya` Date NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "Motor" ------------------------------------
INSERT INTO `Motor`(`id`,`namaMotor`,`jenisMotor`,`CC`) VALUES ( '1', 'Aerox', 'Moped', '150' );
INSERT INTO `Motor`(`id`,`namaMotor`,`jenisMotor`,`CC`) VALUES ( '2', 'Byson', 'Sport', '150' );
INSERT INTO `Motor`(`id`,`namaMotor`,`jenisMotor`,`CC`) VALUES ( '3', 'Jupiter', 'Bebek', '125' );
INSERT INTO `Motor`(`id`,`namaMotor`,`jenisMotor`,`CC`) VALUES ( '4', 'Jupiter MX', 'Bebek', '135' );
-- ---------------------------------------------------------


-- Dump data of "User" -------------------------------------
INSERT INTO `User`(`id`,`namaDepan`,`namaBelakang`,`alamatUser`,`emailUser`,`nomerPonselUser`,`userName`) VALUES ( '1', 'Sasongko Adi', 'Nugroho', 'Jl. BSD', 'xxx@xxx.com', '08115441192', 'sasongkoadi' );
INSERT INTO `User`(`id`,`namaDepan`,`namaBelakang`,`alamatUser`,`emailUser`,`nomerPonselUser`,`userName`) VALUES ( '2', 'Sutomo', 'tomo', 'Jl. Ramayana', 'xxx@xxx.com', '081111111111', 'tomosutomo' );
-- ---------------------------------------------------------


-- Dump data of "orderService" -----------------------------
INSERT INTO `orderService`(`id`,`motorPelanggan`,`jenisPerbaikan`,`tanggalService`,`jamService`) VALUES ( '1', '1', 'Service Berkala', '2017-12-13', '08:30:00' );
INSERT INTO `orderService`(`id`,`motorPelanggan`,`jenisPerbaikan`,`tanggalService`,`jamService`) VALUES ( '2', '2', 'Service Gratis', '2017-12-13', '09:15:00' );
INSERT INTO `orderService`(`id`,`motorPelanggan`,`jenisPerbaikan`,`tanggalService`,`jamService`) VALUES ( '3', '3', 'Service Gratis', '2017-12-13', '09:45:00' );
-- ---------------------------------------------------------


-- Dump data of "pegawai" ----------------------------------
INSERT INTO `pegawai`(`pegawaiId`,`NIK`,`nama_depan`,`nama_belakang`,`nomer_telpon`,`alamat_pegawai`,`email_pegawai`) VALUES ( '1', '1103985', 'Sutomo', 'Tomo', '085250013192', 'Jl. Ramayana', 'dodol@gmail.com' );
INSERT INTO `pegawai`(`pegawaiId`,`NIK`,`nama_depan`,`nama_belakang`,`nomer_telpon`,`alamat_pegawai`,`email_pegawai`) VALUES ( '2', '1108585', 'Fauzi', 'Achmad', '082250040086', 'Jl. BSD', 'bedel@gmail.com' );
-- ---------------------------------------------------------


-- Dump data of "pemilikMotor" -----------------------------
INSERT INTO `pemilikMotor`(`id`,`namaPemilik`,`motorPemilik`,`platNomer`,`nomerRangka`,`nomerMesin`) VALUES ( '1', '1', '2', 'KT 5525 QA', 'MH3RG4610HK1245', 'G3E4E-12345' );
INSERT INTO `pemilikMotor`(`id`,`namaPemilik`,`motorPemilik`,`platNomer`,`nomerRangka`,`nomerMesin`) VALUES ( '2', '2', '1', 'KT 5552 QA', 'MH3RG4610HK1245', 'G3E4E-12345' );
INSERT INTO `pemilikMotor`(`id`,`namaPemilik`,`motorPemilik`,`platNomer`,`nomerRangka`,`nomerMesin`) VALUES ( '3', '1', '3', 'kt 5432 qa', 'mhrg14ghk112', 'g3e4e-6543' );
-- ---------------------------------------------------------


-- Dump data of "dataOrderService" -------------------------
INSERT INTO `dataOrderService`(`id`,`serviceOrderId`,`PegawaiId`,`DataPerbaikan`,`serviceBerikutnya`) VALUES ( '1', '1', '1', 'Bearing, oli, lampu depan, tune up', '2018-01-10' );
INSERT INTO `dataOrderService`(`id`,`serviceOrderId`,`PegawaiId`,`DataPerbaikan`,`serviceBerikutnya`) VALUES ( '2', '2', '2', 'Ganti kampas kopling, ', '2018-01-09' );
-- ---------------------------------------------------------


-- CREATE INDEX "motorPelanggan" ---------------------------
-- CREATE INDEX "motorPelanggan" -------------------------------
CREATE INDEX `motorPelanggan` USING BTREE ON `orderService`( `motorPelanggan` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "motorPemilik" -----------------------------
-- CREATE INDEX "motorPemilik" ---------------------------------
CREATE INDEX `motorPemilik` USING BTREE ON `pemilikMotor`( `motorPemilik` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "namaPemilik" ------------------------------
-- CREATE INDEX "namaPemilik" ----------------------------------
CREATE INDEX `namaPemilik` USING BTREE ON `pemilikMotor`( `namaPemilik` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "PegawaiId" --------------------------------
-- CREATE INDEX "PegawaiId" ------------------------------------
CREATE INDEX `PegawaiId` USING BTREE ON `dataOrderService`( `PegawaiId` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "serviceOrderId" ---------------------------
-- CREATE INDEX "serviceOrderId" -------------------------------
CREATE INDEX `serviceOrderId` USING BTREE ON `dataOrderService`( `serviceOrderId` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "pemilikmotor_ibfk_1" -----------------------
-- CREATE LINK "pemilikmotor_ibfk_1" ---------------------------
ALTER TABLE `pemilikMotor`
	ADD CONSTRAINT `pemilikmotor_ibfk_1` FOREIGN KEY ( `motorPemilik` )
	REFERENCES `Motor`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "pemilikmotor_ibfk_2" -----------------------
-- CREATE LINK "pemilikmotor_ibfk_2" ---------------------------
ALTER TABLE `pemilikMotor`
	ADD CONSTRAINT `pemilikmotor_ibfk_2` FOREIGN KEY ( `namaPemilik` )
	REFERENCES `User`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "orderservice_ibfk_1" -----------------------
-- CREATE LINK "orderservice_ibfk_1" ---------------------------
ALTER TABLE `orderService`
	ADD CONSTRAINT `orderservice_ibfk_1` FOREIGN KEY ( `motorPelanggan` )
	REFERENCES `pemilikMotor`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "dataorderservice_ibfk_1" -------------------
-- CREATE LINK "dataorderservice_ibfk_1" -----------------------
ALTER TABLE `dataOrderService`
	ADD CONSTRAINT `dataorderservice_ibfk_1` FOREIGN KEY ( `serviceOrderId` )
	REFERENCES `orderService`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "dataorderservice_ibfk_2" -------------------
-- CREATE LINK "dataorderservice_ibfk_2" -----------------------
ALTER TABLE `dataOrderService`
	ADD CONSTRAINT `dataorderservice_ibfk_2` FOREIGN KEY ( `serviceOrderId` )
	REFERENCES `orderService`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "dataorderservice_ibfk_3" -------------------
-- CREATE LINK "dataorderservice_ibfk_3" -----------------------
ALTER TABLE `dataOrderService`
	ADD CONSTRAINT `dataorderservice_ibfk_3` FOREIGN KEY ( `PegawaiId` )
	REFERENCES `pegawai`( `pegawaiId` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "dataorderservice_ibfk_4" -------------------
-- CREATE LINK "dataorderservice_ibfk_4" -----------------------
ALTER TABLE `dataOrderService`
	ADD CONSTRAINT `dataorderservice_ibfk_4` FOREIGN KEY ( `PegawaiId` )
	REFERENCES `pegawai`( `pegawaiId` )
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


