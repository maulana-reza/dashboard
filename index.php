<?php
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
	<script type="text/javascript" src="node_modules/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript" src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container p-2">
		<div class="row">
	<?php
	include 'koneksi.php';
	include 'chart.php';
	include 'table.php';
	include 'filter.php';
	?>
		</div>
	</div>

</body>
</html>
