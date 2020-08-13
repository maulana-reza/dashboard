<?php
$koneksi = mysqli_connect("localhost","root","asobiasobase","dashboard");

$halaman = 5;
$page = isset($_GET["page"]) ? (int)$_GET["page"] : 0;
$mulai = ($page>1) ? ($page * $halaman) - $halaman : 0;
$total = _get('tbgaji10',['count(distinct nama) as total'])[0]['total'];
$pages = ceil($total/$halaman);
// var sum : jumlah gaji
$sum  = [
      'tambah' => [
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
      ],
      'kurang' => [
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
      ]
    ];
// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  exit();
}
 /**
   * query builder get where
   * 
   * @param string $table
   * @param array $column
   * @param array $select
   * @param boolean $in_var
   * @return array
   * 
   * 
   */ 
  function _get_where($table,$column = array(),$select = ['*'],$in_var = true)
  {
  	$select = implode(",", $select);
  	$query = "SELECT ".$select." FROM ".$table."";
  	
  	end($column);
  	$last = key($column);
  	if(array_keys($column)){
      $query.=' WHERE ';
    }
  	foreach ($column as $key => $value) {
  	
  		$query .= "$key = '$value'";
  		if ($last != $key)
  			$query .=" AND ";
  	
  	}
    if (!$in_var) {
      return $query;
    }
  	$data = _query($query);

  	if ($data) {
  		return $data;
  	}
    return false;
  	// _false('Data '.$table.' not found');

  }
  /**
   * query builder get like
   * 
   * @param string $table
   * @param array $column
   * @param array $select
   * @return array
   * 
   * 
   */ 
  function _get_like($table,$column,$select = ['*'])
  {
  	$select = implode(",", $select);
  	$query = "SELECT ".$select." FROM ".$table." WHERE ";
  	
		  	end($column);   
	$last = key($column);
  	
  	foreach ($column as $key => $value) {
  	
  		$query .= "$key LIKE '%$value%'";
  		if ($last != $key)
  			$query .=" AND ";
  	
  	}
  	
  	$data = _query($query);
  	if ($data) {
  		return $data;
  	}
  	_false('Data '.$table.' not found');

  }
  /**
   * query builder INSERT
   * 
   * @param string $table
   * @param array $column
   * @return string
   * 
   * 
   */ 
  function _insert($table,$column)
  {
  	end($column);   
	  $last = key($column);

  	$field_key 		= "(";
  	$field_value 	= "(";
  	foreach ($column as $key => $value) {
  	
  		$field_key 	 .= "$key";
  		$field_value .= "'$value'";
  		
  		if ($last != $key){
  			$field_key	 .=",";
  			$field_value .=",";
  		}
  	
  	}

  	$field_key 		.= ")";
  	$field_value 	.= ")";

  	$query = "INSERT INTO $table $field_key VALUES $field_value";

  	$data = _query($query);

	  return $data;
  }
  /**
   * query builder UPDATE
   * 
   * @param string $table
   * @param array $column
   * @return string
   * 
   * 
   */ 
  function _update($table,$column,$column_where)
  {
    end($column);   
    $last = key($column);
    $set = "";
    foreach ($column as $key => $value) {
    
      $set .= "$key = '$value'";
      if ($last != $key)
        $set .=" , ";
    
    }
    end($column_where);   
    $last = key($column_where);
    $where="";
    foreach ($column_where as $key => $value) {
    
      $where .= "$key = '$value'";
      if ($last != $key)
        $where .=" AND ";
    
    }
    $query = "UPDATE $table SET $set WHERE $where ";
    $data = _query($query);

  }
  function _get($table,$select= ['*'],$additional='')
  {
    $select = implode(",", $select);
    $query = "SELECT ".$select." FROM ".$table.' '.$additional;
    $data = _query($query);
    return is_array($data) ? $data : false;
  }
  function _query($query='')
  {
    global $koneksi;
    $data = mysqli_query($koneksi,$query) or die(mysqli_error($koneksi));
    $datas = mysqli_fetch_all($data,MYSQLI_ASSOC);
    return is_array($datas) ? $datas : false;
  }
function url($additional = false){
  $part = explode('?', $_SERVER['REQUEST_URI']);
  return sprintf(
    "%s://%s%s".($additional ? '?'.$additional : ''),
    isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off' ? 'https' : 'http',
    $_SERVER['SERVER_NAME'],
    $part[0]
  );
}
function get_filter($add = [])
{
  $except = [
    'show',
    'page'
  ];
  $except = array_merge($except,$add);
  foreach ($_GET as $key => $value) {
    if (!empty($value) && !in_array($key, $except)) {
      $where[] = $key."='".$value."'";
    }
  }
  return @$where ? implode(' AND ',$where) : '';
}

function get_filter_show_by(){
	$bulan = [
		'chart' => "MMM YYYY",
	];
	
	$tahun = [
		'chart' => "YYYY",
	];
	return @$_GET['show'] =="bulan" ? $bulan : $tahun;
}

function _sum($data){
  $add  = '('.implode("+", $data['tambah']).')';
  $kurang = '('.implode("+", $data['kurang']).')';
  return $add."-".$kurang;
}
function _limit(){

global $halaman;
global $page;
global $mulai;
global $total;
global $pages;
  return $limit = "LIMIT $mulai , $halaman";
}