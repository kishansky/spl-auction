<?php
include "../config.php";
$html = null;
$pid = $_POST['pid'];

$sql = "UPDATE players SET sold=2 WHERE p_id={$pid}";
if (mysqli_query($conn, $sql)) {
    $html = "done";
}else{
    $html = "Update Error2.";
}
echo $html;
?>