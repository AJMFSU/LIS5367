<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("ocp-data.cggta8te9lhb.us-east-1.rds.amazonaws.com", "root", "AJM!adm1n", "OCPUbuntu");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// get the post records

$txtTermID = $_POST['txtTermID'];
$txtTermName = $_POST['txtTermName'];

 
// attempt insert query execution
$sql = "INSERT INTO terms (termID, termname) VALUES ('$txtTermID', '$txtTermName')";
if(mysqli_query($link, $sql)){
    echo "Records added successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}

$sql = "SELECT * FROM terms";

if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
        echo "<table>";
            echo "<tr>";
                echo "<th>id</th>";
                echo "<th>name</th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['termID'] . "</td>";
                echo "<td>" . $row['termName'] . "</td>";
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
 
// close connection
mysqli_close($link);
?>
