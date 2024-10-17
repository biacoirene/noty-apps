<?php

// Use environment variables for the database connection
define('DB_HOST','mgc80c4ogkww8c4k04wso4so'); // Use your DB_HOST from the environment
define('DB_USER','mysql'); // DB_USERNAME from the environment
define('DB_PASS','P7VQisXssYZhLvc8pVnLyQqKaZlsqX63feqOaJxREwqGVaIP42WEZJwgVckFe5CL'); // DB_PASSWORD from the environment
define('DB_NAME','default'); // DB_DATABASE from the environment

// Establish connection using mysqli
$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME) or die(mysqli_error());

// Establish connection using PDO
try {
    $dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME, DB_USER, DB_PASS, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
} catch (PDOException $e) {
    exit("Error: " . $e->getMessage());
}

?>
