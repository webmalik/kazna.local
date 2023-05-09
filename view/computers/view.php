<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h4>Комп'ютер: <?=$computer['comp_name']?>
                <?php if (!preg_match("/100%/", shell_exec("ping ". $computer['ip'] ." -n 1 -w 25"))) { ?>
                <span class="online">(Online)</span>
                    <?php } else {?> <span class="offline">(Offline)</span> <?php } ?>
            </h4>
        </div>
        <div class="panel-body">
            <table class="table table-hover table-head-panel">
                <tbody>
                        <tr>
                            <td>ID</td><td><?=$computer['id']?></td>
                        </tr>
                        <tr>
                            <td>Назва</td><td><?=$computer['comp_name']?></td>
                        </tr>
                        <tr>
                            <td>Повна назва</td><td><?=$computer['comp_login']?></td>
                        </tr>
                        <tr>
                            <td>Відповідальний</td><td><?=User::getUserNameById($computer['name'])?></td>
                        </tr>
                        <tr>
                            <td>ОС</td><td><?=$computer['os']?></td>
                        </tr>
                        <tr>
                            <td>IP-адреса</td><td><?=$computer['ip']?></td>
                        </tr>
                        <tr>
                            <td>Монітор</td><td><?=$computer['monitor']?></td>
                        </tr>
                        <tr>
                            <td>Системний блок</td><td><?=$computer['system']?></td>
                        </tr>
                        <tr>
                            <td>Клавіатура</td><td><?=$computer['klav']?></td>
                        </tr>
                        <tr>
                            <td>Миша</td><td><?=$computer['mouse']?></td>
                        </tr>
                </tbody>
            </table>

            <hr>
            <h3>Програмне забезпечення</h3>
            <table class="table table-hover table-head-panel">
                <thead>
                    <tr>
                        <th>
                            Назва та версія
                        </th>
                        <th>
                            Версія
                        </th>
                        <th>
                            Виробник
                        </th>
                        <th>
                            Дата встановлення
                        </th>
                    </tr>
                </thead>
                <tbody>
                <?php foreach ($comp_po as $po) {
                    ?>
                    <tr>
                        <td><?=$po['name']?></td>
                        <td><?=$po['version']?></td>
                        <td><?=$po['dev']?></td>
                        <td><?=$po['date']?></td>
                    </tr>
                <?php }?>
                </tbody>
            </table>
            <a class="btn btn-info btn-md" href="/computers/addpo/<?=$computer['comp_login']?>" role="button">Додати ПО</a>
            <a class="btn btn-success btn-md" href="/computers/edit/<?=$computer['id']?>" role="button">Редагувати комп'ютер</a>
            <a class="btn btn-danger btn-md" href="/computers/delete/<?=$computer['comp_login']?>" role="button">Видалити комп'ютер</a>
        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
