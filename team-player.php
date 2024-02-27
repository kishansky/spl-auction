<?php
include('header.php');
include("config.php");
if (!isset($_GET['id'])) {
    $id = 1;
} else {
    $id = $_GET['id'];
}
$style = null;
$role = null;
$html = null;
$team =null;

?>

<section style="position: absolute;" class="container-fluid  ">
    <div class="row col-12 text-center" style="">
    <h1 style="color:#202020;font-weight:600;"><?php
    switch ($_GET['id']) {
                    case 1:
                        echo "Sakra Super Kings";
                        break;
                    case 2:
                       echo "Sakra Pink Panthers";
                        break;
                    case 3:
                       echo "Sakra Titans";
                        break;
                    case 4:
                        echo "Sakra Dolphins";
                        break;
                    case 5:
                        echo "Royal Challengers Sakra";
                        break;
                    default:
                        # code...
                        break;
                }
    ?></h1>
    <h3 style="color:#AC3A31;font-weight:600;">Team-List</h3>
    <hr class='border-bottom border-2 border-danger m-1 m-3' />
</div>
    <div class="row p-0 m-0 col-12">
        <div class="col-12 h-100 p-2 row" style="">
        <?php
        $sql = "SELECT * FROM players_auction WHERE team_id ={$id}";
        $result = mysqli_query($conn,$sql)or die("Query failed.");
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
            $sql1 = "SELECT * FROM players WHERE p_id ={$row['player_id']}";
            $result1 = mysqli_query($conn,$sql1)or die("Query failed.");
                if (mysqli_num_rows($result1) > 0) {
                    while ($row1 = mysqli_fetch_assoc($result1)) {
                        switch ($row1['style']) {
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
                        switch ($row1['role']) {
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
                        $html .= '<div class="col-sm-3 ">
        <div class="card h-auto w-100">

            <div class="card-body">
                <div class="card-img" style="height:25rem;">
                    <img src="./profile/'.$row1['photo'].'" class="w-100 h-100 ">
                </div>
                <div class="card-title my-1" style="font-size:20px;" >' . ucwords($row1['name']);
                if ($row1['islocal'] == 1) {
                    $html .=' <i class="fa fa-plane" style="color:blue;"></i>';
                }
                $html .='</div>
                <div class="card-title my-1">'.$row1['address'].'</div>
                <div class="card-title my-1">'.$style.'</div>
                <div class="card-title my-1">'.$role.'</div>
                <div class="card-title my-1"><b style="color:blue;">'.$row['bid_amount'].' Cr</b></div>';
                if ($row1['sold'] == 1) {
                    $html.='<div class="card-subtitle mb-2" style="color:red;" ><b>Sold</b></div>';
                }else if($row1['sold'] == 3){
                    $html.='<div class="card-subtitle mb-2" style="color:blue;" ><b>Written</b></div>';
                }else if($row1['sold'] == 4){
                    $html.='<div class="card-subtitle mb-2" style="color:orange;" ><b>Replace</b></div>';
                }
                $html.='
            </div>
        </div>
    </div>'; 
                    }
                }
                
            }
        }
        echo $html;
        ?>

        </div>
    </div>
</section>
<?php
include('footer.php');
?>