<?php
include('header.php');
include("config.php");
?>
<section style="position: absolute;" class="container-fluid  ">
    <div class="row p-0 px-sm-4 pt-sm-2">
        <div id="box"
            class="col-12 col-sm-2 order-last order-sm-first h-md-100 vh-100  row box border bg-white border-1 rounded-2 m-0 mx-1 p-0 pe-2"
            style="background-attachment: fixed;overflow: scroll;scrollbar-width: none;">
            <div id="history" style="height:auto;width: 100%;"
                class="m-0 p-0 row col-12 p-1">
            </div>

        </div>
        <div class="col-12 col-sm order-1 h-md-100 vh-100 pt-2 p-0 " style="">
            <div class="row m-0 p-0">
                <div id="teamDetails" class="row m-0 p-0  border border-1 rounded-2 mx-1 bg-white pe-2">
                    
                </div>
                <div class="col-12  m-0 p-1 h-100 bg-white row pe-2" style="opacity:90%;">
                    <div id="information" class="col-12 bg-secondary text-white rounded-2 m-1 me-2" style="width:100%; height: 3rem; ">
                       
                    </div>
                    <div id="live" class="row m-0 p-0 border border-1 rounded-2 p-1">
                        
                    </div>

                </div>
            </div>
        </div>

    </div>
    </div>



</section>
<!--remove-->
<script>
// Set the date we're counting down to
var countDownDate = new Date("february 14, 2024 15:29:59").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get today's date and time
  var now = new Date().getTime();
    
  // Find the distance between now and the count down date
  var distance = countDownDate - now;
    
  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
  // Output the result in an element with id="demo"
  document.getElementById("demo").innerHTML =hours + " hr | "
  + minutes + " min | " + seconds + " sec 😎";
    
//   If the count down is over, write some text 
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "Auction Starting... Keep tracking.. 🙄";
  }
}, 1000);
</script>

// <script>


//     let box = document.getElementById('box'),
//         btn = document.getElementById('btn');


//     function check() {

//         if (box.classList.contains('hidden')) {
//             box.classList.remove('hidden');
//             setTimeout(function () {
//                 box.classList.remove('visuallyhidden');
//             }, 20);
//         } else {
//             box.classList.add('visuallyhidden');
//             box.addEventListener('transitionend', function (e) {
//                 box.classList.add('hidden');
//             }, {
//                 capture: false,
//                 once: true,
//                 passive: false
//             });
//         }
//         check2();
//     }

//     function check2() {
//         setTimeout(() => {
//             check();
//         }, 15000);
//     }
//     const laptopScreenWidthThreshold = 768;
//     if (window.innerWidth >= laptopScreenWidthThreshold) {
//         setTimeout(() => {
//             check();
//         }, 15000);
//     }


// </script>
<script src="./js/jquery.js"></script>
<script>
    $(document).ready(function () {
        history();
        teamList();
        live();
        information();
    });
    function information() {
        setTimeout(information,60000);
        $.ajax({
            url: "./load/information.php",
            type: "POST",
            // data: { round: rId },
            success: function (data) {
                $("#information").html(data);
            }

        });
    }
    function history() {
        setTimeout(history,5000);
        $.ajax({
            url: "./load/history.php",
            type: "POST",
            // data: { round: rId },
            success: function (data) {
                $("#history").html(data);
            }

        });
    }
    function teamList() {
        setTimeout(teamList,5000);
        $.ajax({
            url: "./load/team-details.php",
            type: "POST",
            // data: { round: rId },
            success: function (data) {
                $("#teamDetails").html(data);
            }

        });
    }
    function live() {
        setTimeout(live,5000);
        $.ajax({
            url: "./load/live.php",
            type: "POST",
            // data: { round: rId },
            success: function (data) {
                $("#live").html(data);
            }

        });
    }
    
    
</script>
<?php
include('footer.php');
?>