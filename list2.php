<?php
include("config.php");
// if (!isset($_SESSION['admin'])) {
//     header("Location:{$hostname}/index.php");
// }
if (!isset($_GET['id'])) {
    $id = 1;
} else {
    $id = $_GET['id'];
}
?>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1,
      shrink-to-fit=no">

    <title>
        Players Lists</title>
    <link href="https://fonts.googleapis.com/css2?family=Genos:wght@400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">        <link rel="stylesheet" href="./css/bootstrap.css">
    <style>
    @page {
        margin: 2px 6px;
    }

    .patient-label {
        color: #000;
        font-size: 13px;
        padding-left: 20px;
    }

    .patient-data {
        color: #000;
        font-size: 13px;
    }
    </style>
</head>

<body>
    
    <!--startprint-->
    <div id="printarea" style="width: 210mm; height: 300mm;">
        <div class="row">
            <div class="row my-3">
                <div class="col-2 ">
                    <img src="./img/SPL-2024.png" style="height:7rem;">
                </div>
                        <div class="col-8 text-center my-1">
                            <h2><?php
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
    ?></h2>
    <h4>Player List</h4>
                        </div>
                    </div>
                    <div class="row mx-2">
             <?php
           $sql = "SELECT * FROM players_auction WHERE team_id ={$id}";
        $result = mysqli_query($conn,$sql)or die("Query failed.");
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
            $sql1 = "SELECT * FROM players WHERE p_id ={$row['player_id']}";
            $result1 = mysqli_query($conn,$sql1)or die("Query failed.");
                if (mysqli_num_rows($result1) > 0) {
                    while ($row1 = mysqli_fetch_assoc($result1)) {

                    ?>
            <!--<div style="height: 60mm;" class="col-6 border border-black border-1 ">-->
                    <div class="col-1 border border-black  border-1 p-2">
                        
                    </div>
                    <div class="col-4 border border-black  border-1 p-2">
                        <?php echo $row1['name']; if($row1['islocal']==1){echo ' <i class="fa fa-plane" style="color:blue;"></i>';}?>
                    </div>
                    <div class="col-7 border border-black  border-1 p-2">
                        <?php echo substr($row1['address'],0,30)."..";?>
                    </div>
                    
                
            <!--</div>-->
            <?php 
                }
            }
            }
        }
            ?>
            </div>
        </div>
    </div>

    <!--endprint-->
    <div class="row">
        <div class="col-6 mt-5">
            <button style="float: right;" class="btn btn-info" type="submit" onclick="doPrint()">Print</button>

        </div>
    </div>
    <script>
    function doPrint() {
        bdhtml = window.document.body.innerHTML;
        sprnstr = "<!--startprint-->";
        eprnstr = "<!--endprint-->";
        prnhtml = bdhtml.substr(bdhtml.indexOf(sprnstr) + 17);
        prnhtml = prnhtml.substring(0, prnhtml.indexOf(eprnstr));
        window.document.body.innerHTML = prnhtml;
        window.print();
        window.document.body.innerHTML = bdhtml;
    }
    </script>


</body>

</html>