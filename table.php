<?php

$halaman = 5;
$page = isset($_GET["page"]) ? (int)$_GET["page"] : 0;
$mulai = ($page>1) ? ($page * $halaman) - $halaman : 0;
$total = _get('tbgaji10',['count(distinct nama) as total'])[0]['total'];
$pages = ceil($total/$halaman);   
$limit = "LIMIT $mulai , $halaman";

$gaji = _get("tbgaji10",[''._sum($sum).' as gaji, nama,YEAR(tanggal) as tanggal'],'GROUP BY nama,YEAR(tanggal) ORDER BY nama,YEAR(tanggal) '.$limit);
$data = to_one_column($gaji);
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
function pagination($pages)
{

}
?>
<div class="col-md-3">
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
				$selisih = if_zero(@$data[$value['nama']]['gaji2020']) - if_zero(@$data[$value['nama']]['gaji2019']);
		?>
		<tr>
			<td><a href="<?= url('nama='.$value['nama']);?>"><?= $value['nama'];?></a></td>
			<td><?= if_zero(@$data[$value['nama']]['gaji2019']);?></td>
			<td><?= if_zero(@$data[$value['nama']]['gaji2020']);?></td>
			<td><?= persentase(@$data[$value['nama']]['gaji2020'] - @$data[$value['nama']]['gaji2019'],@$data[$value['nama']]['gaji2019']);?></td>
			<td><?= $selisih > 0 ? $selisih : 0;?></td>
		</tr>
		<?php
				$has[] = $value['nama'];

			}
		}
		?>
	</tbody>
</table>
<nav aria-label="Page navigation example">
  <ul class="pagination">
	<?php for ($i=1; $i<=$pages ; $i++){ ?>
	<li class="page-item">
		<a class="page-link" href="<?= url('page='.$i);?>"><?= $i;?></a>
	</li>
	<?php } ?>
  </ul>
</nav>
</div>