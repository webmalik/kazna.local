<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h4><?=$page['title']?></h4>
        </div>
        <div class="panel-body">
            <table class="table table-hover table-head-panel">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Назва</th>
                    <th>Повна назва</th>
                    <th>Відповідальний</th>
                    <th>ОС</th>
                    <th>IP-адреса</th>
                    <th>Монітор</th>
                    <th>Системний блок</th>
                    <th>Клавіатура</th>
                    <th>Миша</th>
                </tr>
                </thead>
                <tbody>
                    <?php foreach ($computers as $computer) {?>
                            <?php if (!preg_match("/100%/", shell_exec("ping ". $computer['ip'] ." -n 1 -w 25"))) { ?>
                        <tr class = "online" onclick="window.location.href='/computers/<?=$computer['comp_login']?>'; return false">
                            <?php } else {?>
                        <tr class = "offline" onclick="window.location.href='/computers/<?=$computer['comp_login']?>'; return false">
                            <?php } ?>
                            <td><?=$computer['id']?></td>
                            <td><?=$computer['comp_name']?></td>
                            <td><?=$computer['comp_login']?></td>
                            <td><?=User::getUserNameById($computer['name'])?></td>
                            <td><?=$computer['os']?></td>
                            <td><?=$computer['ip']?></td>
                            <td><?=$computer['monitor']?></td>
                            <td><?=$computer['system']?></td>
                            <td><?=$computer['klav']?></td>
                            <td><?=$computer['mouse']?></td>
                        </tr>
                    <?php }?>
                </tbody>
            </table>
            <a class="btn btn-success btn-md" href="/computers/add" role="button">Додати комп'ютер</a>
        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
