<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class=" col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h4>Мій профіль</h4>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-xs-3">
                    <img src="<?=$user_info['photo']?>" alt="<?=$user_info['last_name']." ".$user_info['first_name']." ".$user_info['middle_name']?>" class="width_100 img-rounded">
                </div>
                <div class="col-xs-9">
                    <h4><?=$user_info['last_name']." ".$user_info['first_name']." ".$user_info['middle_name']." (".$user_info["login"].")"?></h4>
                    <table class="table table-hover table-head-panel">
                        <tbody>
                            <tr>
                                <td>Відділ:</td>
                                <td><?=Front::getNameViddilById($user_info['viddil'])?></td>
                            </tr>
                            <tr>
                                <td>Дата народження:</td>
                                <td><?$timest = strtotime($user_info['birdth']); echo date('d.m.Y', $timest)?></td>
                            </tr>
                            <tr>
                                <td>Особистий E-Mail:</td>
                                <td><?=$user_info['email']?></td>
                            </tr>
                            <tr>
                                <td>Мобільний телефон:</td>
                                <td><?=$user_info['tel_mob']?></td>
                            </tr>
                            <tr>
                                <td>Внутрішній телефон:</td>
                                <td><?=$user_info['tel_vn']?></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
<?php include_once "/view/layouts/footer.php"?>
