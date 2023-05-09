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
                    <p>Ви успішно зареєстрували лист у журналі вихідної кориспонденції під номером <b><?=$result?> </b></p>
                    <a href="/mail/out" class="btn btn-default">Повернутись</a>
                </div>
                <?php
            } else {
                ?>
                <form class="login_form" action="" method="post">
                    <?php Form::addInputText("ind", "Індекс")?>
                    <?php Form::addInputText("to_list", "Кому направено лист")?>
                    <?php Form::addInputText("description", "Короткий зміст")?>
                    <?php Form::addInputText("count_list", "Кількість аркушів")?>
                    <label for="pr">Примітка</label>
                    <input type="text" id="pr_click" name="pr" value="" readonly placeholder="Примітка" required="" oninvalid="this.setCustomValidity('Неправильно введене Примітка')">
                    <?php Form::addButtonSubmit("Зареєструвати лист")?>
                </form>
            <?php }?>
        </div>
    </div>
    <div class="modal modal_pr">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h4>Виберіть підрозділ якому направляється лист</h4>
                <a href="#" id="close_pr">X</a>
            </div>
            <div class="panel-body">
                <input type="text" value="" id="r_pr_input" placeholder="Ручне введення" required="" oninvalid="this.setCustomValidity('Неправильно введене Примітка')">
                <input type="button" id="r_pr_button" value="Ок" class="submit">
                <br>
                <table class="table table-hover table-head-panel table-head-panel-modal">
                    <thead>
                        <tr>
                            <th>№</th>
                            <th>Назва структурного підрозділу</th>
                            <th>Поштова адреса</th>
                            <th>Індекс</th>
                        </tr>
                    </thead>
                    <tbody class="modal_scroll">
                        <tr class="selection_pr" data-val="Кур'єр">
                            <td colspan="4" style="text-align: center">Кур'єр</td>
                        </tr>
                        <?php foreach ($gu_mails as $mail) {?>
                        <tr class="selection_pr" data-val="<?=$mail['name_sk']?>">
                            <td><?=$mail['id']?></td>
                            <td><?=$mail['name']?></td>
                            <td><?=$mail['post']?></td>
                            <td><?=$mail['index']?></td>
                        </tr>
                        <?php }?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
