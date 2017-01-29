<?php 
echo "<h1>PHP with Docker Works!</h1>";
$conn = mysqli_connect("mysqlcontainer","sampleuser","secret","sampledb") or die("Connection failed: ");

echo "And MySQL works";
