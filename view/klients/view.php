<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h4>Клієнт: <?=$klient['name_s']?></h4>
        </div>
        <div class="panel-body">
            <table class="table table-hover table-head-panel">
                <tbody>
                        <tr>
                            <td>Коротка назва:</td><td><?=$klient['name_s']?></td>
                        </tr>
                        <tr>
                            <td>Повна назва:</td><td><?=$klient['name_p']?></td>
                        </tr>
                        <tr>
                            <td>КРК:</td><td><?=$klient['krk']?></td>
                        </tr>
                        <tr>
                            <td>ЄДРПОУ:</td><td><?=$klient['edrpou']?></td>
                        </tr>
                        <tr>
                            <td>Адреса:</td><td><?=$klient['address']?></td>
                        </tr>
                        <tr>
                            <td>Телефон 1:</td><td><?=$klient['tel_1']?></td>
                        </tr>
                        <tr>
                            <td>Телефон 2:</td><td><?=$klient['tel_2']?></td>
                        </tr>
                        <tr>
                            <td>Посада керівника:</td><td><?=$klient['ker_pos']?></td>
                        </tr>
                        <tr>
                            <td>ПІБ керівника:</td><td><?=$klient['ker']?></td>
                        </tr>
                        <tr>
                            <td>Посада бухгалтера:</td><td><?=$klient['buh_pos']?></td>
                        </tr>
                        <tr>
                            <td>ПІБ бухгалтера:</td><td><?=$klient['buh']?></td>
                        </tr>
                        <?php 
                            if($klient['budget_mb'] == 0&&$klient['budget_db'] == 0&&$klient['inshi']==0) {?>
                                <tr>
                                    <td>Тип бюджету:</td>
                                    <td> Ви не заповнили тип бюджету.<br>Відредагуйте дане поле у клієнта</td>
                                </tr>
                        <?php
                            }else {
                        ?>
                        <tr>
                            <td>Тип бюджету:</td>
                            <td>
                                <?php
                                    if($klient['budget_mb'] == 1) {
                                        echo "Місцевий бюджет";
                                        if($klient['budget_db'] == 1) {
                                            echo "<br>Державний бюджет";
                                        }
                                    }elseif ($klient['budget_db'] == 1) {
                                        echo "Державний бюджет";
                                    }elseif ($klient['inshi'] == 1) {
                                        echo "Інші клієнти";
                                    }
                                ?>
                            </td>
                        </tr>
                        <?php if ($klient['inshi'] != 1) { ?>
                        <tr>
                            <td>Назва бюджету:</td>
                            <td>
                                <?php
                                    if($klient['budget_mb'] == 1) {
                                        echo $klient['budget_kod']." | ".$klient['budget_name'];
                                        if($klient['budget_db'] == 1) {
                                            echo "<br>9900000000 | Державний бюджет";
                                        }
                                    }elseif ($klient['budget_db'] == 1) {
                                        echo "9900000000 | Державний бюджет";
                                    }
                                ?>
                            </td>
                        </tr>
                        <?php }} ?>
                </tbody>
            </table>
            <a class="btn btn-success btn-md" href="/klients/edit/<?=$klient['id']?>" role="button">Редагувати клієнта</a>
            <a class="btn btn-danger btn-md" href="/klients/delete/<?=$klient['id']?>" role="button">Видалити клієнта</a>
            <a href="/klients" class="btn btn-default">Повернутись</a>
        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
