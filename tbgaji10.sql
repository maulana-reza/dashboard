-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2020 at 05:38 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dashbordholding`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbgaji1010`
--

CREATE TABLE IF NOT EXISTS `tbgaji1010` (
  `kode_id` decimal(12,0) DEFAULT '0',
  `tanggal` date DEFAULT '0000-00-00',
  `type` varchar(15) DEFAULT '0',
  `pers_no_old` varchar(15) DEFAULT '0',
  `pers_no` varchar(15) DEFAULT '0',
  `nama` varchar(100) DEFAULT '0',
  `tanggl_lahir` date DEFAULT '0000-00-00',
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
  `gaji_dasar_1` bigint(20) DEFAULT '0',
  `gaji_dasar_2` bigint(20) DEFAULT '0',
  `gaji_direksi` bigint(20) DEFAULT '0',
  `gaji_komisaris` bigint(20) DEFAULT '0',
  `honorarium` bigint(20) DEFAULT '0',
  `tunj_jabatan_eselon` bigint(20) DEFAULT '0',
  `tunj_pelaksana` bigint(20) DEFAULT '0',
  `tunj_iuran_pasti_dplk` bigint(20) DEFAULT '0',
  `tunj_khusus` bigint(20) DEFAULT '0',
  `tunj_daerah` bigint(20) DEFAULT '0',
  `tunj_grading` bigint(20) DEFAULT '0',
  `tunj_kendaraan` bigint(20) DEFAULT '0',
  `tunj_rangkap_jabatan` bigint(20) DEFAULT '0',
  `tunj_biaya_adm_bank` bigint(20) DEFAULT '0',
  `tunj_pakaian_dinas_2500` bigint(20) DEFAULT '0',
  `tunj_kesejahteraan` bigint(20) DEFAULT '0',
  `tunj_pen_jwab_narkotik` bigint(20) DEFAULT '0',
  `tunj_pen_jawab_alkes` bigint(20) DEFAULT '0',
  `ins_prod_penelitian` bigint(20) DEFAULT '0',
  `tjkhilprakpartklir_khs` bigint(20) DEFAULT '0',
  `t_khusus_kfa` bigint(20) DEFAULT '0',
  `tunj_kinerja_2720` bigint(20) DEFAULT '0',
  `fasilitas_komisaris` bigint(20) DEFAULT '0',
  `lembur_total` bigint(20) DEFAULT '0',
  `lembur_supervisor` bigint(20) DEFAULT '0',
  `lembur_asman` bigint(20) DEFAULT '0',
  `kelebihan_lembur` bigint(20) DEFAULT '0',
  `thr` bigint(20) DEFAULT '0',
  `sumbangan_cuti_panjang` bigint(20) DEFAULT '0',
  `sumbangan_cuti_tahunan` bigint(20) DEFAULT '0',
  `insentif_prestasi` bigint(20) DEFAULT '0',
  `insentif_tahunan` bigint(20) DEFAULT '0',
  `supporting` bigint(20) DEFAULT '0',
  `insentif_produksi` bigint(20) DEFAULT '0',
  `tunj_kinerja_4140` bigint(20) DEFAULT '0',
  `tunj_pakaian_dinas_4230` bigint(20) DEFAULT '0',
  `t_kesejahteraan_(irr)` bigint(20) DEFAULT '0',
  `sumbangan_pindah` bigint(20) DEFAULT '0',
  `insentif_pajak_pmk23_2020` bigint(20) DEFAULT '0',
  `uang_muka_pesangon` bigint(20) DEFAULT '0',
  `pot_iuran_pasti` bigint(20) DEFAULT '0',
  `pot_wajib_koperasi` bigint(20) DEFAULT '0',
  `pot_iuran_sp` bigint(20) DEFAULT '0',
  `pot_uang_makan` bigint(20) DEFAULT '0',
  `pot_pakaian_dinas` bigint(20) DEFAULT '0',
  `pot_pinjaman_koperasi` bigint(20) DEFAULT '0',
  `pot_bazis` bigint(20) DEFAULT '0',
  `pot_ambulan` bigint(20) DEFAULT '0',
  `pot_dinas` bigint(20) DEFAULT '0',
  `pot_pinjaman_kendaraan` bigint(20) DEFAULT '0',
  `pot_ykkkf_pribadi` bigint(20) DEFAULT '0',
  `pot_pinjaman_mutasi` bigint(20) DEFAULT '0',
  `pot_kematian` bigint(20) DEFAULT '0',
  `pot_keterlambatan` bigint(20) DEFAULT '0',
  `pot_bank_mandiri` bigint(20) DEFAULT '0',
  `pot_bank_bri` bigint(20) DEFAULT '0',
  `pot_bank_btn` bigint(20) DEFAULT '0',
  `pot_bank_dki` bigint(20) DEFAULT '0',
  `pot_bank_bjb` bigint(20) DEFAULT '0',
  `pot_administrasi_bank_br` bigint(20) DEFAULT '0',
  `pot_lain-lain` bigint(20) DEFAULT '0',
  `bpjs_jkk_perusahaan` bigint(20) DEFAULT '0',
  `er_jamsostek_pens_contrb` bigint(20) DEFAULT '0',
  `bpjs_jht_karyawan` bigint(20) DEFAULT '0',
  `bpjs_jkm_perusahaan` bigint(20) DEFAULT '0',
  `bpjs_kesehatan_perusahaan` bigint(20) DEFAULT '0',
  `bpjs_kesehatan_karyawan` bigint(20) DEFAULT '0',
  `bpjs_jp_perusahaan` bigint(20) DEFAULT '0',
  `ee_bpjs_pens_contrb` bigint(20) DEFAULT '0',
  `jkk_jkm_prsh_profesional` bigint(20) DEFAULT '0',
  `jkk_jkm_kryw_profesional` bigint(20) DEFAULT '0',
  `ykkkf_perusahaan` bigint(20) DEFAULT '0',
  `ykkkf_karyawan` bigint(20) DEFAULT '0',
  `dapen_perusahaan` bigint(20) DEFAULT '0',
  `dapen_karyawan` bigint(20) DEFAULT '0',
  `dplk_bni_perusahaan` bigint(20) DEFAULT '0',
  `dplk_bni_karyawan` bigint(20) DEFAULT '0',
  `dplk_bri_perusahaan` bigint(20) DEFAULT '0',
  `dplk_bri_karyawan` bigint(20) DEFAULT '0',
  `dplk_mandiri_perusahaan` bigint(20) DEFAULT '0',
  `dplk_mandiri_karyawan` bigint(20) DEFAULT '0',
  `t_pajak` bigint(20) DEFAULT '0',
  `total_bruto_regular` bigint(20) DEFAULT '0',
  `total_pajak_regular` bigint(20) DEFAULT '0',
  `bank_transfer` bigint(20) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbgaji1010`
--

INSERT INTO `tbgaji1010` (`kode_id`, `tanggal`, `type`, `pers_no_old`, `pers_no`, `nama`, `tanggl_lahir`, `pers_sub_area`, `pers_sub_area_desc`, `cost_center`, `cost_center_text`, `emp_group`, `emp_group_desc`, `emp_subgroup`, `emp_subgroup_desc`, `status`, `status_desc`, `golongan`, `s_kel`, `gaji_dasar_1`, `gaji_dasar_2`, `gaji_direksi`, `gaji_komisaris`, `honorarium`, `tunj_jabatan_eselon`, `tunj_pelaksana`, `tunj_iuran_pasti_dplk`, `tunj_khusus`, `tunj_daerah`, `tunj_grading`, `tunj_kendaraan`, `tunj_rangkap_jabatan`, `tunj_biaya_adm_bank`, `tunj_pakaian_dinas_2500`, `tunj_kesejahteraan`, `tunj_pen_jwab_narkotik`, `tunj_pen_jawab_alkes`, `ins_prod_penelitian`, `tjkhilprakpartklir_khs`, `t_khusus_kfa`, `tunj_kinerja_2720`, `fasilitas_komisaris`, `lembur_total`, `lembur_supervisor`, `lembur_asman`, `kelebihan_lembur`, `thr`, `sumbangan_cuti_panjang`, `sumbangan_cuti_tahunan`, `insentif_prestasi`, `insentif_tahunan`, `supporting`, `insentif_produksi`, `tunj_kinerja_4140`, `tunj_pakaian_dinas_4230`, `t_kesejahteraan_(irr)`, `sumbangan_pindah`, `insentif_pajak_pmk23_2020`, `uang_muka_pesangon`, `pot_iuran_pasti`, `pot_wajib_koperasi`, `pot_iuran_sp`, `pot_uang_makan`, `pot_pakaian_dinas`, `pot_pinjaman_koperasi`, `pot_bazis`, `pot_ambulan`, `pot_dinas`, `pot_pinjaman_kendaraan`, `pot_ykkkf_pribadi`, `pot_pinjaman_mutasi`, `pot_kematian`, `pot_keterlambatan`, `pot_bank_mandiri`, `pot_bank_bri`, `pot_bank_btn`, `pot_bank_dki`, `pot_bank_bjb`, `pot_administrasi_bank_br`, `pot_lain-lain`, `bpjs_jkk_perusahaan`, `er_jamsostek_pens_contrb`, `bpjs_jht_karyawan`, `bpjs_jkm_perusahaan`, `bpjs_kesehatan_perusahaan`, `bpjs_kesehatan_karyawan`, `bpjs_jp_perusahaan`, `ee_bpjs_pens_contrb`, `jkk_jkm_prsh_profesional`, `jkk_jkm_kryw_profesional`, `ykkkf_perusahaan`, `ykkkf_karyawan`, `dapen_perusahaan`, `dapen_karyawan`, `dplk_bni_perusahaan`, `dplk_bni_karyawan`, `dplk_bri_perusahaan`, `dplk_bri_karyawan`, `dplk_mandiri_perusahaan`, `dplk_mandiri_karyawan`, `t_pajak`, `total_bruto_regular`, `total_pajak_regular`, `bank_transfer`) VALUES
('1', '2019-01-01', 'Offcycle', '10000001', '19670715A', 'IKHWANI, S.E.', '1967-07-15', 'A100', 'Kantor Pusat', '10100001', 'Divisi Satuan Pengawas Intern', '1', 'PT', '1B', 'I b', '10', 'PT', 'GM18', 'T2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9),
('2', '2019-01-01', 'Offcycle', '10000001', '19670715A', 'IKHWANI, S.E.', '1967-07-15', 'A100', 'Kantor Pusat', '10100001', 'Divisi Satuan Pengawas Intern', '1', 'PT', '1B', 'I b', '10', 'PT', 'GM18', 'T2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5),
('3', '2019-01-01', 'Offcycle', '10000002', '19721012B', 'ANANG', '1972-10-12', 'A100', 'Kantor Pusat', '10100001', 'Divisi Satuan Pengawas Intern', '1', 'PT', '2B', 'II b', '10', 'PT', 'MANAJER1', 'T3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6),
('4', '2019-01-01', 'Offcycle', '10000002', '19721012B', 'ANANG', '1972-10-12', 'A100', 'Kantor Pusat', '10100001', 'Divisi Satuan Pengawas Intern', '1', 'PT', '2B', 'II b', '10', 'PT', 'MANAJER1', 'T3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5),
('5', '2019-01-01', 'Offcycle', '10000003', '19680109A', ' WARJONO, S.E.', '1968-01-09', 'A100', 'Kantor Pusat', '10210200', 'Unit Akuntansi', '1', 'PT', '2B', 'II b', '10', 'PT', 'MANAJER1', 'T3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6),
('6', '2019-01-01', 'Offcycle', '10000003', '19680109A', 'WARJONO, S.E.', '1968-01-09', 'A100', 'Kantor Pusat', '10210200', 'Unit Akuntansi', '1', 'PT', '2B', 'II b', '10', 'PT', 'MANAJER1', 'T3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5),
('7', '2019-01-01', 'Offcycle', '10000004', '19640718A', 'YULINA, S.E, QIA., M.M.', '1964-07-18', 'A100', 'Kantor Pusat', '10230100', 'Unit Kepatuhan & Manajemen Resiko', '1', 'PT', '2B', 'II b', '10', 'PT', 'MANAJER1', 'T1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8),
('8', '2019-01-01', 'Offcycle', '10000004', '19640718A', 'YULINA, S.E, QIA., M.M.', '1964-07-18', 'A100', 'Kantor Pusat', '10230100', 'Unit Kepatuhan & Manajemen Resiko', '1', 'PT', '2B', 'II b', '10', 'PT', 'MANAJER1', 'T1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5),
('9', '2019-01-01', 'Offcycle', '10000005', '19701003A', 'SETYANTO, Apt.', '1970-10-03', 'A100', 'Kantor Pusat', '13000200', 'Unit Pengembangan Properti', '1', 'PT', '2C', 'II c', '10', 'PT', 'MANAJER1', 'T3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7),
('10', '2019-01-01', 'Offcycle', '10000005', '19701003A', ' SETYANTO, Apt.', '1970-10-03', 'A100', 'Kantor Pusat', '13000200', 'Unit Pengembangan Properti', '1', 'PT', '2C', 'II c', '10', 'PT', 'MANAJER1', 'T3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5)

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
