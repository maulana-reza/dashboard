
<?php 
$cek = get_filter();
$where = !empty($cek) ? $cek : '';
$group_by = " GROUP BY nama,".(@$_GET['show_by']=="bulan" ? "MONTH(tanggal)" : "YEAR(tanggal)");

if ($where) {
	$datas = _get('tbgaji10',[_sum($sum).' as gaji ','tanggal','nama'],' WHERE '.$where.$group_by._limit());
}else{
	 $datas = _get('tbgaji10',[_sum($sum).' as gaji','tanggal','nama'],$group_by._limit());	
}
function date_str($data, $format){
	return date($format,strtotime($data));
}
function chart_line($data){
	foreach ($data as $key => $value) {
		$datas[] = '{
			x : new Date('.date_str($value['tanggal'],'Y,m,d').'),
			y : '.($value['gaji'] > 0 ? (int)$value['gaji'] : 0).',
		}';
	}
	return @$datas ? '['.implode(',', $datas).']' : '[]';
}
function chart_builder($user){
	foreach ($user as $key => $value) {
		$data [] = '{
			type: "line",
			showInLegend: true,
			name: "'.$key.'",
			markerType: "square",
			toolTipContent: get_filter_ontooltip()+"{x} : {y}",
			xValueFormatString: "YYYY",
			dataPoints: '. chart_line($value).',
		}';
	}
	return @$data ? implode(',', $data) : '';

}

function group_names($data){
	foreach ($data as $key => $value) {
		if ($value['tanggal'] != @$result[$value['nama']]['tanggal']) {
			$result[$value['nama']][] = $value;
		}
	}
	return $result;
}
$charts = group_names($datas); 
$charts = chart_builder($charts);
?>
<div id="chartContainer" class="col-md-8 mr-1" height="400px"></div>
<script>

window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	height: 400,
	theme: "light2",
	title:{
		text: "Site Traffic"
	},
	axisX:{
		valueFormatString: "<?= get_filter_show_by()['chart'] ?>",
		crosshair: {
			enabled: true,
			snapToDataPoint: true
		}
	},
	axisY: {
		title: "Gaji",
		includeZero: true,
		crosshair: {
			enabled: true
		}
	},
	toolTip:{
		shared:true
	},  
	legend:{
		cursor:"pointer",
		verticalAlign: "bottom",
		horizontalAlign: "left",
		dockInsidePlotArea: true,
		itemclick: toogleDataSeries
	},
	data: [<?= $charts; ?>]
});
chart.render();

function toogleDataSeries(e){
	if (typeof(e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
		e.dataSeries.visible = false;
	} else{
		e.dataSeries.visible = true;
	}
	chart.render();
}

}
</script>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
 