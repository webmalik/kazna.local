<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="jumbotron">
        <?php 
            $users = User::getUserList();
            foreach($users as $user) { 
                $d = time();
                //echo date('d/m',$d);
                if (date('d.m',strtotime($user['birdth'])) == date('d.m',$d)) {?>
                    <div class="birth">
                            <h3>Сьогодні день народження!</h3>
                            <?="<a href = \"profile/".$user['login']."\"><img class=\"av img-circle\" src=\"".$user['photo']."\" alt=\"\"> ".$user['last_name']." ".$user['first_name']." ".$user['middle_name']."</a>";?>
                            <div class="birth_text">

                            </div>
                    </div>    <?php             
                }
            }
            foreach($users as $user) {
                echo "<a href = \"profile/".$user['login']."\" class = \"list_user\"><img class=\"av img-circle\" src=\"".$user['photo']."\" alt=\"\"> ".$user['last_name']." ".$user['first_name']." ".$user['middle_name']."</a>";
            }
            
        ?>
    </div>
</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>

