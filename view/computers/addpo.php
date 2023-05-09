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
                    <p>Ви успішно додали програмне забезпечення до бази даних</p>
                </div>
                <?php
            } else {
                ?>
                <form class="login_form" action="" method="post" enctype="multipart/form-data">
                        <input type="file" name="csv">
                    <?php Form::addButtonSubmit("Додати ПЗ")?>
                </form>
            <?php }?>
        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
