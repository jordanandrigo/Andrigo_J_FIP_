<?php
    include("connect.php"); // like a JS import statement

    $query = "SELECT * FROM myGallery";

    $runQuery = $pdo->query($query);

    $result = array();

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
        $result[] = $row;
    }

    // return $result;
    echo(json_encode($result));