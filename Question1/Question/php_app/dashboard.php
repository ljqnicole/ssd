<?php 
    session_start();
    if(!isset($_SESSION['user_id'])) {
        header('Location: index.php');
        exit;
    }
?>

<!DOCTYPE html>
<html>
<head>
<title>Dashboard | PHP Login and Logout Example with Session</title>
</head>
<body>
    <h1>Welcome to the Dashboard</h1>
    <p>You have successfully logged in.</p>
    <a href="logout.php">Logout</a>
</body>
</html>
