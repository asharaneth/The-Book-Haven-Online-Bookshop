<?php    
    $config = include('db_details.php');

    $server = $config['server'];
    $username = $config['username'];
    $password = $config['password'];

    $con = @new mysqli($server, $username, $password);

    if ($con->connect_error) {
        if( $con->connect_errno == 1045 ) {
            die("Please update MySQL password in db_details.php");
        } elseif ($con->connect_errno == 2002) {
            die("Unable to connect to the MySQL server");
        } else {
            die("Connection failed: " . $con->connect_error);
        }
    }

    $sql = "CREATE DATABASE IF NOT EXISTS users";
    $con->query($sql);
    
    $con->select_db("users");

    $sql = "CREATE TABLE IF NOT EXISTS users (
        id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        Fname VARCHAR(50) NOT NULL,
        Lname VARCHAR(50),
        Age INT(3),
        Gender VARCHAR(10),
        Email VARCHAR(100),
        ContactNo VARCHAR(15),
        Username VARCHAR(50) UNIQUE,
        Password VARCHAR(255) NOT NULL,
        reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    )";
    $con->query($sql);
?>
