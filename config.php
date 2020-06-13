<?php
   define('DB_SERVER', 'localhost');
   define('DB_USERNAME', 'geekware_etsbanking');
   define('DB_PASSWORD', 'DIEqFfC@e_v@');
   define('DB_DATABASE', 'geekware_bankingsystem');
   $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
   $conStr = sprintf("mysql:host=%s;dbname=%s", DB_SERVER, DB_DATABASE);
   try {
      $pdo = new PDO($conStr, DB_USERNAME, DB_PASSWORD);
  } catch (PDOException $e) {
      die($e->getMessage());
  }
?>