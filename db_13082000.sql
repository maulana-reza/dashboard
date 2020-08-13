/*
SQLyog Professional v12.5.1 (32 bit)
MySQL - 10.4.12-MariaDB : Database - dashboard
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dashboard` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `dashboard`;

/*Table structure for table `divisi` */

DROP TABLE IF EXISTS `divisi`;

CREATE TABLE `divisi` (
  `id_divisi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_divisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `divisi` */

insert  into `divisi`(`id_divisi`,`nama_divisi`) values 
(1,'divisi');

/*Table structure for table `entitas` */

DROP TABLE IF EXISTS `entitas`;

CREATE TABLE `entitas` (
  `id_entitas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_entitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_entitas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `entitas` */

insert  into `entitas`(`id_entitas`,`nama_entitas`) values 
(1,'as'),
(2,'as'),
(3,'as');

/*Table structure for table `jenis_biaya` */

DROP TABLE IF EXISTS `jenis_biaya`;

CREATE TABLE `jenis_biaya` (
  `id_jenis_biaya` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_biaya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_jenis_biaya`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `jenis_biaya` */

insert  into `jenis_biaya`(`id_jenis_biaya`,`jenis_biaya`) values 
(1,'JENIS_BIAYA');

/*Table structure for table `lokasi` */

DROP TABLE IF EXISTS `lokasi`;

CREATE TABLE `lokasi` (
  `id_lokasi` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama_lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_lokasi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `lokasi` */

insert  into `lokasi`(`id_lokasi`,`nama_lokasi`) values 
(1,'asd'),
(2,'asd'),
(3,'asd');

/*Table structure for table `pegawai` */

DROP TABLE IF EXISTS `pegawai`;

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pegawai` */

insert  into `pegawai`(`id_pegawai`,`nama_pegawai`) values 
(1,'DADANG'),
(2,'TULUS');

/*Table structure for table `tbgaji10` */

DROP TABLE IF EXISTS `tbgaji10`;

CREATE TABLE `tbgaji10` (
  `kode_id` decimal(12,0) DEFAULT 0,
  `tanggal` varchar(15) DEFAULT '0',
  `type` varchar(15) DEFAULT '0',
  `pers_no_old` varchar(15) DEFAULT '0',
  `pers_no` varchar(15) DEFAULT '0',
  `nama` varchar(100) DEFAULT '0',
  `tanggl_lahir` varchar(100) DEFAULT '0',
  `pers_sub_area` varchar(100) DEFAULT '0',
  `pers_sub_area_desc` varchar(100) DEFAULT '0',
  `cost_center` varchar(100) DEFAULT '0',
  `cost_center_text` varchar(100) DEFAULT '0',
  `emp_group` varchar(100) DEFAULT '0',
  `emp_group_desc` varchar(100) DEFAULT '0',
  `emp_subgroup` varchar(100) DEFAULT '0',
  `emp_subgroup_desc` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT '0',
  `status_desc` varchar(100) DEFAULT '0',
  `golongan` varchar(100) DEFAULT '0',
  `s_kel` varchar(100) DEFAULT '0',
  `gaji_dasar_1` bigint(20) DEFAULT 0,
  `gaji_dasar_2` bigint(20) DEFAULT 0,
  `gaji_direksi` bigint(20) DEFAULT 0,
  `gaji_komisaris` bigint(20) DEFAULT 0,
  `honorarium` bigint(20) DEFAULT 0,
  `tunj_jabatan_eselon` bigint(20) DEFAULT 0,
  `tunj_pelaksana` bigint(20) DEFAULT 0,
  `tunj_iuran_pasti_dplk` bigint(20) DEFAULT 0,
  `tunj_khusus` bigint(20) DEFAULT 0,
  `tunj_daerah` bigint(20) DEFAULT 0,
  `tunj_grading` bigint(20) DEFAULT 0,
  `tunj_kendaraan` bigint(20) DEFAULT 0,
  `tunj_rangkap_jabatan` bigint(20) DEFAULT 0,
  `tunj_biaya_adm_bank` bigint(20) DEFAULT 0,
  `tunj_pakaian_dinas_2500` bigint(20) DEFAULT 0,
  `tunj_kesejahteraan` bigint(20) DEFAULT 0,
  `tunj_pen_jwab_narkotik` bigint(20) DEFAULT 0,
  `tunj_pen_jawab_alkes` bigint(20) DEFAULT 0,
  `ins_prod_penelitian` bigint(20) DEFAULT 0,
  `tjkhilprakpartklir_khs` bigint(20) DEFAULT 0,
  `t_khusus_kfa` bigint(20) DEFAULT 0,
  `tunj_kinerja_2720` bigint(20) DEFAULT 0,
  `fasilitas_komisaris` bigint(20) DEFAULT 0,
  `lembur_total` bigint(20) DEFAULT 0,
  `lembur_supervisor` bigint(20) DEFAULT 0,
  `lembur_asman` bigint(20) DEFAULT 0,
  `kelebihan_lembur` bigint(20) DEFAULT 0,
  `thr` bigint(20) DEFAULT 0,
  `sumbangan_cuti_panjang` bigint(20) DEFAULT 0,
  `sumbangan_cuti_tahunan` bigint(20) DEFAULT 0,
  `insentif_prestasi` bigint(20) DEFAULT 0,
  `insentif_tahunan` bigint(20) DEFAULT 0,
  `supporting` bigint(20) DEFAULT 0,
  `insentif_produksi` bigint(20) DEFAULT 0,
  `tunj_kinerja_4140` bigint(20) DEFAULT 0,
  `tunj_pakaian_dinas_4230` bigint(20) DEFAULT 0,
  `t_kesejahteraan_(irr)` bigint(20) DEFAULT 0,
  `sumbangan_pindah` bigint(20) DEFAULT 0,
  `insentif_pajak_pmk23_2020` bigint(20) DEFAULT 0,
  `uang_muka_pesangon` bigint(20) DEFAULT 0,
  `pot_iuran_pasti` bigint(20) DEFAULT 0,
  `pot_wajib_koperasi` bigint(20) DEFAULT 0,
  `pot_iuran_sp` bigint(20) DEFAULT 0,
  `pot_uang_makan` bigint(20) DEFAULT 0,
  `pot_pakaian_dinas` bigint(20) DEFAULT 0,
  `pot_pinjaman_koperasi` bigint(20) DEFAULT 0,
  `pot_bazis` bigint(20) DEFAULT 0,
  `pot_ambulan` bigint(20) DEFAULT 0,
  `pot_dinas` bigint(20) DEFAULT 0,
  `pot_pinjaman_kendaraan` bigint(20) DEFAULT 0,
  `pot_ykkkf_pribadi` bigint(20) DEFAULT 0,
  `pot_pinjaman_mutasi` bigint(20) DEFAULT 0,
  `pot_kematian` bigint(20) DEFAULT 0,
  `pot_keterlambatan` bigint(20) DEFAULT 0,
  `pot_bank_mandiri` bigint(20) DEFAULT 0,
  `pot_bank_bri` bigint(20) DEFAULT 0,
  `pot_bank_btn` bigint(20) DEFAULT 0,
  `pot_bank_dki` bigint(20) DEFAULT 0,
  `pot_bank_bjb` bigint(20) DEFAULT 0,
  `pot_administrasi_bank_br` bigint(20) DEFAULT 0,
  `pot_lain-lain` bigint(20) DEFAULT 0,
  `bpjs_jkk_perusahaan` bigint(20) DEFAULT 0,
  `er_jamsostek_pens_contrb` bigint(20) DEFAULT 0,
  `bpjs_jht_karyawan` bigint(20) DEFAULT 0,
  `bpjs_jkm_perusahaan` bigint(20) DEFAULT 0,
  `bpjs_kesehatan_perusahaan` bigint(20) DEFAULT 0,
  `bpjs_kesehatan_karyawan` bigint(20) DEFAULT 0,
  `bpjs_jp_perusahaan` bigint(20) DEFAULT 0,
  `ee_bpjs_pens_contrb` bigint(20) DEFAULT 0,
  `jkk_jkm_prsh_profesional` bigint(20) DEFAULT 0,
  `jkk_jkm_kryw_profesional` bigint(20) DEFAULT 0,
  `ykkkf_perusahaan` bigint(20) DEFAULT 0,
  `ykkkf_karyawan` bigint(20) DEFAULT 0,
  `dapen_perusahaan` bigint(20) DEFAULT 0,
  `dapen_karyawan` bigint(20) DEFAULT 0,
  `dplk_bni_perusahaan` bigint(20) DEFAULT 0,
  `dplk_bni_karyawan` bigint(20) DEFAULT 0,
  `dplk_bri_perusahaan` bigint(20) DEFAULT 0,
  `dplk_bri_karyawan` bigint(20) DEFAULT 0,
  `dplk_mandiri_perusahaan` bigint(20) DEFAULT 0,
  `dplk_mandiri_karyawan` bigint(20) DEFAULT 0,
  `t_pajak` bigint(20) DEFAULT 0,
  `total_bruto_regular` bigint(20) DEFAULT 0,
  `total_pajak_regular` bigint(20) DEFAULT 0,
  `bank_transfer` bigint(20) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbgaji10` */

insert  into `tbgaji10`(`kode_id`,`tanggal`,`type`,`pers_no_old`,`pers_no`,`nama`,`tanggl_lahir`,`pers_sub_area`,`pers_sub_area_desc`,`cost_center`,`cost_center_text`,`emp_group`,`emp_group_desc`,`emp_subgroup`,`emp_subgroup_desc`,`status`,`status_desc`,`golongan`,`s_kel`,`gaji_dasar_1`,`gaji_dasar_2`,`gaji_direksi`,`gaji_komisaris`,`honorarium`,`tunj_jabatan_eselon`,`tunj_pelaksana`,`tunj_iuran_pasti_dplk`,`tunj_khusus`,`tunj_daerah`,`tunj_grading`,`tunj_kendaraan`,`tunj_rangkap_jabatan`,`tunj_biaya_adm_bank`,`tunj_pakaian_dinas_2500`,`tunj_kesejahteraan`,`tunj_pen_jwab_narkotik`,`tunj_pen_jawab_alkes`,`ins_prod_penelitian`,`tjkhilprakpartklir_khs`,`t_khusus_kfa`,`tunj_kinerja_2720`,`fasilitas_komisaris`,`lembur_total`,`lembur_supervisor`,`lembur_asman`,`kelebihan_lembur`,`thr`,`sumbangan_cuti_panjang`,`sumbangan_cuti_tahunan`,`insentif_prestasi`,`insentif_tahunan`,`supporting`,`insentif_produksi`,`tunj_kinerja_4140`,`tunj_pakaian_dinas_4230`,`t_kesejahteraan_(irr)`,`sumbangan_pindah`,`insentif_pajak_pmk23_2020`,`uang_muka_pesangon`,`pot_iuran_pasti`,`pot_wajib_koperasi`,`pot_iuran_sp`,`pot_uang_makan`,`pot_pakaian_dinas`,`pot_pinjaman_koperasi`,`pot_bazis`,`pot_ambulan`,`pot_dinas`,`pot_pinjaman_kendaraan`,`pot_ykkkf_pribadi`,`pot_pinjaman_mutasi`,`pot_kematian`,`pot_keterlambatan`,`pot_bank_mandiri`,`pot_bank_bri`,`pot_bank_btn`,`pot_bank_dki`,`pot_bank_bjb`,`pot_administrasi_bank_br`,`pot_lain-lain`,`bpjs_jkk_perusahaan`,`er_jamsostek_pens_contrb`,`bpjs_jht_karyawan`,`bpjs_jkm_perusahaan`,`bpjs_kesehatan_perusahaan`,`bpjs_kesehatan_karyawan`,`bpjs_jp_perusahaan`,`ee_bpjs_pens_contrb`,`jkk_jkm_prsh_profesional`,`jkk_jkm_kryw_profesional`,`ykkkf_perusahaan`,`ykkkf_karyawan`,`dapen_perusahaan`,`dapen_karyawan`,`dplk_bni_perusahaan`,`dplk_bni_karyawan`,`dplk_bri_perusahaan`,`dplk_bri_karyawan`,`dplk_mandiri_perusahaan`,`dplk_mandiri_karyawan`,`t_pajak`,`total_bruto_regular`,`total_pajak_regular`,`bank_transfer`) values 
(1,'2019/01/01','Offcycle','10000001','1000001A','DADANG','1967/07/15','A100','Kantor Pusat','10100001','Divisi A','1','PT','1B','I b','10','PT','GM18','T2',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9),
(2,'2019/01/01','Offcycle','10000001','1000001A','DADANG','1967/07/15','A100','Kantor Pusat','10100001','Divisi A','1','PT','1B','I b','10','PT','GM18','T2',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5),
(3,'2019/01/01','Offcycle','10000002','1000002A','AHMAD','1972/10/12','A100','Kantor Jakarta','10100001','Divisi B','1','PT','2B','II b','10','PT','MANAJER1','T3',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6),
(4,'2019/01/01','Offcycle','10000002','1000002A','AHMAD','1972/10/12','A100','Kantor Jakarta','10100001','Divisi B','1','PT','2B','II b','10','PT','MANAJER1','T3',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5),
(5,'2019/01/01','Offcycle','10000015','19680109A','TULUS ','1968/01/09','A100','Kantor Bandung','10210200','Unit Akuntansi','1','PT','2B','II b','10','PT','MANAJER1','T3',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6),
(6,'2019/01/01','Offcycle','10000015','19680109A','TULUS ','1968/01/09','A100','Kantor Bandung','10210200','Unit Akuntansi','1','PT','2B','II b','10','PT','MANAJER1','T3',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5),
(4,'2020/01/01','Offcycle','10000002','1000002A','AHMAD','1972/10/12','A100','Kantor Jakarta','10100001','Divisi B','1','PT','2B','II b','10','PT','MANAJER1','T3',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
