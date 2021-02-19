<?php
include ("database.php");

    $fdata = $_POST['fdata'];
    $sdata = $_POST['sdata'];
    $fdata = trim($fdata);
    $fdata = htmlspecialchars($fdata); 
    $sdata = trim($sdata);
    $sdata = htmlspecialchars($sdata); 
    global $pdo;
    $stm = $pdo -> query("SELECT ID_SEANSE, in_trafic, out_trafic, start, stop
    FROM seanse
    WHERE start > '$fdata' AND stop < '$sdata' ");
?>
    <table class="city_list">

  <?php foreach($stm as $a): ?>
  <tr>
    <?php foreach($a as $d): ?>
    <td>
        <?php $a=array_chunk($a,6); ?>
        <?php echo $d; ?>
        </td>
        <?php endforeach; ?>
  </tr>
    <?php endforeach; ?>
</table>
 

<style>
.city_list 
{
  width: 25%;
}
.city_list td 
{
  width: 25%;
  border: 1px solid #ddd;
  padding: 7px 10px;
}

