<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1,
      shrink-to-fit=no">

    <title>
        Patient Details</title>
        <link rel="stylesheet" href="./css/bootstrap.css">
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
    <div id="printarea" style="width: 210mm; height: 276mm;">
        <div class="row">
            <div style="height: 54mm;" class="col-6 border border-black border-1 ">
                <div class="row">
                    <div class="col-4">
                        <img src="./profile/default.jpg" alt="" style="height: 54mm; width:40mm" >
                    </div>
                    <div class="col-8" style="padding-left:30px;">
                        name-name
                        address

                    </div>
                </div>
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