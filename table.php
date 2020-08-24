<?php

  $grouping = [
      'basic_income' => [
        'gaji_dasar_1',
        'gaji_dasar_2',
        'gaji_direksi',
        'honorarium',
        'gaji_komisaris',
        'tunj_jabatan_eselon',
        'tunj_pelaksana',
        'tunj_iuran_pasti_dplk',
        'tunj_khusus',
        'tunj_daerah'], 
      'potongan' => [
        'pot_iuran_pasti' ,
        'pot_wajib_koperasi' ,
        'pot_iuran_sp' ,
        'pot_uang_makan' ,
        'pot_pakaian_dinas' ,
        'pot_pinjaman_koperasi' ,
        'pot_bazis' ,
        'pot_ambulan' ,
        'pot_dinas' ,
        'pot_pinjaman_kendaraan' ,
        'pot_ykkkf_pribadi' ,
        'pot_pinjaman_mutasi' ,
        'pot_kematian' ,
        'pot_keterlambatan' ,
        'pot_bank_mandiri' ,
        'pot_bank_bri' ,
        'pot_bank_btn' ,
        'pot_bank_dki' ,
        'pot_bank_bjb' ,
      ],
      'insentif' => [
        'insentif_prestasi',
        'insentif_tahunan',
        'insentif_pajak_pmk23_2020',
        'insentif_produksi',
      ],
    ];
    $sum_all  = [
        'gaji_dasar_1',
        'gaji_dasar_2',
        'gaji_direksi',
        'honorarium',
        'gaji_komisaris',
        'tunj_jabatan_eselon',
        'tunj_pelaksana',
        'tunj_iuran_pasti_dplk',
        'tunj_khusus',
        'tunj_daerah',
        'tunj_grading',
        'tunj_kendaraan',
        'tunj_rangkap_jabatan',
        'tunj_biaya_adm_bank',
        'tunj_pakaian_dinas_2500',
        'tunj_kesejahteraan',
        'tunj_pen_jawab_alkes',
        'ins_prod_penelitian',
        'tunj_kinerja_2720',
        't_khusus_kfa',
        'fasilitas_komisaris',
        'lembur_total',
        'lembur_supervisor',
        'kelebihan_lembur',
        'thr',
        'sumbangan_cuti_panjang',
        'sumbangan_cuti_tahunan',
        'insentif_prestasi',
        'insentif_tahunan',
        'supporting',
        'insentif_produksi',
        'tunj_kinerja_4140',
        'tunj_pakaian_dinas_4230',
        'sumbangan_pindah',
        'insentif_pajak_pmk23_2020',
        'uang_muka_pesangon',
        'pot_iuran_pasti' ,
        'pot_wajib_koperasi' ,
        'pot_iuran_sp' ,
        'pot_uang_makan' ,
        'pot_pakaian_dinas' ,
        'pot_pinjaman_koperasi' ,
        'pot_bazis' ,
        'pot_ambulan' ,
        'pot_dinas' ,
        'pot_pinjaman_kendaraan' ,
        'pot_ykkkf_pribadi' ,
        'pot_pinjaman_mutasi' ,
        'pot_kematian' ,
        'pot_keterlambatan' ,
        'pot_bank_mandiri' ,
        'pot_bank_bri' ,
        'pot_bank_btn' ,
        'pot_bank_dki' ,
        'pot_bank_bjb' ,
        'pot_administrasi_bank_br' ,
        'bpjs_jkk_perusahaan' ,
        'er_jamsostek_pens_contrb' ,
        'bpjs_jht_karyawan' ,
        'bpjs_jkm_perusahaan' ,
        'bpjs_kesehatan_perusahaan' ,
        'bpjs_kesehatan_karyawan' ,
        'bpjs_jp_perusahaan' ,
        'ee_bpjs_pens_contrb' ,
        'jkk_jkm_prsh_profesional' ,
        'jkk_jkm_kryw_profesional' ,
        'ykkkf_perusahaan' ,
        'ykkkf_karyawan' ,
        'dapen_perusahaan' ,
        'dapen_karyawan' ,
        'dplk_bni_perusahaan' ,
        'dplk_bni_karyawan' ,
        'dplk_bri_perusahaan' ,
        'dplk_bri_karyawan' ,
        'dplk_mandiri_perusahaan' ,
        'dplk_mandiri_karyawan' ,
        't_pajak' ,
    ];
$gaji = _get("tbgaji10",[sum_as($sum_all),' YEAR(tanggal) as tanggal'],'GROUP BY YEAR(tanggal) ORDER BY YEAR(tanggal) asc ');


