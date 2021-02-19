<?php
include ("database.php");

    global $pdo;
    $stm = $pdo -> query('SELECT name FROM client WHERE balance < 0');
    while ($row = $stm->fetch())
    {
        echo $row['name'] . "<br/>";
    }
?>
