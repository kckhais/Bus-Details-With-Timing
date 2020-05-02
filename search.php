
<!DOCTYPE html>
<?php  $conn = new mysqli("localhost","root","","bus");
  if($conn->connect_error){
    die("Failed to connect!".$conn->connect_error);
  }
?>
<html>
<head>
<?php echo '<title>'.$_POST['searchBoxf'].' TO '.$_POST['searchBoxt'].' BUS TIMETABLE </title>'; ?>;
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'>
  <link rel='stylesheet' href='css/style.css'>
</head>
<body>
  <section>
<?php echo '<h1>'.$_POST['searchBoxf'].' TO '.$_POST['searchBoxt'].' BUS TIMETABLE</h1>'; ?>;
  <div class="tbl-header">
  <table cellpadding="0" cellspacing="0" border="0">
    <thead>
    <tr>
      <th width="6%">TIME</th>
      <th width="10%">ROUTE NAME</th>
      <th width="6%">BUS TYPE</th>
      <th width="30%">VIA ROUTE</th>
      <th width="9%">FROM LOCATION</th>
      <th width="9%">TO LOCATION</th>
      <th width="30%">BUS ROUTE</th>
    </tr>
  </thead>
</table>
</div>
<?php
  $n = 10;
  if($n==1){
    $q="SELECT * FROM route_1";
    }
  else{ // more than one 
    $q="SELECT * FROM route_1 UNION ALL";
    for($i=1;$i<$n;$i++){
      $q=$q."SELECT * FROM route_".$i." UNION ALL";
    }
    $q=$q." SELECT * FROM route_".$n.
?>
<?php
  if(isset($_POST['submit'])){
    $resultf=$_POST['searchBoxf'];
    $resultt=$_POST['searchBoxt'];
    $sql="SELECT DISTINCT ROUTE_"$q".*,bus_table.* FROM bus_table, ROUTE_"$q" WHERE BUS_ROUTE LIKE CONCAT('%', '%$resultt%', '%', '%$resultf%' '%') AND BUS_STOP='$resultt'";
    $result=$conn->query($sql);
    $result->num_rows > 0;
    while($row=$result->fetch_assoc()){


?>

<table cellpadding="0" cellspacing="0" border="0">
  
  <tbody>
  <?php

    echo ('<tr>
    <td width="6%">' .$row['STOP_TIMING'].'</td>
    <td width="10%">' .$row['ROUTE_NAME'].'</td>
    <td width="6%">' .$row['BUS_TYPE'].'</td>
    <td width="30%">' .$row['VIA_ROUTES'].'</td>
    <td width="9%">'.$row['FROM_LOCATION'].'</td>
    <td width="9%">'.$row['TO_LOCATION'].'</td>
    <td width="30%">'.$row['BUS_ROUTE'].'</td>
    </tr>');

    ?>
    </tbody>
</table>
<?php
  }
}
?>
</div>
</section>


</body>
</html> 