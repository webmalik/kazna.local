<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">Редагування даних комп'ютера</h3>
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
                    <a href="/klients" class="btn btn-default">Повернутись</a>
                </div>
                <?php
            } else {
                ?>
                <form class="login_form" action="" method="post">
                    <?php Form::addInputText("comp_name", "Назва комп'ютера", $computer)?>
                    <?php Form::addInputText("comp_login", "Повне ім'я комп'ютера", $computer)?>
                    <?php Form::addSelect($name, "name", "Відповідальна особа", $computer['name'])?>
                    <?php Form::addInputText("os", "Операціна система", $computer)?>
                    <?php Form::addInputText("ip", "ІР адреса", $computer)?>
                    <?php Form::addInputText("monitor", "Монітор", $computer)?>
                    <?php Form::addInputText("system", "Системний блок", $computer)?>
                    <?php Form::addInputText("klav", "Клавіатура", $computer)?>
                    <?php Form::addInputText("mouse", "Мишка", $computer)?>
                    <?php Form::addButtonSubmit("Редагувати дані комп'ютера")?>
                </form>
            <?php }?>
        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
