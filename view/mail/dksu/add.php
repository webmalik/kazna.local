<?php if(User::checkLoggedAdmin()== false) {
    header("Location: /not-admin");
}?>

<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">Реєстрація нового листа</h3>
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
            if(isset($result) && $result != 0) {
                ?>
                <div class="bs-callout bs-callout-success">
                    <h4>Успішна реєстрація</h4>
                    <p>Ви успішно зареєстрували лист у журналі вхідної кориспонденції під номером <b><?=$result?> </b></p>
                </div>
                <?php
            } else {
                ?>
                <form class="login_form" action="" method="post">
                    <label>Дата отримання:</label>
                    <input type="date" name="date_to" value="<?=date("Y-m-d", time());?>">
                    <label>Від кого надійшов лист:</label>
                    <select name="to_mail">
                        <option value="0" selected>ГУДКСУ</option>
                        <option value="1">ДКСУ</option>
                    </select>
                    <?php Form::addInputText("number", "Номер листа")?>
                    <label>Дата листа:</label>
                    <input type="date" name="date_mail" value="<?=date("Y-m-d", time());?>">
                    <?php Form::addInputText("description", "Короткий зміст листа")?>
                    <?php Form::addInputText("work_mail", "Вказівки для орацювання")?>
                    <?php Form::addSelect($work_to, "work_to", "Кому направлено лист")?>
                    <?php Form::addButtonSubmit("Зареєструвати лист")?>
                </form>
            <?php }?>
        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
