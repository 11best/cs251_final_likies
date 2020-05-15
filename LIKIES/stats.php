<?php 
    session_start();
    include('server.php');

    if(!isset($_SESSION['username'])){
        header('location: login.php');
    }
    if(isset($_GET['logout'])){
        session_destroy();
        unset($_SESSION['username']);
        header('location: login.php');
    }
    $Uname = $_SESSION['username'];
    $statsql = "SELECT COUNT(record.E_ID), entertainment.C_name
                FROM record
                INNER JOIN entertainment
                ON record.E_ID = entertainment.E_ID
                WHERE record.U_ID = (SELECT U_ID FROM member WHERE username = '$Uname')
                GROUP BY entertainment.C_name";
    $stat_run = mysqli_query($conn, $statsql);
    if(isset($stat_run)){
        while($row = mysqli_fetch_array($stat_run)){
            if($row['C_name'] == 'Cartoon') $amount_cartoon = $row['COUNT(record.E_ID)'];
            if($row['C_name'] == 'Fiction') $amount_fiction = $row['COUNT(record.E_ID)'];
            if($row['C_name'] == 'Movie') $amount_movie = $row['COUNT(record.E_ID)'];
            if($row['C_name'] == 'Music') $amount_music = $row['COUNT(record.E_ID)'];
            if($row['C_name'] == 'Series') $amount_series = $row['COUNT(record.E_ID)'];
        }
        if(empty($amount_cartoon)) $amount_cartoon = 0;
        if(empty($amount_fiction)) $amount_fiction = 0;
        if(empty($amount_movie)) $amount_movie = 0;
        if(empty($amount_music)) $amount_music = 0;
        if(empty($amount_series)) $amount_series = 0;
    }
    $dataPoints = array( 
        array("y" => $amount_cartoon, "label" => "Cartoon" ),
        array("y" => $amount_fiction, "label" => "Fiction" ),
        array("y" => $amount_movie, "label" => "Movie" ),
        array("y" => $amount_music, "label" => "Music" ),
        array("y" => $amount_series, "label" => "Series" )
    );
 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LIKIES</title>

    <link rel="stylesheet" href="stylesheet\index.css">

    <script>
        window.onload = function() {

            CanvasJS.addColorSet("LikiesShades",
                [//colorSet Array
                    "#f49ac0",
                    "#f4989d",
                    "#f06eaa",
                    "#a963a9",
                    "#855fa8"                
                ]);

        var chart = new CanvasJS.Chart("chartContainer", {
            colorSet: "LikiesShades",
            animationEnabled: true,
            theme: "light2",
            title:{
                text: "Overall of your statistic"
            },
            axisY: {
                title: ""
            },
            data: [{
                type: "column",
                yValueFormatString: "#",
                dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
            }]
        });
        chart.render();
        
        }
    </script>
</head>

<body>
    <div class="main">     
    <div class="upperbar">
            <div class="logo">
                <a href="index.php">
                    <img alt="logo" src="img/logofix.png" width="140px" >
                </a>
            </div>
            <div class="searchbtn">
                <a href="search.php">
                    <img src="icon/search-black.png" width="28px" >
                </a>
            </div>
            <!-- loged in user -->
            <?php if(isset($_SESSION['username'])) :?>
                <a href="index.php"><strong><?php echo $_SESSION['username'];?></strong> </a>
                <a href="index.php?logout='1'"> <img alt="logout" src="icon/log-out.png" width="20px" style="padding: 0;top: 4px; position: relative;padding-right: 10px;"> </a>
            <?php endif ?>
        </div>
   
        <div class="page_info">
            <p>Let's see, How much things that you like.</p>
        </div>
        
        <div id="chartContainer" style="height: 400px; width: 70%; margin: 0 auto;"></div>
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>


    </div>

    <div class=sidenav>
        <a href="index.php"><img src="icon/home.png" width="30px">Home</a><br>
        <a href="cartoon.php"><img src="icon/cartoon.png" width="30px">Cartoon</a> <br>
        <a href="fiction.php"><img src="icon/fiction.png" width="30px">Fiction</a> <br>
        <a href="movie.php"><img src="icon/movie.png" width="30px">Movie</a> <br>
        <a href="music.php"><img src="icon/music.png" width="30px">Music</a> <br>
        <a href="series.php"><img src="icon/series.png" width="30px">Series</a> <br>
        <a href="trend.php"><img src="icon/fire.png" width="30px">Trend</a>
        <a href="stats.php"><img src="icon/stat.png" width="30px">Stats</a>
    </div>
</body>

</html>