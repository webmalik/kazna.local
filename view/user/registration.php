<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
        <div class="col-xs-offset-0 col-sm-offset-1 col-xs-12 col-sm-8">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">Реєстрація нового користувача</h3>
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
                                <p>Ви успішно зареєструвались на нашому сайті, </br> щоб виконувати основні операції, будь-ласка авторизуйтесь...</p>
                            </div>
                            <?php
                        } else {
                        ?>
                    <form class="login_form" action="" method="post">
                        <label for="name">Ім'я:</label>
                        <input type="text" name="first_name" value="<?=$first_name?>" placeholder="Ім'я" required oninvalid="this.setCustomValidity('Неправильно введене ім\'я')" />
                        <label for="name">По-батькові:</label>
                        <input type="text" name="middle_name" value="<?=$middle_name?>" placeholder="По-батькові" required oninvalid="this.setCustomValidity('Неправильно введене По-батькові')" />
                        <label for="name">Прізвище:</label>
                        <input type="text" name="last_name" value="<?=$last_name?>" placeholder="Прізвище" required oninvalid="this.setCustomValidity('Неправильно введене прізвище')" />
                        <label for="name">Відділ</label>
                        <select name="viddil">
                            <?php if (is_array($viddilList)): ?>
                                <?php foreach ($viddilList as $viddil): ?>
                                    <option value="<?php echo $viddil['id']; ?>">
                                    <?php echo $viddil['name']; ?>
                                    </option>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </select>
                        <label for="name">Особистий E-Mail:</label>
                        <input type="email" name="email" value="<?=$email?>" placeholder="E-Mail" required oninvalid="this.setCustomValidity('Неправильно введений E-Mail')" />
                        <label for="name">Логін:</label>
                        <input type="text" name="login" value="<?=$login?>" placeholder="Логін" required oninvalid="this.setCustomValidity('Неправильно введений Login')" />
                        <label for="name">Пароль:</label>
                        <input type="password" name="password" placeholder="*******" required oninvalid="this.setCustomValidity('Неправильно введений пароль')"/>
                        <button class="submit" name="submit" type="submit">Зареєструвати користувача</button>
                    </form>
                    <?php }?>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include_once "/view/layouts/footer.php"?>
