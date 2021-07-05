<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("ocp-data.cggta8te9lhb.us-east-1.rds.amazonaws.com", "root", "AJM!adm1n", "OCPUbuntu");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// attempt select query execution

$sql = "SELECT * FROM OCPs";

if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
        echo "<table>";
            echo "<tr>";
                echo "<th>id</th>";
                echo "<th>name</th>";
                echo "<th>desc</th>";
                echo "<th>Program</th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['ocpID'] . "</td>";
                echo "<td>" . $row['ocpName'] . "</td>";
                echo "<td>" . $row['ocpDescription'] . "</td>";                
                echo "<td>" . $row['courseID'] . "</td>";
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

// Close connection
$mysqli->close();


?>
