<?php

define('DB_HOST', 'l08so08g84c0c44socgwccc4'); // Use the host from your environment variables
define('DB_USER', 'mysql');                    // Use DB_USERNAME
define('DB_PASS', 'k89KLz4XSNN6EGdJIiSIX3c6by3D2pK0ej0dwDfXvFUmOhCAm3DpZ5THbu0AYy38');  // Use DB_PASSWORD
define('DB_NAME', 'default');                  // Use DB_DATABASE

// Use either MySQLi or PDO, not both at the same time unless necessary

// Using MySQLi
$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME, 3306);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Using PDO
try {
    $dbh = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";port=3306", DB_USER, DB_PASS, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
} catch (PDOException $e) {
    exit("Error: " . $e->getMessage());
}
?>
