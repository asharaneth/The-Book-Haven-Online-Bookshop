<?php
session_start();
header('Content-Type: application/json'); // return JSON

$conn = new mysqli("localhost", "root", "", "bookshop");

if($conn->connect_error){
    echo json_encode(['success'=>false, 'message'=>'Database connection failed']);
    exit;
}

// Get JSON input
$data = json_decode(file_get_contents('php://input'), true);
$username = $data['username'] ?? '';
$password = $data['password'] ?? '';

if(empty($username) || empty($password)){
    echo json_encode(['success'=>false, 'message'=>'All fields are required']);
    exit;
}

// Check user
$sql = "SELECT * FROM users WHERE username=?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $username);
$stmt->execute();
$result = $stmt->get_result();

if($result->num_rows === 1){
    $user = $result->fetch_assoc();
    if(password_verify($password, $user['password'])){
        $_SESSION['username'] = $user['username'];
        echo json_encode(['success'=>true, 'username'=>$user['username']]);
    } else {
        echo json_encode(['success'=>false, 'message'=>'Invalid password']);
    }
} else {
    echo json_encode(['success'=>false, 'message'=>'User not found']);
}

$conn->close();
?>

