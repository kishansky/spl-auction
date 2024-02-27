<?php
$html=null;
 include "../config.php";
 $teamid = $_POST['teamid'];
 $bidamount = $_POST['bidamount'];
$pid = $_POST['pid'];
$sold = $_POST['sold'];
$sql = "SELECT * FROM action WHERE player_id = {$pid}";
$result = mysqli_query($conn,$sql)or die("Query failed.");
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $sql2 = "UPDATE action SET team_id = {$teamid},amount={$bidamount},pre_team_id={$row['team_id']},pre_amount={$row['amount']},is_sold={$sold} WHERE player_id={$pid}";
        if(mysqli_query($conn,$sql2)){
            
                $html = "Update succesfully.";
            
        }else{
            $html = "Update Error.";
        }
    }
}else{
    $sql1 = "INSERT INTO action (player_id, team_id, amount) VALUES ({$pid}, {$teamid}, {$bidamount})";
    if(mysqli_query($conn,$sql1)){
        $html = "Insert succesfully.";
    }else{
        $html = "Insert Error.";
    }
}
echo $html;

?>