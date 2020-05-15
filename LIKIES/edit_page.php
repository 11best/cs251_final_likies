<?php 
    session_start();
    include('server.php');
    $errors = array();

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
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
</head>

<body>
    <?php 
        if( (isset($_GET['eid'])) and (isset($_GET['uid']))){
            $e_id = $_GET['eid'];
            $u_id = $_GET['uid'];
    
            $select_r = "SELECT record.* , entertainment.E_name, entertainment.C_name
                            FROM entertainment 
                            INNER JOIN record
                            ON record.E_ID = entertainment.E_ID  AND record.U_ID = '$u_id'
                            WHERE record.E_ID = '$e_id' AND record.U_ID = '$u_id'";
            $run_r = mysqli_query($conn, $select_r);
            if($row = mysqli_fetch_array($run_r)){
                $post_date = $row['E_date'];
                $post_rating = $row['E_rating'];
                $post_detail = $row['E_detail'];
                $post_pic = $row['E_pic'];
                $post_E_name = $row['E_name'];
                $post_category = $row['C_name'];
    
                if($post_category == 'Fiction' or $post_category == 'Music'){
                    $select_adt = "SELECT create_by.E_ID, create_by.E_creator, entertainment.E_name
                                    FROM create_by
                                    INNER JOIN entertainment
                                    ON create_by.E_ID = entertainment.E_ID
                                    WHERE entertainment.E_ID = '$e_id'";
                    $run_adt = mysqli_query($conn, $select_adt);
                    if($nrow = mysqli_fetch_array($run_adt)){
                        $post_E_creator = $nrow['E_creator'];
                    }
                    else echo "can't fetch array from create_by";
                }
                else{
                    $select_adt = "SELECT create_in.E_ID, create_in.E_year, entertainment.E_name
                                    FROM create_in
                                    INNER JOIN entertainment
                                    ON create_in.E_ID = entertainment.E_ID
                                    WHERE entertainment.E_ID = '$e_id'";
                    $run_adt = mysqli_query($conn, $select_adt);
                    if($nrow = mysqli_fetch_array($run_adt)){
                        $post_E_year = $nrow['E_year'];
                    }
                    else echo "can't fetch array from create_in";
                }
            }else echo "can't fetch record table";
            
        }
    ?>

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
            <p>Edit your special moments.</p>
        </div>

        <div class="formblock">
        <form action="edit_db.php?uid=<?php echo $u_id; ?>&eid=<?php echo $e_id; ?>" method="post" enctype="multipart/form-data" onsubmit="return confirm('Is the information correct?');">
            
            <?php
                if($post_pic == NULL){
                    echo '<img src="icon\addpic.png" onclick="E_Click()" id="entdisplay" style="cursor: pointer;">';
                }
                else {
                    echo '<img src="uploadimg/entimage/'.$post_pic.'" onclick="E_Click()" id="entdisplay" style="cursor: pointer;">';
                }
            ?>
            <input type="file" name="e_image" onchange="E_Image(this)" id="entImage" style="display: none">
            
            <div class="input-group">
                <label for="e_name" style="word-spacing: 30px">Name :</label>
                <input type="text" name="e_name" placeholder="Name of your entertainment" value="<?php echo $post_E_name ?>" >
            </div>      
            <div class="input-group">
                <label for="category">Category  : </label>
                <input id="cartoon" onclick="showYear();" type="radio" name="category" class="r-category" value="Cartoon" <?php echo ($post_category=='Cartoon')?'checked':'disabled' ?>> Cartoon
                <input id="fiction" onclick="showAuthor();" type="radio" name="category" class="r-category" value="Fiction"<?php echo ($post_category=='Fiction')?'checked':'disabled' ?>> Fiction
                <input id="movie" onclick="showYear();" type="radio" name="category" class="r-category" value="Movie"<?php echo ($post_category=='Movie')?'checked':'disabled' ?>> Movie
                <input id="music" onclick="showArtist();" type="radio" name="category" class="r-category" value="Music"<?php echo ($post_category=='Music')?'checked':'disabled' ?>> Music
                <input id="series" onclick="showYear();" type="radio" name="category" class="r-category" value="Series"<?php echo ($post_category=='Series')?'checked':'disabled' ?>> Series
            </div>
            
            <?php 
                if($post_category == 'Fiction'){
                    echo '<div id="divAuthor">
                            <label for="e_author" style="word-spacing: 20px">Author :</label>
                            <input type="text" id="author" name="e_author" value="'.$post_E_creator.'" >
                        </div>';
                }
                else if($post_category == 'Music'){
                    echo '<div id="divArtist">
                            <label for="e_artist" style="word-spacing: 30px">Artist :</label>
                            <input type="text" id="artist" name="e_artist" value="'.$post_E_creator.'" >
                        </div>';
                }
                else{
                    echo '<div id="divYear">
                            <label for="e_year" style="word-spacing: 40px">Year :</label>
                            <input type="int" id="year" name="e_year" value="'.$post_E_year.'" >
                         </div>';
                }
            ?>

            <div class="input-group">
                <label for="r_date" style="word-spacing: 40px">Date :</label>
                <input type="date" name="r_date" value="<?php echo $post_date ?>">
            </div>

            <p style="word-spacing: 25px">Rating :</p>

            <div class="rate"> 
                <label>  
                    <input type="radio" id="star5" name="rate" value="5" <?php echo ($post_rating == '5')?'checked':'' ?> />
                    <img src="icon\heart_fill.jpg">
                </label>
                <label>
                    <input type="radio" id="star4" name="rate" value="4" <?php echo ($post_rating == '4')?'checked':'' ?>/>
                    <img src="icon\heart_fill.jpg">
                </label>
                <label>
                    <input type="radio" id="star3" name="rate" value="3" <?php echo ($post_rating == '3')?'checked':'' ?>/>
                    <img src="icon\heart_fill.jpg">
                </label>
                <label>
                    <input type="radio" id="star2" name="rate" value="2" <?php echo ($post_rating == '2')?'checked':'' ?> />
                    <img src="icon\heart_fill.jpg">
                </label>
                <label>
                    <input type="radio" id="star1" name="rate" value="1" <?php echo ($post_rating == '1')?'checked':'' ?>/>
                    <img src="icon\heart_fill.jpg">
                </label>
            </div>
            
            <div class="input-group">
                <label for="e_detail">Description : <br></label>
                <input type="text" name="e_detail" style="width: 97%; height:70px" value="<?php echo $post_detail ?>">        
            </div>

        <?php include('errors.php'); ?> 
        <?php if(isset($_SESSION['error'])) : ?>
            <div class="error">
                <p>
                    <?php 
                        echo $_SESSION['error'];
                        unset($_SESSION['error']);
                    ?>
                </p>
            </div>
        <?php endif ?>
            <div style="margin: 0 auto; text-align: center">
                <div class="input-group" style="text-align: center; display:inline-block;">
                    <a href="index.php" class="btn" style="background-color: #ffadb8; color: white;">CANCEL</a>
                </div>
                <div class="input-group" style="text-align: center; display:inline-block;">
                    <button type="submit" name="apply" class="btn">APPLY</button>
                </div>
            </div>
        </form>
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

    <script src="scripts\scripts.js"></script>
</body>
</html>

