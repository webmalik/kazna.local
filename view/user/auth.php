<?php error_reporting(0)?>
<?php include_once "/view/layouts/header.php"?>
    <div class="row">
        <div class="col-xs-offset-0 col-sm-offset-4 col-xs-12 col-sm-4">
            <div class="panel panel-success panel-center">
                <div class="panel-heading">
                    <h3 class="panel-title">Авторизація</h3>
                </div>
                <div class="panel-body">
                    <?php
                    if(isset($errors) && is_array($errors)) {
                    ?>
                    <div class="bs-callout bs-callout-danger">
                        <h4>Помилка при авторизації</h4>
                        <?php
                        foreach ($errors as $error) {
                            echo "<p> - " . $error . "</p>";
                        }
                        ?>
                    </div>
                    <?php
                    }
                    ?>

                    <form class="login_form" action="" method="post">
                        <label for="name">Користувач:</label>
                        <input type="text" name="login" placeholder="Login" required oninvalid="this.setCustomValidity('Неправильно введений користувач')" />
                        <label for="name">Пароль:</label>
                        <input type="password" name="password" placeholder="*******" required oninvalid="this.setCustomValidity('Неправильно введений пароль')"/>
                        <button class="submit" name="submit" type="submit">Увійти</button>
                    </form>
                </div>
                <div class="panel-footer">
                    Powered By WebMaLik &copy;
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<?php include_once "/view/layouts/footer.php"?>
