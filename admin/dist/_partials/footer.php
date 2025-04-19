<?php
/* Persisit System Settings On Brand */
$ret = "SELECT * FROM `iB_SystemSettings` ";
$stmt = $mysqli->prepare($ret);
$stmt->execute(); //ok
$res = $stmt->get_result();
while ($sys = $res->fetch_object()) {
?>
  <footer class="main-footer">
    <strong> HDB FINANCIAL SERVICES.</strong>
   
    <div class="float-right d-none d-sm-inline-block">
      
    </div>
  </footer>
<?php } ?>