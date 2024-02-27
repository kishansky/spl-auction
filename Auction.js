let pid;
        $(document).ready(function () {
            round();
            history();
            teamList();
        });
        function round() {
            let rId = $("#round").val();
            // console.log(rId);
            $.ajax({
                url: "./load/round-lists.php",
                type: "POST",
                data: { round: rId },
                success: function (data) {
                    $("#player").html(data);
                }

            });
        }
        function player(id) {
            pid = id;
            console.log(id);
            $.ajax({
                url: "./load/player.php",
                type: "POST",
                data: { id: id },
                success: function (data) {
                    $("#player").html(data);
                }

            });

        }
        let bidAmount =0;
        function roundToTwoDecimalPlaces(value) {
            return Math.round(value * 100) / 100;
        }

        function nextBid() {
            let bidAmount = parseFloat($("#bidAmount").text());
            if (bidAmount >= 0.20 && bidAmount < 1.00) {
                bidAmount = roundToTwoDecimalPlaces(bidAmount + 0.05);
            } else if (bidAmount >= 1.00 && bidAmount < 5.00) {
                bidAmount = roundToTwoDecimalPlaces(bidAmount + 0.10);
            } else if (bidAmount >= 5.00 && bidAmount < 55.00) {
                bidAmount = roundToTwoDecimalPlaces(bidAmount + 0.20);
            }
            $('#bidAmount').html(bidAmount);
            // console.log(bidAmount);
        }
        function prevBid() {
            let bidAmount = parseFloat($("#bidAmount").text());
            if (bidAmount > 0.20 && bidAmount <= 1.00) {
                bidAmount = roundToTwoDecimalPlaces(bidAmount - 0.05);
            } else if (bidAmount > 1.00 && bidAmount <= 5.00) {
                bidAmount = roundToTwoDecimalPlaces(bidAmount - 0.10);
            } else if (bidAmount > 5.00 && bidAmount <= 55.00) {
                bidAmount = roundToTwoDecimalPlaces(bidAmount - 0.20);
            }
            $('#bidAmount').html(bidAmount);
            // console.log(bidAmount);
        }
        let teamId=0;
        function team(id) {
            teamId = id;
        }
        function update(sold) {
            let bidAmount = parseFloat($("#bidAmount").text());
            console.log(bidAmount);
            $.ajax({
                url: "./load/update-auction.php",
                type: "POST",
                data: { bidamount: bidAmount, teamid: teamId, pid: pid, sold: sold },
                success: function (data) {
                    $("#status").html(data);
                }
            });
        }
        function sold(sold) {
            if(sold != 2){
            
                update(1);
            }
            let bidAmount = parseFloat($("#bidAmount").text());
            console.log(bidAmount);
            $.ajax({
                url: "./load/sold.php",
                type: "POST",
                data: { bidamount: bidAmount, teamid: teamId, pid: pid ,sold:sold},
                success: function (data) {
                    if (data == "done") {
                        $("#status").html("Sold");
                    } else {
                        $("#status").html(data);
                    }
                }
            });
        }
        function unsold() {
            sold(2)
            update(2);
            $.ajax({
                url: "./load/unsold.php",
                type: "POST",
                data: { pid: pid },
                success: function (data) {
                    if (data == "done") {
                        $("#status").html("Sold");
                    } else {
                        $("#status").html(data);
                    }
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