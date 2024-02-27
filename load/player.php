<?php 
include "../config.php";
$id = $_POST['id'];
$html = null;
$style = null;
$role = null;
$sql = "SELECT * FROM players WHERE p_id='{$id}'";
$result = mysqli_query($conn, $sql) or die("Query failed.");
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        switch ($row['style']) {
            case 1:
                $style= "Right-Hander";
                break;
            case 2:
                $style= "Left-Hander";
                break;
            default:
                # code...
                break;
        }
        switch ($row['role']) {
            case 1:
                $role = "Bastman";
                break;
            case 2:
                $role= "Bastman-Allrounder";
                break;
            case 3:
                $role= "Bowler-Allrounder";
                break;
            case 4:
                $role= "Bowler";
                break;
            default:
                # code...
                break;
        }
        $html .= '<div class="col-12 col-sm-5 p-0">
                    <div class="p-1" style="opacity:100% !important;">
                        <img src="./profile/'.$row['photo'] .'" style="width:auto; height: 27.5rem; ">
                    </div>
                </div>
                <div class="offset-sm-1 col-12 col-sm-6">
                                        <h1 class="my-1">'.ucwords($row['name']);
                                        if ($row['islocal'] == 1) {
                                            $html.='<i class="fa fa-plane" style="color:blue;"></i>';
                                        }
                                        $html .= '</h1>
                                        <h3 class="my-1">'. ucwords($row['address']).'</h3>
                                        <h3 class="my-1">'.$style.'</h3>
                                        <h3 class="my-1">'.$role.'</h3>
                                        <h3 class="my-1">Base Price:'.$row['base_price'] . ' Cr</h3>
                                        <h3 class="my-1">Bid Price:<span id="bidAmount">'.$row['base_price'] . '</span> Cr</h3>';
                                        if($row['sold']==1){
                                            $html .= '<h3 style="color:red;">Sold</h3>';
                                        }else if($row['sold']==1){
                                            $html .= '<h3 style="color:green;">Unsold</h3>';
                                        }
                                        $html .= '<div class="hstack gap-3">
                                        <button class="btn bg-dark text-light  " onclick="prevBid()">Bid -</button><div class="vr"></div>
                                        <button class="btn bg-info text-light   " onclick="nextBid()">Bid +</button>
                                        </div>
                                        <hr class="my-3 w-100 bg-black" style="height: 1px;" />
                                        <div class="row pt-2">
                                            <div class="col ">
                                                <button class="w-100 btn " style="background-color: yellow; " onclick="team(1)" >Kings</button>
                                            </div>
                                            <div class="col">
                                                <button class="w-100 btn" style="background-color: pink; " onclick="team(2)" >Panthers</button>
                                            </div>
                                            <div class="col">
                                                <button class="w-100 btn" style="background-color: skyblue; " onclick="team(3)" >Titans</button>
                                            </div>
                                            <div class="col">
                                                <button class="w-100 btn" style="background-color: white; " onclick="team(4)" >Dolphins</button>
                                            </div>
                                            <div class="col">
                                                <button class="w-100 btn" style="background-color: red; " onclick="team(5)" >Royals</button>
                                            </div>
                                        </div>
                                        <hr class="my-3 w-100 bg-black" style="height: 1px;" />
                                        <div class="row pt-2">
                                            <div class="col">
                                                <button class="w-100 btn" style="background-color: grey; " onclick="unsold()" >Unsold</button>
                                            </div>
                                            <div class="col">
                                                <button class="w-100 btn" style="background-color: green; " onclick="sold(1)" >Sold</button>
                                            </div>
                                            <div class="col">
                                                <button class="w-100 btn" style="background-color: orange; " onclick="update(0)" >Update</button>
                                            </div>
                                        </div>
                                        <div class="row pt-2">
                                            <div id="status" class="text-danger" ></div>
                                        </div>
                                        </div>
                                        </div>'; 
    }
}
echo $html;
?>