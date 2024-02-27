<?php
$amount = 0;
$local = 0;
$oversea = 0;
$html = null;
include "../config.php";
$teamid = $_POST['teamid'];
$bidamount = $_POST['bidamount'];
$pid = $_POST['pid'];
$sold = $_POST['sold'];

if ($sold == 2) {
    $sql = "INSERT INTO players_auction (team_id,player_id, bid_amount,sold) VALUES (0, {$pid}, {$bidamount},{$sold})";
    if (mysqli_query($conn, $sql)) {
        $sql4 = "UPDATE players SET sold={$sold} WHERE p_id={$pid}";
        if (mysqli_query($conn, $sql4)) {

            $html = "done";

        } else {
            $html = "Update Error2.";
        }
    }
} else {
    $sql = "INSERT INTO players_auction (team_id,player_id, bid_amount,sold) VALUES ({$teamid}, {$pid}, {$bidamount},{$sold})";
    if (mysqli_query($conn, $sql)) {

        $sql1 = "SELECT islocal,sold FROM players WHERE p_id={$pid}";
        $result1 = mysqli_query($conn, $sql1) or die("Fetching Issues");
        if (mysqli_num_rows($result1) > 0) {
            while ($row1 = mysqli_fetch_assoc($result1)) {
                $sql2 = "SELECT * FROM spl_team WHERE id={$teamid}";
                $result2 = mysqli_query($conn, $sql2) or die("Fetching Issues");
                if (mysqli_num_rows($result2) > 0) {
                    while ($row2 = mysqli_fetch_assoc($result2)) {
                        $amount = ($row2['purse_left'] * 100 - $bidamount * 100) / 100;
                        if ($row1['islocal'] == 0) {
                            $local = $row2['local'] + 1;
                        } else {
                            $local = $row2['local'];
                        }
                        if ($row1['islocal'] == 1) {
                            $oversea = $row2['overseas'] + 1;
                        } else {
                            $oversea = $row2['overseas'];
                        }
                        $sql3 = "UPDATE spl_team SET purse_left={$amount},local={$local},overseas={$oversea} WHERE id={$teamid}";
                        if (mysqli_query($conn, $sql3)) {
                            $sql4 = "UPDATE players SET sold={$sold} WHERE p_id={$pid}";
                            if (mysqli_query($conn, $sql4)) {

                                $html = "done";

                            } else {
                                $html = "Update Error2.";
                            }
                        } else {
                            $html = "Update Error.";
                        }
                    }
                } else {
                    $html = "Selection Error.";
                }
            }
        }


    } else {
        $html = "Insert Error.";
    }
}

echo $html;

?>