function if_zero($data){
	return $data > 0 ? $data : 0;
}
function to_one_column($gaji)
{
	foreach ($gaji as $g){
		$result[$g['nama']] = ['gaji'.$g['tanggal'] => $g['gaji']];
	}
	return $result;
}
function persentase($num,$result_num)
{
	if($result_num <= 0){
		return "0%";
	}
	$ret = ($num/$result_num)*100;
	return (string)($ret > 0 ? $ret : 0) ."%";
}
function _array_search($needle,$haystack){
    foreach ($haystack as $key => $value) {
      $data = str_replace('"', " ", json_encode($value));
      if (is_numeric(strpos($data, $needle))) {
        return $key;
      }
    }
    return false;
  
  }
function grouping($data,$group){
 
 foreach ($group as $k => $v) {
 	$last = count($v)-1;
 	foreach ($v as $key => $value) {
 		if ($data[0][$value] != null || @$data[0][$value] != null) {
 		$result[] = [
 				'label' => $value,
 				(string) $data[0]['tanggal'] => $data[0][$value],
 				(string) $data[1]['tanggal'] => $data[1][$value],
 				'growth' => if_zero($data[1][$value] - $data[0][$value]),
 				'selisih'=> if_zero($data[1][$value] - $data[0][$value]),

 		];
 		@$total[$data[0]['tanggal']] += $data[0][$value];
 		@$total[$data[1]['tanggal']] += $data[1][$value];
 		}

 		if ($key == $last) {
 			$result[] = [
 					'label' => $k,
	 				(string) $data[0]['tanggal'] => $total[$data[0]['tanggal']],
	 				(string) $data[1]['tanggal'] => $total[$data[1]['tanggal']],
	 				'growth' => if_zero($data[1][$value] - $data[0][$value]),
	 				'selisih'=> if_zero($data[1][$value] - $data[0][$value]),
	 				'is_collapse' => true,
	 		];
 		@$total[$data[0]['tanggal']] = 0;
 		@$total[$data[1]['tanggal']] = 0;

 		}
 	}



 	if (@$all) {
	 	$all = array_merge(@$all,array_reverse($result));
 	}else{
 		$all = array_reverse($result);
 	}
 	unset($result);

 }
 return $all;
}
$gaji = grouping($gaji,$grouping)

?>

<div class="col-md-4 border overflow-auto">
<label for=""><h3>JENIS BIAYA PEGAWAI</h3></label>
<table class="table" style="max-width: 35% !important;">
	<thead>
		<tr>
			<th></th>
			<th>Jenis biaya	</th>
			<th>TH 2019</th>
			<th>TH 2020</th>
			<th>Growth</th>
		</tr>
	</thead>
	<tbody>
		<?php
		$has = [];
		foreach ($gaji as $key => $value) 
		{
			if (@$value['is_collapse']) {
				$total = $value['2020'];
				@$result['2019'] +=  $value['2019'];
				@$result['2020'] +=  $value['2020'];

			}
			$header = @$value['is_collapse'] ? 'header border' : '';
			$button = @$value['is_collapse'] ? ' <button type="button">+</button> ' : '';
			$url = @$value['is_collapse'] ? '' : url('label='.$value['label']);
			?>
		<tr class="<?= $header ?>">
			<td><?= $button;?></td>
			<td> <a href="<?= $url;?>"><?= $value['label'];?></a></td>
			<td><?= if_zero(@$value['2019']);?></td>
			<td><?= if_zero(@$value['2020']);?></td>
			<td><?= persentase($value['growth'],$total);?></td>
		</tr>
		<?php
		}

		?>
		<tr class=" header">
			<th></th>
			<th> total</th>
			<th><?= if_zero(@$result['2019']);?></th>
			<th><?= if_zero(@$result['2020']);?></th>
			<th><?= persentase($value['growth'],$total);?></th>
		</tr>
	</tbody>
</table>
<nav aria-label="Page navigation example">
<!--   <ul class="pagination">
	<?php for ($i=1; $i<=$pages ; $i++){ ?>
	<li class="page-item">
		<a class="page-link" href="<?= url('page='.$i);?>"><?= $i;?></a>
	</li>
	<?php } ?>
  </ul>
</nav> -->
</div>
<script type="text/javascript">
$('.header').click(function(){
	$(this).nextUntil('tr.header').slideToggle(1000);
});
$('tr.header').nextUntil('tr.header').slideToggle(1000);

</script>
<style>
tr.header
{
    cursor:pointer;
}
</style>