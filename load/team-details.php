<?php
include "../config.php";
$html = null;
// $team = null;
$bg = null;

$sql = "SELECT * FROM spl_team";
$result = mysqli_query($conn, $sql) or die("Query failed.");
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        switch ($row['id']) {
            case 1:
                $bg = "yellow;";
                break;
            case 2:
                $bg = "pink;";
                break;
            case 3:
                $bg = "skyblue;";
                break;
                case 4:
                    $bg = "#eee;";
                break;
                case 5:
                    $bg = "red;color:white;";
                    break;
            default:
            # code...
                break;
            }
            $html .= '<div class="col-12 col-sm border p-0 border-end-1 rounded-2 m-1 border-opacity-75 text-center" style="opacity: 85%; height:7rem; background-attachment: fixed; background-color:
            '.$bg.'"><a href="team-player.php?id='.$row['id'].'" style="cursor:pointer; text-decoration: none;"><h6 style="padding-top: 6px; margin:0; font-weight: 500;font-size: 15px;" class=""><b>'.$row['name'].'</b></h6>
            <p style="font-size: 14px; margin: 0;padding-top: 3px;">Amount Left: '.$row['purse_left']. ' Cr</p>
            <p style="font-size: 14px; margin:0;padding-top: 2px;">Total Player: <b>'.($row['local'] + $row['overseas']) .'/19</b></p>
            <p style="font-size: 12px;margin: 0;padding-top: 2px; ">Local: <b>'. $row['local'] .'/12</b>, Overseas : <b>'. $row['overseas'] . '/7</b></p>
            </a></div>' ;
    }
}
echo $html;
?>