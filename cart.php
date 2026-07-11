<?php
session_start();
$conn = new mysqli("localhost", "root", "", "bookshop");
$total = 0;
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Your Cart</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background:linear-gradient(to bottom, #f4f7f9, #e0e5ec);
        margin: 0;
        padding: 20px;
    }
    h2 {
        text-align: center;
        color: #2c3e50;
    }

    .cart-container {
        max-width: 900px;
        margin: 20px auto;
        background: #fff;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.08);
    }

    .cart-header, .cart-item {
        display: grid;
        grid-template-columns: 100px 1fr 120px 120px 100px;
        gap: 15px;
        align-items: center;
        padding: 12px 0;
    }

    .cart-header {
        font-weight: bold;
        border-bottom: 2px solid #e0e0e0;
        color: #34495e;
    }

    .cart-item {
        border-bottom: 1px solid #f0f0f0;
    }

    .cart-item:last-child {
        border-bottom: none;
    }

    .cart-item img {
        width: 80px;
        height: auto;
        border-radius: 8px;
        box-shadow: 0 3px 8px rgba(0,0,0,0.1);
    }

    .cart-item-details {
        color: #555;
    }

    .cart-item-details strong {
        display: block;
        font-size: 16px;
        color: #2c3e50;
    }

    .remove-btn {
        text-decoration: none;
        background-color: #e74c3c;
        color: #fff;
        padding: 6px 12px;
        border-radius: 6px;
        font-size: 14px;
        text-align: center;
        transition: background 0.3s;
    }

    .remove-btn:hover {
        background-color: #c0392b;
    }

    .cart-total {
        text-align: right;
        margin-top: 25px;
        font-size: 20px;
        font-weight: bold;
        color: #2c3e50;
    }

    .checkout-btn {
        display: inline-block;
        background-color: #1abc9c;
        color: #fff;
        padding: 12px 25px;
        margin-top: 20px;
        border-radius: 8px;
        text-decoration: none;
        font-size: 16px;
        transition: background 0.3s;
    }

    .checkout-btn:hover {
        background-color: #16a085;
    }

    .empty-cart {
        text-align: center;
        padding: 60px 0;
        font-size: 18px;
        color: #7f8c8d;
    }

    @media(max-width: 700px){
        .cart-header, .cart-item {
            grid-template-columns: 80px 1fr 80px;
            grid-template-rows: auto auto;
            gap: 8px;
        }

        .cart-item img {
            grid-row: 1 / span 2;
        }

        .cart-item-details {
            grid-column: 2 / span 2;
        }
    }
</style>
</head>
<body>

<div class="cart-container">
    <h2>Your Cart</h2>

    <?php if (!empty($_SESSION['cart'])): ?>
        <div class="cart-header">
            <div>Image</div>
            <div>Title</div>
            <div>Price</div>
            <div>Qty</div>
            <div>Action</div>
        </div>

        <?php foreach ($_SESSION['cart'] as $id => $qty):
            $result = $conn->query("SELECT * FROM books WHERE id=$id");
            $row = $result->fetch_assoc();
            $subtotal = $row['price'] * $qty;
            $total += $subtotal;
        ?>
        <div class="cart-item">
            <img src="<?= $row['image']; ?>" alt="<?= $row['title']; ?>">
            <div class="cart-item-details"><strong><?= $row['title']; ?></strong></div>
            <div>Rs.<?= $row['price']; ?></div>
            <div><?= $qty; ?></div>
            <div><a class="remove-btn" href="remove.php?id=<?= $id; ?>">Remove</a></div>
        </div>
        <?php endforeach; ?>

        <div class="cart-total">
            Total: Rs.<?= $total; ?>
        </div>
        <a class="checkout-btn" href="checkout.php">Proceed to Checkout</a>

    <?php else: ?>
        <div class="empty-cart">
            Your cart is empty.
        </div>
    <?php endif; ?>

    <!-- Add this just before the closing </div> of .cart-container -->
    <div style="text-align: right; margin-top: 20px;">
    <button onclick="window.location.href='index.php'" 
            style="padding:12px 25px; background: linear-gradient(45deg, #ff6b6b, #ff4757); 
                   color:white; border:none; border-radius:8px; font-size:16px; 
                   font-weight:bold; cursor:pointer; box-shadow: 0 4px 15px rgba(0,0,0,0.2);
                   transition: transform 0.2s, box-shadow 0.2s;">
        🏠 Back to Homepage
    </button>
</div>
   
</div>

</body>
</html>