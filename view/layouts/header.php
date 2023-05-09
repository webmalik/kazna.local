<!DOCTYPE html>
<html lang="uk">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?=$page["title"]?></title>
    <link rel="shortcut icon" href="/template/img/favicon.png" type="image/png">
    <link href="/template/css/reset.css" rel="stylesheet">
    <link href="/template/css/bootstrap.min.css" rel="stylesheet">
    <link href="/template/css/font-awesome.min.css" rel="stylesheet">
    <link href="/template/css/main.css" rel="stylesheet">
    <link href="/template/css/input.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <header>
            <a href="/"><img src="/template/img/gerb.png" alt="УДКСУ у Хорошівському районі"></a>
            <span>УДКСУ у Хорошівському районі</span>
            <?php if(User::checkLogged()) {?>
            <div class="user-panel">
                <div>
                    <a href="/my-profile"><?php echo $user_info['last_name']." ".$user_info['first_name']." ".$user_info['middle_name'];?></a>
                    <a href="/messages"><i class="fa fa-envelope-o"><span class="badge"></span></i>Мої Повідомлення</a>
                    <a href="/logout"><i class="fa fa-sign-out"></i>Вихід</a>
                </div>
                <div>
                    <img class="avatar img-circle" src="<?="/".$user_info['photo']?>" alt="">
                </div>
            </div>
            <?php }?>
        </header>
    </div>