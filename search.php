
<!DOCTYPE html>
<?php  $conn = new mysqli("localhost","root","","abc");
  if($conn->connect_error){
    die("Failed to connect!".$conn->connect_error);
  }
?>
<html>
<head>
<?php echo '<title>'.$_POST['searchBoxf'].' TO '.$_POST['searchBoxt'].' BUS TIMETABLE</title>'; ?>;
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
  if(isset($_POST['submit'])){
    $resultf=$_POST['searchBoxf'];
    $resultt=$_POST['searchBoxt'];
    $sql="SELECT * FROM bus_table WHERE BUS_ROUTE LIKE CONCAT('%', '%$resultf%', '%', '%$resultt%' '%') ORDER BY TIME ASC";
    $result=$conn->query($sql);
    $result->num_rows > 1;
    while($row=$result->fetch_assoc()){


?>

<table cellpadding="0" cellspacing="0" border="0">
  
  <tbody>
  <?php

    echo ('<tr>
    <td width="6%">' .$row['TIME'].'</td>
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