<?php
$gaji = _get("tbgaji10",['SUM(gaji_dasar_1+gaji_dasar_2+gaji_direksi+gaji_komisaris) as gaji, nama,YEAR(tanggal) as tanggal'],'GROUP BY nama,YEAR(tanggal) ORDER BY nama,YEAR(tanggal)');
$data = to_one_column($gaji);
function to_one_column($gaji)
{
	foreach ($gaji as $g){
		$result[$g['nama']] = ['gaji'.$g['tanggal'] => $g['gaji']];
	}
	return $result;
}
function persentase($num,$result_num)
{
	$ret = ($num/$result_num)*100;
	return (string)($ret > 0 ? $ret : 0) ."%";
}
?>
<div class="col-md-4">
<table class="table col-md-4" style="max-width: 35% !important;">
	<thead>
		<tr>
			<th>Nama GL</th>
			<th>TH 2019</th>
			<th>TH 2020</th>
			<th>Growth</th>
			<th>Selisih</th>
		</tr>
	</thead>
	<tbody>
		<?php
		$has = [];
		foreach ($gaji as $key => $value) 
		{
			if (!in_array($value['nama'], $has)) {
				# code...
		?>
		<tr>
			<td><a href="<?= url('nama='.$value['nama']);?>"><?= $value['nama'];?></a></td>
			<td><?= @$data[$value['nama']]['gaji2019'];?></td>
			<td><?= @$data[$value['nama']]['gaji2020'];?></td>
			<td><?= persentase(@$data[$value['nama']]['gaji2020'] - @$data[$value['nama']]['gaji2019'],@$data[$value['nama']]['gaji2019']);?></td>
			<td><?= @$data[$value['nama']]['gaji2020'] - @$data[$value['nama']]['gaji2019'];?></td>
		</tr>
		<?php
				$has[] = $value['nama'];

			}
		}
		?>
	</tbody>
</table>
</div>