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
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LIKIES</title>

    <link rel="stylesheet" href="stylesheet\index.css">
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
            <p>Let's see, what people like.</p>
        </div>

        <div class="datacontainer-trendcover">
            <div class="datacontainer-trend" style="background-color: #f49ac0">
                <a href="trend_pages.php?category=Cartoon">
                    Cartoon  
                </a>
            </div>
            <div class="datacontainer-trend" style="background-color: #f4989d">
                <a href="trend_pages.php?category=Fiction">
                    Fiction 
                </a>
            </div>
            <div class="datacontainer-trend" style="background-color: #f06eaa">
                <a href="trend_pages.php?category=Movie">
                    Movie  
                </a>
            </div>
            <div class="datacontainer-trend" style="background-color: #a963a9">
                <a href="trend_pages.php?category=Music">
                    Music
                </a>
            </div>
            <div class="datacontainer-trend" style="background-color: #855fa8">
                <a href="trend_pages.php?category=Series">
                    Series
                </a>
            </div>
        </div>


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