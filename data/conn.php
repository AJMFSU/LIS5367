    <?php

$server = "ocp-data.cggta8te9lhb.us-east-1.rds.amazonaws.com";
$user = "ocp";
$pass = "JaYiPO";
$db = "OCPUbuntu";

$link = mysqli_connect($server, $user , $pass, $db);
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>
