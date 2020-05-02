<?php
<?php  $conn = new mysqli("localhost","root","","bus");
  if($conn->connect_error){
    die("Failed to connect!".$conn->connect_error);
  }

$n = 10;// if 10 tables pressent dynamic

if($n==1){
	$q="SELECT * FROM route_1";// only one table
}
else{ // more than one 
	$q="SELECT * FROM route_1 UNION ALL";
	for($i=2;$i<$n;$i++){
		$q=$q." "."SELECT * FROM route_".$i." UNION ALL";
	}
	$q=$q." SELECT * FROM route_".$n;
	echo $q

}





