<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">Видалення комп'ютера із реєстру</h3>
        </div>
        <div class="panel-body">
            <?php
            if(isset($errors) && is_array($errors)) {
                ?>
                <div class="bs-callout bs-callout-danger">
                    <h4>Помилка при видаленні</h4>
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
                    <h4>Успішне видалення</h4>
                    <p>Ви успішно видалили комп'ютер із нашої бази даних... </p>
                    <a href="/computers" class="btn btn-default">Повернутись</a>
                </div>
                <?php
            } else {
                ?>
                <div class="bs-callout bs-callout-warning">
                    <h4>Ви дійсно хочете видалили комп'ютер із нашої бази даних?</h4>
                </div>
                <form class="login_form" action="" method="post">
                    <button class="btn btn-success" type="submit" name="submit">Видалити комп'ютер із реєстру</button>
                    <a href="/computers" class="btn btn-default">Відмінити</a>
                </form>
            <?php }?>
        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
