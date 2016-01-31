--Conexión a oracle 12c desde php

<?php
  $conn = oci_connect("system","system","localhost/orcl");
  if(!$conn){
	  $m = oci_error();
	  echo $m['message']. "\n";
	  exit;
  }else{
	  echo "conexión exitosa a oracle";
  }
  oci_close($conn);
  
  ?>
