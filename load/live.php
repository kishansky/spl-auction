<?php
include "../config.php";
$html = null;
$style = null;
$role = null;
$bg = null;
$pbg =null;
$team = null;
$pteam = null;

$sql1 = "SELECT * FROM action ORDER BY id DESC LIMIT 1";
$result1 = mysqli_query($conn, $sql1) or die("Query failed.");
if (mysqli_num_rows($result1) > 0) {
    while ($row1 = mysqli_fetch_assoc($result1)) {
        $sql2 = "SELECT * FROM players WHERE p_id = '{$row1['player_id']}'";
        $result2 = mysqli_query($conn, $sql2) or die("Query failed.");
        if (mysqli_num_rows($result2) > 0) {
            while ($row2 = mysqli_fetch_assoc($result2)) {
                switch ($row2['style']) {
                    case 1:
                        $style = "Right-Hander";
                        break;
                    case 2:
                        $style = "Left-Hander";
                        break;
                    default:
                        # code...
                        break;
                }
                switch ($row2['role']) {
                    case 1:
                        $role = "Bastman";
                        break;
                    case 2:
                        $role = "Bastman-Allrounder";
                        break;
                    case 3:
                        $role = "Bowler-Allrounder";
                        break;
                    case 4:
                        $role = "Bowler";
                        break;
                    default:
                        # code...
                        break;
                }
                switch ($row1['team_id']) {
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
                switch ($row1['pre_team_id']) {
                    case 1:
                        $pbg = "yellow;";
                        break;
                    case 2:
                        $pbg = "pink;";
                        break;
                    case 3:
                        $pbg = "skyblue;";
                        break;
                    case 4:
                        $pbg = "#eee;";
                        break;
                    case 5:
                        $pbg = "red;color:white;";
                        break;
                    default:
                        # code...
                        break;
                }
                switch ($row1['team_id']) {
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
                switch ($row1['pre_team_id']) {
                    case 1:
                        $pteam = "Sakra Super Kings";
                        break;
                    case 2:
                        $pteam = "Sakra Pink Panthers";
                        break;
                    case 3:
                        $pteam = "Sakra Titans";
                        break;
                    case 4:
                        $pteam = "Sakra Dolphins";
                        break;
                    case 5:
                        $pteam = "Royal Challengers Sakra";
                        break;
                    default:
                        # code...
                        break;
                }
                
               $html = '<div class="col-12 col-sm-5 p-1">
                <div class="p-1" style="opacity:100% !important;">
                    <img src="./profile/'.$row2['photo'].'" class="photo border border-dark rounded-2">
                </div>
            </div>
            <div class="offset-sm-1 col-12 col-sm-6">
                <h1 class="my-3"style="font-size:4rem;">'.ucwords($row2['name']);
                if ($row2['islocal'] == 1) {
                    $html.=' <i class="fa fa-plane" style="color:blue;"></i>';
                }
                $html .= '</h1><h3 class="my-3"style="font-size:2.5rem;">'.ucwords($row2['address']).'</h3>
                <h3 class="my-3">'.$style.'</h3>
                <h3 class="my-3">'.$role.'</h3>
                <h3 class="my-3"style="font-size:2.5rem;">Base Price: '.$row2['base_price'] .' Cr</h3>';
                if($row2['sold']==1){
                    $html .= '<h3 style="color:red;">Sold</h3>';
                }else if($row2['sold']==2){
                    $html .= '<h3 style="color:green;">Unsold</h3>';
                }else if($row2['sold']==4){
                    $html .= '<h3 style="color:orange;">Replace</h3>';
                }
                // $html .='<div id="auctionUpdate">
                // </div>';
                $html .= '<div class="border border-1 rounded-2 my-1" style="background-color:' . $bg . ' "><h3 class="ps-4 "style="font-size:2rem; font-weight:500;">' . $row1['amount'] . ' Cr ' . $team . '</h3>
                </div>';
                if ($row1['pre_team_id'] != null) {
                    $html .= '<div class="border border-1 rounded-2 my-1" style="background-color:' . $pbg . '">
                    <h3 class="ps-4 " style="font-size:2rem;font-weight:500;">' . $row1['pre_amount'] . ' Cr ' . $pteam . '</h3>
                    </div> </div>';
                }
  
                
            }
        }
    }
}else{
    $html .= "";
}
echo $html;
?>