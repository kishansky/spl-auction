<?php
ob_start();
include('header.php');
include("config.php");

?>
<section style="position: absolute;" class="container-fluid  ">
    <div class="row">
        <div id="box" class="col-12 col-sm-2 order-last row box border bg-white border-2 m-0 p-1"
            style="height:100vh;background-attachment: fixed;overflow: scroll;scrollbar-width: none;margin-top: 50px;">
            <div id="history" style="height:100px;width: 100%;"
                class="m-0 p-0 rounded-1 row col-12 ">
            </div>

        </div>
        <div class="col-12 col-sm m-0 p-0" style="">
            <div class="m-0 p-0 h-100 bg-white row " style="opacity:90%;">
                <div id="teamDetails" class="row m-0 p-0" style="overflow-wrap:break-word;">

                </div>
                <div class="col-12 col-sm-4 offset-sm-4">

                    <select name="round" id="round" onchange="round()">
                        <option value="1">1 round</option>
                        <option value="2">2 round</option>
                        <option value="3">3 round</option>
                        <option value="4">4 round</option>
                        <option value="5">5 round</option>
                        <option value="6">6 round</option>
                        <option value="7">7 round</option>
                        <option value="8">8 round</option>
                        <option value="9">9 round</option>
                        <option value="10">10 round</option>
                        <option value="11">11 round</option>
                        <option value="12">12 round</option>
                        <option value="13">13 round</option>
                        <option value="14">14 round</option>
                        <option value="15">15 round</option>
                        <option value="16">16 round</option>
                        <option value="17">17 round</option>
                        <option value="18">18 round</option>
                        <option value="22">Captains</option>

                    </select>

                </div>
                <div class="col-4"></div>
                <div id="player" class="row">
                </div>
            </div>

        </div>

    </div>
    </div>
    <script src="./js/jquery.js"></script>
    <script>
        

    </script>



</section>

<?php
include('footer.php');
?>