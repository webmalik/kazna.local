<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">Видалення клієнта із реєстру</h3>
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
                    <p>Ви успішно видалили клієнта із реєстру... </p>
                    <a href="/klients" class="btn btn-default">Повернутись</a>
                </div>
                <?php
            } else {
                ?>
                <div class="bs-callout bs-callout-warning">
                    <h4>Ви дійсно хочете видалити клієнта із реєстру?</h4>
                </div>
                <form class="login_form" action="" method="post">
                    <button class="btn btn-success" type="submit" name="submit">Видалити клієнта із реєстру</button>
                    <a href="/klients/<?=$id?>" class="btn btn-default">Відмінити</a>
                </form>
            <?php }?>
        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
