<?php 
    session_start();
    include('server.php');
    $errors = array();

    if(isset($_POST['apply'])){
        $e_id = $_GET['eid'];
        $u_id = $_GET['uid'];
  
        $Ename = $_POST['e_name'];
        $Cname = $_POST['category'];
        $Eyear = trim($_POST['e_year']);
        $Eauthor = trim($_POST['e_author']);
        $Eartist = trim($_POST['e_artist']);
        $Edate = mysqli_real_escape_string($conn, $_POST['r_date']);
        $Erate = $_POST['rate'];
        $Edetail = trim($_POST['e_detail']);
        $e_img = trim($_FILES['e_image']['name']);
        $img_tmp = $_FILES['e_image']['tmp_name'];

        if(($Cname == 'Fiction')) $creatorname = $Eauthor;
        if(($Cname == 'Music')) $creatorname = $Eartist;

        $del_sql = "DELETE FROM record
                    WHERE E_ID = '$e_id' AND U_ID = '$u_id'";

        if(mysqli_query($conn, $del_sql)){
           //check empty
            if(empty($Ename) or empty($Edate) or empty($Erate)){
                array_push($errors, "not complete info");
                $_SESSION['error'] = "Please complete all information.";
                header("location: upload.php");
            }

            if(count($errors)==0){
                move_uploaded_file($img_tmp, "./uploadimg/entimage/$e_img");
                //check for fiction, music is it has already yet?
                if(isset($creatorname)){
                    $cby_check = "SELECT entertainment.* , create_by.E_creator
                                    FROM entertainment				
                                    INNER JOIN create_by
                                    ON entertainment.E_ID = create_by.E_ID
                                    WHERE entertainment.E_name = '$Ename' AND entertainment.C_name = '$Cname' AND create_by.E_creator = '$creatorname'";
                    if($query = mysqli_query($conn, $cby_check)){
                        if(mysqli_num_rows($query) != 0){ //if already have
                            $fetch_id = mysqli_fetch_array($query);
                            $last_eid = $fetch_id['E_ID'];
                        }
                    }  
                    else{
                        echo "can not query cby_check";
                    }  
                }
                //check for cartoon, movie, series is it has already yet?
                else if(isset($Eyear)){
                    $cin_check = "SELECT entertainment.* , create_in.E_year  
                                    FROM entertainment				
                                    INNER JOIN create_in
                                    ON entertainment.E_ID = create_in.E_ID
                                    WHERE entertainment.E_name = '$Ename' AND entertainment.C_name = '$Cname' AND create_in.E_year = '$Eyear'";
                    if($query = mysqli_query($conn, $cin_check)){
                        if(mysqli_num_rows($query) != 0){ //if already have
                            $fetch_id = mysqli_fetch_array($query);
                            $last_eid = $fetch_id['E_ID'];
                        }
                    }
                    else{
                        echo "can not query cin_check";
                    }     
                }
                else echo "can not check in create_in or create_by";
                
                //if it never insert before                    
                if(mysqli_num_rows($query) == 0){
                    $new_ent = "INSERT INTO entertainment (E_ID, E_name, C_name) VALUES ( null, '$Ename', '$Cname' )";

                    if(mysqli_query($conn,$new_ent)){
                        $last_eid = mysqli_insert_id($conn);

                        if($Cname == 'Fiction' or $Cname == 'Music'){         
                            if(empty($creatorname)){
                                $insert_c = "INSERT INTO create_by(E_ID, C_name)
                                                VALUES('$last_eid', '$Cname')";
                            }
                            else{
                                $insert_c = "INSERT INTO create_by(E_ID, C_name, E_creator)
                                                VALUES('$last_eid', '$Cname', '$creatorname')";
                            }
                            $in_c = mysqli_query($conn, $insert_c);
                        }
                        else{
                            if(empty($Eyear)){
                                $insert_c = "INSERT INTO create_in(E_ID, C_name)
                                                VALUES('$last_eid', '$Cname')";
                            }
                            else{
                                $insert_c = "INSERT INTO create_in(E_ID, C_name, E_year)
                                                VALUES('$last_eid', '$Cname', '$Eyear')";
                            }
                            $in_c = mysqli_query($conn, $insert_c);
                        }
                    }
                    else echo "can not query new ent";
                }

                //insert to record table
                if(empty($e_img) and empty($Edetail)){
                    $have = "INSERT INTO record ( U_ID, E_ID, E_date, E_detail, E_pic, E_rating )
                            VALUES ('$u_id' , '$last_eid', '$Edate', NULL, NULL, '$Erate' )";
                }
                else if(empty($Edetail)){
                    $have = "INSERT INTO record ( U_ID, E_ID, E_date, E_detail, E_pic, E_rating )
                            VALUES ('$u_id' , '$last_eid', '$Edate', NULL, '$e_img', '$Erate' )";
                }
                else if(empty($e_img)){
                    $have = "INSERT INTO record ( U_ID, E_ID, E_date, E_detail, E_pic, E_rating )
                            VALUES ('$u_id' , '$last_eid', '$Edate', '$Edetail', NULL, '$Erate' )";
                }
                else{
                    $have = "INSERT INTO record ( U_ID, E_ID, E_date, E_detail, E_pic, E_rating )
                            VALUES ('$u_id' , '$last_eid', '$Edate', '$Edetail', '$e_img', '$Erate' )";
                }
                
                if(mysqli_query($conn, $have)){
                    header("location: index.php?remark=success");
                }
                else echo "can not insert when they have it already";
            }
            else echo "some thing wrong badly, have error but can't detect";  

        }
        else{
            echo "can not delete";
        }
        
    }

?>