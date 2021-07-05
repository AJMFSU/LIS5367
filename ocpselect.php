<!DOCTYPE html>
<html>
<head>
  <title>PHP Retrieve Data from MySQL using Drop Down Menu</title>
</head>
<body>

<form>
  OCP
  <select>
    <option disabled selected>-- Select OCP --</option>
    <?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("ocp-data.cggta8te9lhb.us-east-1.rds.amazonaws.com", "root", "AJM!adm1n", "OCPUbuntu");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 //if($result = mysqli_query($link, $sql)){
      $records = mysqli_query($link, "SELECT ocpID FROM OCPs");  // Use select query here 

//$sql = "SELECT ocpID FROM OCPs";

//$records = mysqli_query($link, $sql)){

        while($data = mysqli_fetch_array($records))

        {
            echo "<option value='". $data['ocpID'] ."'>" .$data['ocpID'] ."</option>";  // displaying data in option menu
        }	
$mysqli->close();
    ?>  
  </select>
</form>

</body>
</html>


