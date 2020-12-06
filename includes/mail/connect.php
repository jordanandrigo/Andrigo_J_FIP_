<?php 

    $db_dsn = array(
        'host' => 'localhost',
        'dbname' => 'db_gallery',
        'charset' => 'utf8',
    );
    
    $dsn = 'mysql:' . http_build_query($db_dsn, '', ';');

    // Set up connection credentials
    $db_user = 'root';
    $db_pass = 'root';

    $pdo = new PDO($dsn, $db_user, $db_pass);

    /* check connection */
    try {
        $pdo = new PDO($dsn, $db_user, $db_pass);
        // var_dump($pdo);
        // echo (in this case) is almost like console.log
    } catch (PDOException $exception) {
        echo "Connection error: " . $exception->getMessage();
        exit();
    }