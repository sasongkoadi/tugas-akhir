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
	`namaMotor` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`jenisMotor` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`CC` Int( 5 ) NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 0;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "User" -------------------------------------
-- CREATE TABLE "User" -----------------------------------------
CREATE TABLE `User` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`namaDepan` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`namaBelakang` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`alamatUser` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`emailUser` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`nomerPonselUser` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`userName` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`accessToken` Text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`password` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 0;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "dataOrderService" -------------------------
-- CREATE TABLE "dataOrderService" -----------------------------
CREATE TABLE `dataOrderService` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`serviceOrderId` Int( 11 ) NULL DEFAULT NULL,
	`PegawaiId` Int( 11 ) NULL DEFAULT NULL,
	`DataPerbaikan` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`serviceBerikutnya` Date NULL DEFAULT NULL,
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
	`motorPelanggan` Int( 11 ) NULL DEFAULT NULL,
	`jenisPerbaikan` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`tanggalService` Date NULL DEFAULT NULL,
	`jamService` Time NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 0;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "pegawai" ----------------------------------
-- CREATE TABLE "pegawai" --------------------------------------
CREATE TABLE `pegawai` ( 
	`pegawaiId` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`NIK` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`nama_depan` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`nama_belakang` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`nomer_telpon` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`alamat_pegawai` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`email_pegawai` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	PRIMARY KEY ( `pegawaiId` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 0;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "pemilikMotor" -----------------------------
-- CREATE TABLE "pemilikMotor" ---------------------------------
CREATE TABLE `pemilikMotor` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`namaPemilik` Int( 11 ) NULL DEFAULT NULL,
	`motorPemilik` Int( 11 ) NULL DEFAULT NULL,
	`platNomer` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`nomerRangka` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`nomerMesin` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 0;
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


-- CREATE LINK "dataorderservice_ibfk_1" -------------------
-- CREATE LINK "dataorderservice_ibfk_1" -----------------------
ALTER TABLE `dataOrderService`
	ADD CONSTRAINT `dataorderservice_ibfk_1` FOREIGN KEY ( `serviceOrderId` )
	REFERENCES `orderService`( `id` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "dataorderservice_ibfk_2" -------------------
-- CREATE LINK "dataorderservice_ibfk_2" -----------------------
ALTER TABLE `dataOrderService`
	ADD CONSTRAINT `dataorderservice_ibfk_2` FOREIGN KEY ( `serviceOrderId` )
	REFERENCES `orderService`( `id` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "dataorderservice_ibfk_3" -------------------
-- CREATE LINK "dataorderservice_ibfk_3" -----------------------
ALTER TABLE `dataOrderService`
	ADD CONSTRAINT `dataorderservice_ibfk_3` FOREIGN KEY ( `PegawaiId` )
	REFERENCES `pegawai`( `pegawaiId` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "dataorderservice_ibfk_4" -------------------
-- CREATE LINK "dataorderservice_ibfk_4" -----------------------
ALTER TABLE `dataOrderService`
	ADD CONSTRAINT `dataorderservice_ibfk_4` FOREIGN KEY ( `PegawaiId` )
	REFERENCES `pegawai`( `pegawaiId` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "orderservice_ibfk_1" -----------------------
-- CREATE LINK "orderservice_ibfk_1" ---------------------------
ALTER TABLE `orderService`
	ADD CONSTRAINT `orderservice_ibfk_1` FOREIGN KEY ( `motorPelanggan` )
	REFERENCES `pemilikMotor`( `id` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "pemilikmotor_ibfk_1" -----------------------
-- CREATE LINK "pemilikmotor_ibfk_1" ---------------------------
ALTER TABLE `pemilikMotor`
	ADD CONSTRAINT `pemilikmotor_ibfk_1` FOREIGN KEY ( `motorPemilik` )
	REFERENCES `Motor`( `id` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "pemilikmotor_ibfk_2" -----------------------
-- CREATE LINK "pemilikmotor_ibfk_2" ---------------------------
ALTER TABLE `pemilikMotor`
	ADD CONSTRAINT `pemilikmotor_ibfk_2` FOREIGN KEY ( `namaPemilik` )
	REFERENCES `User`( `id` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


