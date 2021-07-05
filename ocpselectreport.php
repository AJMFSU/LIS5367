<html>
<head>
<link rel="stylesheet" href="styles.css">
  <title>PHP Retrieve Data from MySQL using Drop Down Menu</title>

</head>
<body>

<form action="" method="post">
 <select name="$ocp">
     <option disabled selected>-- Select OCP --</option>
    <?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("ocp-data.cggta8te9lhb.us-east-1.rds.amazonaws.com", "root", "AJM!adm1n", "OCPUbuntu");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

      $records = mysqli_query($link, "SELECT ocpID FROM OCPs");  
        while($data = mysqli_fetch_array($records))

        {
            echo "<option value='". $data['ocpID'] ."'>" .$data['ocpID'] ."</option>";  // displaying data in option menu
        }	

    ?>  
  </select>

<input type="submit" name="submit" vlaue="Choose options">

<?php
    if(isset($_POST['submit'])){
    if(!empty($_POST['$ocp'])) {
        $selected = $_POST['$ocp'];
        echo 'You have chosen: ' . $selected;
    } else {
        echo 'Please select the value.';
    }
    }
$sql = "SELECT * FROM Standards WHERE ocpID='$selected'";

if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
        echo "<table>";
            echo "<tr>";
                echo "<th>id</th>";
                echo "<th>ocp</th>";
                echo "<th>desc</th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['standardID'] . "</td>";
                echo "<td>" . $row['ocpID'] . "</td>";
                echo "<td>" . $row['standardDesc'] . "</td>";            
     echo "</tr>";
        }
        echo "</table>";
        // Free result set
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}


$mysqli->close();
?>

</form>

</body>
</html>


