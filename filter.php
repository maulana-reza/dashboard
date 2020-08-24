<?php

/**
 * @param string
 * @param array id|name
 */
function select_option_from_db($table,$name,$selected_id = null)
{
  $key_v = key($selected_id);
  $tables = _get($table);
  foreach ($tables as $key => $value) {
    $selected = @$value[$name['nama']]==$selected_id[$key_v] ? "selected" : "";
    $option[] = '
      <option value="'.@$value[$name['nama']].'" '.$selected.'>'.@$value[$name['nama']].'</option>
    ';
  }
  $select = '
  <select name="'.$key_v.'" onchange="filter()">
  <option value="">select</option>
   %s 
   </select>';
  return @$option ? sprintf($select,implode('', $option)) : '';

}
function get_filter_ontooltip($current_filter)
{
	$additional[] = [
				'title'=> 'Filter Nama',
				'index'=> 'nama',
			];
	$new_arr = _array_flip($_GET);
	$current_filter = array_merge($current_filter,$additional);
	$new_cur = _array_change($current_filter);
	foreach ($new_arr as $key => $value) {
		if (($unset = array_search($value, $new_cur)) > -1 && @$_GET[$current_filter[$unset]['index']]) {
			$filter .= $current_filter[$unset]['title'] ." : ".$_GET[$current_filter[$unset]['index']]."<br>";
		}
	}
	return @$filter ? $filter : '';
}
function _array_flip($array){
	foreach ($array as $key => $value) {
		$new_arr[] = $key; 
	}
	return @$new_arr ? $new_arr : [];
}
function _array_change($array)
{
	foreach ($array as $key => $value) {
		$new_arr[$key] = $value['index']; 
	}
	return $new_arr;
}
/*
 *index : field untuk pencarian di table tbgaji
 *table : nama table
 *name  : field dari table yang di pilih
 *title : label untuk filter
 */
$filter[] = [
				'title'=> 'Filter Divisi',
				'name' => 'nama_divisi',
				'table'=> 'divisi',
				'index'=> 'cost_center_text',
			];
$filter[] = [
				'title'=> 'Filter Lokasi',
				'name' => 'nama_lokasi',
				'table'=> 'lokasi',
				'index'=> 'pers_sub_area_desc',
			];

$filter[] = [
				'title'=> 'Filter Entitas',
				'name' => 'nama_entitas',
				'table'=> 'entitas',
				'index'=> 'pers_no',
			];

$filter[] = [
				'title'=> 'Filter Jenis Biaya',
				'name' => 'jenis_biaya',
				'table'=> 'entitas',
				'index'=> 'jenis',
			];


$filter[] = [
				'title'=> 'Filter Nama Pegawai',
				'name' => 'nama_pegawai',
				'table'=> 'pegawai',
				'index'=> 'nama',
			];

?> 
<div class="col-md-12 border">
	<form action="<?= url('');?>" method="get" id="filter" >
		<input type="hidden" name="nama" value="<?= @$_GET['nama'];?>">
		<?php foreach ($filter as $key => $value): ?>
			
		<div class="form-group">
			<label for="divisi"><?= $value['title'];?></label>
				<?php
				$name[$value['index']] = @$_GET[$value['index']];
				echo select_option_from_db($value['table'],['nama'=>$value['name']],@$name);
				unset($name);
				?>
		</div>
		<?php endforeach ?>

		<div class="form-group">
			<label for="divisi">Show By</label>
			<select name="show" id="" onchange="filter()">
				<option value=""> select</option>

				<?php $show = ['tahun','bulan'];?>
				<?php foreach ($show as $key => $div) {
					$selected = $div == @$_GET['show'] ? 'selected' : '';
				?>
				<option value="<?= $div;?>" <?= $selected ;?>><?= $div;?></option>
				<?php
				}
				?>
			</select>
		</div>	
	</form>
		<div class="form-group text-right">
			<button onclick="reset()">
				Reset
			</button>
		</div>
</div>
<script type="text/javascript">
	function filter(){
		document.getElementById('filter').submit()
	}
	function reset(){
		let url = '<?= url('');?>';
		window.location = url;
	}
	function get_filter_ontooltip() {
		return "<?= get_filter_ontooltip($filter);?>";
	}
</script>