<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">Редагування даних клієнта</h3>
        </div>
        <div class="panel-body">
            <?php
            if(isset($errors) && is_array($errors)) {
                ?>
                <div class="bs-callout bs-callout-danger">
                    <h4>Помилка при зберіганні</h4>
                    <?php
                    foreach ($errors as $error) {
                        echo "<p> - ".$error."</p>";
                    }
                    ?>
                </div>
                <?php
            }
            if(isset($result) && $result == 1) {
                ?>
                <div class="bs-callout bs-callout-success">
                    <h4>Успішне зберіання</h4>
                    <p>Ви успішно зберегли зміни у нашій базі даних... </p>
                </div>
                <?php
            } else {
                ?>
                <form class="login_form" action="" method="post">
                    <?php Form::addInputTextNR("name_s", "Коротка назва", $klient)?>
                    <?php Form::addInputTextNR("name_p", "Повна назва", $klient)?>
                    <?php Form::addInputTextNR("krk", "КРК", $klient)?>
                    <?php Form::addInputTextNR("edrpou", "ЄДРПОУ", $klient)?>
                    <?php Form::addInputTextNR("address", "Адреса", $klient)?>
                    <?php Form::addInputTextNR("tel_1", "Телефон 1", $klient)?>
                    <?php Form::addInputTextNR("tel_2", "Телефон 2", $klient)?>
                    <?php Form::addInputTextNR("ker_pos", "Посада керівника", $klient)?>
                    <?php Form::addInputTextNR("ker", "ПІБ керівника", $klient)?>
                    <?php Form::addInputTextNR("buh_pos", "Посада бухгалтера", $klient)?>
                    <?php Form::addInputTextNR("buh", "ПІБ бухгалтера", $klient)?>
                    <label>Тип бюджету:</label><br>
                    <input type="checkbox" name="budget_mb" value="1" <?php if($klient['budget_mb'] == 1) echo "checked";?>> Місцевий бюджет <br>
                    <input type="checkbox" name="budget_db" value="1" <?php if($klient['budget_db'] == 1) echo "checked";?>> Державний бюджет <br>
                    <input type="checkbox" name="inshi" value="1" <?php if($klient['inshi'] == 1) echo "checked";?>> Інші клієнти <br>
                    <?php Form::addInputTextNR("budget_kod", "Код місцевого бюджету", $klient)?>
                    <?php Form::addInputTextNR("budget_name", "Назва місцевого бюджету", $klient)?>
                    <br>
                    <br>
                    <?php Form::addButtonSubmitK("Редагувати дані клієнта")?>
                    <a href="/klients/<?=$id?>" class="btn btn-default">Повернутись</a>
                </form>
            <?php }?>
        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
