<?php 
include "../config.php";
$html = null;
$team=null;
$bg = null;
$sql = "SELECT * FROM players_auction ORDER BY id DESC";
$result = mysqli_query($conn, $sql) or die("Secleting Error.");
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $rotate = rand(-20, 50);
        $rotate2 = rand(-20, 20);
        $sql1 = "SELECT name,address,photo,islocal,sold FROM players WHERE p_id={$row['player_id']}";
        $result1 = mysqli_query($conn, $sql1) or die("Secleting Error2.");
        if (mysqli_num_rows($result1) > 0) {
            while ($row1 = mysqli_fetch_assoc($result1)) {
                switch ($row['team_id']) {
                    case 1:
                        $team= "Super Kings";
                        break;
                    case 2:
                        $team= "Pink Panthers";
                        break;
                    case 3:
                        $team= "Titans";
                        break;
                    case 4:
                        $team= "Dolphins";
                        break;
                    case 5:
                        $team= "Royal Sakra";
                        break;
                    default:
                        # code...
                        break;
                }
                switch ($row['team_id']) {
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
                        $bg = "#3D3D3D;color:white;";
                        break;
                    default:
                        break;
                }
                $html .= '<div class="row p-0 m-1 border border-1 rounded-2" style="width: 100%; height: max-content;background-color:' . $bg . '">
                <div class="col-9 m-0 "><p><b>' . $row1['name'];
                if($row['sold']==1){
                    $html .= '</b> Sold to <b>'.$team;
                }else if($row['sold']==2){
                    $html .= '</b> Unsold <b>';
                }else{
                    $html .= '</b> Written to <b>'.$team;
                }

                $html .= '</b> at <b>'.$row['bid_amount'].' Cr</b>
                </p></div>
                <div class="col-3 overflow-visible text-center p-0 pt-3 overflow-visible ">';
                if($row['sold']==1){
                    $html .= '<img src="./img/sold1.png" style="height: 3rem;width: auto;transform: rotate(' . $rotate . 'deg);">';
                }else if($row['sold']==2){
                    $html .= '<div class="font-monospace"style="height: auto;width: auto;transform: rotate(' . $rotate2 . 'deg); color: green;font-size:1.3rem;font-weight:800;">UNSOLD</div>';
                }else if($row['sold']==4){
                    $html .= '<div class="font-monospace"style="height: auto;width: auto;transform: rotate(' . $rotate2 . 'deg); color: orange;font-size:1.3rem;font-weight:800;">REPLACE</div>';
                }else{
                    $html .= '<div class="font-monospace"style="height: auto;width: auto;transform: rotate(' . $rotate2 . 'deg); color: blue;font-size:1.3rem;font-weight:800;">WRITTEN</div>';
                }
                $html .= '</div></div>';
            }   
        }else{
            $html = "Error2";
        }
    }
}else{
    $html = '<b style="font-size:20px;color:red; ">Auction Not Started Yet.</b>';
}
echo $html;
?>