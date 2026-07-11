<?php
session_start();
$conn = new mysqli("localhost", "root", "", "bookshop");

$name = $_POST['name'];
$address = $_POST['address'];
$email = $_POST['email'];

$total = 0;

foreach($_SESSION['cart'] as $item){
    $total += $item['price'];
}

// Insert order
$sql = "INSERT INTO orders (name, address, email, total)
        VALUES ('$name', '$address', '$email', '$total')";
$conn->query($sql);

// Clear cart
unset($_SESSION['cart']);

echo "Order placed successfully!"; 
header("Location: index.php");
?>