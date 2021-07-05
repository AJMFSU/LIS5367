<html>
<head>
<link rel="stylesheet" href="styles.css">
  <title>Your Earned OCPs</title>

</head>
<body>

<form action="" method="post">
<textarea name="$stuID" id="textbox"></textarea>

    <?php
/* Attempt MySQL server connection. */
$link = mysqli_connect("ocp-data.cggta8te9lhb.us-east-1.rds.amazonaws.com", "root", "AJM!adm1n", "OCPUbuntu");
 
// Check connection
if($link === false){
    die("ERROR: Well, this is embarrassing. We can't connect to our data. Sorry to say, OUR WWEBSITE IS DOWN. Contact Support for the Magical OCP Tracker, NOT the IT for your company" . mysqli_connect_error());
}

      $records = mysqli_query($link, "SELECT stuID FROM students");  
        while($data = mysqli_fetch_array($records))

    ?>  

<input type="submit" name="submit" value="Submit">

<?php
    if(isset($_POST['submit'])){
    if(!empty($_POST['$stuID'])) {
        $selected = $_POST['$stuID'];
        echo 'Your Student Number Is: ' . $selected;
    } else {
        echo 'Please enter your Student ID.';
    }
    }

$sql = "SELECT earnedOCP.date, Standards.standardID, Standards.standardDesc, levels.levelID, levels.levelDescription FROM Standards JOIN assignments ON assignments.standardID=Standards.standardID JOIN levels ON levels.levelID=assignments.levelID INNER JOIN earnedOCP ON assignments.assignmentID=earnedOCP.assignmentID WHERE stuID='$selected'";


if($records2 = mysqli_query($link, $sql)){
echo "     Out of 50 you have earend: " . mysqli_num_rows($records2);
    if(mysqli_num_rows($records2) > 0){
        echo "<table>";
            echo "<tr>";
                echo "<th>Date</th>";
                echo "<th>ID</th>";
                echo "<th>Standard</th>";
                echo "<th>Level</th>";
                echo "<th>Level Description</th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($records2)){
            echo "<tr>";
                echo "<td>" . $row['date'] . "</td>";
                echo "<td>" . $row['standardID'] . "</td>";
                echo "<td>" . $row['standardDesc'] . "</td>";            
                echo "<td>" . $row['levelID'] . "</td>";            
                echo "<td>" . $row['levelDescription'] . "</td>";            
     echo "</tr>";
        }
        echo "</table>";
        // Free result set
        mysqli_free_result($results);
        mysqli_free_result($results2);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Not able to execute $sql. " . mysqli_error($link);
}

$mysqli->close();
?>

</form>

</body>
</html>


