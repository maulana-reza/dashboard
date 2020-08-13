
<?php 
$cek = get_filter();
$where = !empty($cek) ? $cek : '';
$group_by = " GROUP BY nama,".(@$_GET['show_by']=="bulan" ? "MONTH(tanggal)" : "YEAR(tanggal)");

if ($where) {
	$datas = _get('tbgaji10',[_sum($sum).' as gaji ','tanggal'],' WHERE '.$where.$group_by);
}else{
	 $datas = _get('tbgaji10',[_sum($sum).' as gaji','tanggal'],$group_by);	
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
	return @$datas ? '['.implode(',', $datas).']' : false;
}
$charts = chart_line($datas);

?>
<div id="chartContainer" class="col-md-8"></div>
<script>

window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
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
	data: [{
		type: "line",
		showInLegend: true,
		name: "Total Visit",
		markerType: "square",
		toolTipContent: get_filter_ontooltip()+"{x} : {y}",
		xValueFormatString: "YYYY",
		dataPoints: <?= $charts ? $charts : '[]' ;?>,
	}]
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
 