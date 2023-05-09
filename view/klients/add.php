<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">Реєстрація нового клієнта</h3>
        </div>
        <div class="panel-body">
            <?php
            if(isset($errors) && is_array($errors)) {
                ?>
                <div class="bs-callout bs-callout-danger">
                    <h4>Помилка при реєстрації</h4>
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
                    <h4>Успішна реєстрація</h4>
                    <p>Ви успішно зареєстрували клієнта у нашій базі даних... </p>
                </div>
                <?php
            } else {
                ?>
                <form class="login_form" action="" method="post">
                    <?php Form::addInputTextNR("name_s", "Коротка назва")?>
                    <?php Form::addInputTextNR("name_p", "Повна назва")?>
                    <?php Form::addInputTextNR("krk", "КРК")?>
                    <?php Form::addInputTextNR("edrpou", "ЄДРПОУ")?>
                    <?php Form::addInputTextNR("address", "Адреса")?>
                    <?php Form::addInputTextNR("tel_1", "Телефон 1")?>
                    <?php Form::addInputTextNR("tel_2", "Телефон 2")?>
                    <?php Form::addInputTextNR("ker_pos", "Посада керівника")?>
                    <?php Form::addInputTextNR("ker", "ПІБ керівника")?>
                    <?php Form::addInputTextNR("buh_pos", "Посада бухгалтера")?>
                    <?php Form::addInputTextNR("buh", "ПІБ бухгалтера")?>
                    <label>Тип бюджету:</label><br>
                    <input type="checkbox" name="budget_mb" value="1" checked> Місцевий бюджет <br>
                    <input type="checkbox" name="budget_db" value="1"> Державний бюджет <br>
                    <input type="checkbox" name="inshi" value="1"> Інші клієнти <br>
                    <?php Form::addInputTextNR("budget_kod", "Код місцевого бюджету")?>
                    <?php Form::addInputTextNR("budget_name", "Назва місцевого бюджету")?>
                    <br>
                    <br>
                    <?php Form::addButtonSubmitK("Додати клієнта")?>
                    <a href="/klients" class="btn btn-default">Повернутись</a>
                </form>
            <?php }?>
        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
