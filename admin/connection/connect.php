<?php


 $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "iscvs_db";
    
    // Create connection
    $con =mysqli_connect($servername, $username, $password,$dbname);
    
    // Check connection
    if ($con->connect_error) {
        die("Connection failed: " . $con->connect_error);
    } 
else {
 
}
/*
   $servername = "localhost";
    $username = "u940296134_iscuser";
    $password = ";TLMil3Gn";
    $dbname = "u940296134_iscvsdb";
    
    // Create connection
    $con =mysqli_connect($servername, $username, $password,$dbname);
    
    // Check connection
    if ($con->connect_error) {
        die("Connection failed: " . $con->connect_error);
    } 
else {
 
}


*/
?>
