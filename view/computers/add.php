<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">Реєстрація нового комп'ютера</h3>
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
                    <p>Ви успішно зареєстрували комп'ютер у нашій базі даних... </p>
                </div>
                <?php
            } else {
                ?>
                <form class="login_form" action="" method="post">
                    <?php Form::addInputText("comp_name", "Назва комп'ютера")?>
                    <?php Form::addInputText("comp_login", "Повне ім'я комп'ютера")?>
                    <?php Form::addSelect($name, "name", "Відповідальна особа")?>
                    <?php Form::addInputText("os", "Операціна система")?>
                    <?php Form::addInputText("ip", "ІР адреса")?>
                    <?php Form::addInputText("monitor", "Монітор")?>
                    <?php Form::addInputText("system", "Системний блок")?>
                    <?php Form::addInputText("klav", "Клавіатура")?>
                    <?php Form::addInputText("mouse", "Мишка")?>
                    <?php Form::addButtonSubmit("Додати комп'ютер")?>
                </form>
            <?php }?>
        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
