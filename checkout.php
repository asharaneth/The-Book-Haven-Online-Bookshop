<?php
session_start();
$conn = new mysqli("localhost", "root", "", "bookshop");

$cart = $_SESSION['cart'] ?? [];
$total = 0;
?>

<!DOCTYPE html>
<html>
<head>
    <title>Checkout</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f5f5;
            margin: 0;
        }

        .container {
            width: 70%;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }

        h2 {
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        th {
            background: #f0f0f0;
        }

        .total {
            text-align: right;
            font-size: 20px;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: #28a745;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background: #218838;
        }

        .empty {
            text-align: center;
            color: gray;
            margin: 20px 0;
        }
    </style>
</head>

<body>

<div class="container">

<h2>🧾 Checkout</h2>

<?php if(empty($cart)): ?>
    <p class="empty">Your cart is empty</p>
<?php else: ?>

<table>
<tr>
    <th>Book</th>
    <th>Price</th>
</tr>

<?php foreach($cart as $id): ?>

<?php
    $stmt = $conn->prepare("SELECT * FROM books WHERE id=?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();

    if($result && $result->num_rows > 0){
        $row = $result->fetch_assoc();
?>

<tr>
    <td><?= $row['title'] ?></td>
    <td>$<?= $row['price'] ?></td>
</tr>

<?php 
        $total += $row['price'];
    }
?>

<?php endforeach; ?>

</table>

<div class="total">
    <strong>Total: $<?= $total ?></strong>
</div>

<form method="POST" action="place_order.php">

    <div class="form-group">
        <input type="text" name="name" placeholder="Full Name" required>
    </div>

    <div class="form-group">
        <input type="text" name="address" placeholder="Delivery Address" required>
    </div>

    <div class="form-group">
        <input type="email" name="email" placeholder="Email Address" required>
    </div>

    <button class="btn" type="submit">Place Order</button>

</form>

<?php endif; ?>

</div>

</body>
</html>