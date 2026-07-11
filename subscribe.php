<?php
$conn=new mysqli("localhost","root","","bookshop");
$email=$_POST['email'];
$check=$conn->prepare("SELECT id FROM subscribers WHERE email=?");
$check->bind_param("s",$email);
$check->execute();
$check->store_result();

if($check->num_rows>0){
    echo "You are already subscribed!";
}
else{
    $stmt=$conn->prepare("INSERT INTO subscribers (email) VALUES (?)");
    $stmt->bind_param("s",$email);
    if($stmt->execute()){
        echo "subscribed successfully!";
    }
    else{
        echo "Error occured!";
    }
}
