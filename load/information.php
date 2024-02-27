<?php
include "../config.php";
$html = null;
$team = null;

$html .= '<marquee behavior="" direction="" style="font-size: 1.8rem;">';
$sql = "SELECT * FROM players_auction JOIN players ON players_auction.player_id = players.p_id  ORDER BY bid_amount DESC LIMIT 1";
$result = mysqli_query($conn, $sql) or die("query failed.");
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        switch ($row['team_id']) {
            case 1:
                $team = "Sakra Super Kings";
                break;
            case 2:
                $team = "Sakra Pink Panthers";
                break;
            case 3:
                $team = "Sakra Titans";
                break;
            case 4:
                $team = "Sakra Dolphins";
                break;
            case 5:
                $team = "Royal Challengers Sakra";
                break;
            default:
                # code...
                break;
        }
        $html .= "Highest bid:- " . $row['name'] . " Sold to ". $team ." at " . $row['bid_amount'] . "Cr. ";

    }
}
$sql1 = "SELECT * FROM information";
$result1 = mysqli_query($conn, $sql1) or die("query failed.");
if (mysqli_num_rows($result1) > 0) {
    while ($row1 = mysqli_fetch_assoc($result1)) {
        $html .= $row1['info'];
    }
}
$html .= '</marquee>';
echo $html;

    ?>