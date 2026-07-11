<?php
      header('Content-Type: application/json');
      $data = json_decode(file_get_contents('php://input'), true);

     if(empty($data["username"])||empty($data["password"])||empty($data["address"])||empty($data["date"])){
            echo json_encode(['success'=>false, 'message'=>'All fields are required.']);
            exit;
     }

     $conn=new mysqli("localhost","root","","bookshop");
     if($conn->connect_error){
        echo json_encode(['success'=>false, 'message'=>'Database connection failed']);
        exit;
    }

     $password=password_hash($data["password"],PASSWORD_DEFAULT);
     $stmt=$conn->prepare("INSERT INTO users (username,password,address,joined_date) values (?,?,?,?)");
     $stmt->bind_param("ssss",$data["username"],$password,$data["address"],$data["date"]);
     $stmt->execute();
     echo json_encode(['success'=>true]);
     $conn->close();
















?>
