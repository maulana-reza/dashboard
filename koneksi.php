<?php
  $koneksi = mysqli_connect("localhost","root","asobiasobase","dashboard");

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
    'show'
  ];
  $except = array_merge($except,$add);
  foreach ($_GET as $key => $value) {
    if (!empty($value) && !in_array($key, $except)) {
      $where[] = $key."='".$value."'";
    }
  }
  return @$where ? implode(' AND ',$where) : '';
}