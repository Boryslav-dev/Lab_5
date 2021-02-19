<?php
include ("database.php");

    global $pdo;
    $stm = $pdo -> query('SELECT name FROM client')->fetchAll(PDO::FETCH_COLUMN);
?>

<!DOCTYPE HTML>
<html>
 <head>
  <meta charset="utf-8">
  <title>Lab First</title>
 </head>
 <body>
 <?php var_dump($stm); ?>
 <form action="processing2.php" method="post">
   <p><select name="category_id">
   <option value="">Выбирите имя клиента:</option>
    <?php 
    foreach($stm as $category => $value) 
    {
       $category = htmlspecialchars($category); 
       echo '<option value="'. $value .'">'. $value .'</option>';
    }
    ?>
  </select>
   <p><input name = "submit" type="submit" value="Получить информацию"></p>
  </form>

 <form action="processing3.php" method="post">
  <p>Введите диапазон времени:</p>
  <label for="fdata">Первая дата:</label><br>
  <input id="datetime" type="time" name="fdata" ><br>
  <label for="sdata">Вторая дата:</label><br>
  <input id="datetime" type="time" name="sdata">
  <p><input type="submit" value="Получить информацию"></p>
</form>
 
 <form action = "processing.php">
  <input type="radio" id="balance" name="balance" value="balance">
  <label for="balance">Получить информацию об отрицательном счёте?</label><br>
  <p><input name = "submit" type="submit" value="Получить информацию"></p>
</form>

 </body>
</html>