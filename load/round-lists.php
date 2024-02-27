<?php 
include "../config.php";
$round = $_POST['round'];
$html = null;
$sql = "SELECT * FROM players WHERE round='{$round}'";
$result = mysqli_query($conn, $sql) or die("Query failed.");
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $html .= '<div class="col-3 my-3">
        <div class="card h-auto w-100">

            <div class="card-body">
                <div class="card-img" style="height:20rem;">
                    <img src="./profile/'.$row['photo'].'" class="w-100 h-100 ">
                </div>
                <div class="card-title m-0">' . ucwords($row['name']);
                if ($row['islocal'] == 1) {
                    $html.=' <i class="fa fa-plane" style="color:blue;"></i>';
                }
                $html.='</div>
                <div class="card-title">'.$row['address'].'</div>';
                if ($row['sold'] == 1) {
                    $html.='<div class="card-subtitle mb-2" style="color:red;" ><b>Sold</b></div>';
                }else if($row['sold'] == 2){
                    $html.='<div class="card-subtitle mb-2" style="color:green;" ><b>Unsold</b></div>';
                }else if($row['sold'] == 3){
                    $html.='<div class="card-subtitle mb-2" style="color:blue;" ><b>Written</b></div>';
                }
                $html.='<button class="btn btn-success " onclick="player('.$row['p_id'].')" >Bid </button>
            </div>
        </div>
    </div>'; 
    }
}
echo $html;

?>