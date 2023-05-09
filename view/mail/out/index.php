<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h4><?=$page['title']?></h4>
        </div>
        <div class="panel-body">
            <div class="margin_bottom_10">
                <a class="btn btn-success btn-md" href="/mail/out/add" role="button">Зареєструвати лист</a>
                <?php
                    if($user_info['admin'] == 1) {
                ?>
                <a class="btn btn-warning btn-md" href="/mail/out/export" role="button">Експорт в Excel</a>
                <?php
                    }
                ?>
            </div>
            <table class="table table-hover table-head-panel mail">
                <thead>
                <tr>
                    <th>Дата</th>
                    <th>Номер</th>
                    <th>Кому направлено</th>
                    <th>Короткий зміст</th>
                    <th>К-ть аркушів</th>
                    <th>Відправник</th>
                    <th>Примітка</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($mails as $mail) {?>
                    <tr>
                        <td><?=$mail['date']?></td>
                        <td><?=$mail['ind']."/".$mail['id']?></td>
                        <td><?=$mail['to_list']?></td>
                        <td><?=$mail['description']?></td>
                        <td><?=$mail['count_list']?></td>
                        <td><?=User::getUserNameById($mail['name'])?></td>
                        <td><?=$mail['pr']?></td>
                    </tr>
                <?php }?>
                <tr></tr>
                <tr>

                </tr>
                </tbody>
            </table>
            <?php echo $pagination->get()?>

        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
