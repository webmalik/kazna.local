<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">Реєстрація розподілів</h3>
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
                    <p>Ви успішно зареєстрували документ у журналі кошторисів під номером <b><?=$result?> </b></p>
                </div>
                <?php
            } else {
                ?>
                <form class="login_form" action="" method="post">
                    <label>Дата отримання документа:</label>
                    <input type="date" name="date_to" min="<?=Vydatki::getLastDate('kost')?>" value="<?=date("Y-m-d", time());?>">
                    <?php Form::addInputText("to_mail", "Від кого надійшов документ")?>
                    <?php Form::addInputText("number", "Номер документа")?>
                    <label>Дата документа:</label>
                    <input type="date" name="date_mail" value="<?=date("Y-m-d", time());?>">
                    <label>Короткий зміст документа:</label>
                    <select name="description">
                        <option value="Кошторис" selected>Кошторис</option>
                        <option value="Тимчасовий кошторис">Тимчасовий кошторис</option>
                        <option value="Довідка">Довідка</option>
                    </select>
                    <?php Form::addSelectUserVydatku($work_to, "work_to", "Кому направлено документ")?>
                    <?php Form::addButtonSubmit("Зареєструвати документ")?>
                </form>
            <?php }?>
        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
