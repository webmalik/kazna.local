<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h4><?=$page['title']?></h4>
        </div>
        <div class="panel-body">
            <?php
            //Захистить права адміна
            if($user_info['admin'] == 1) {
            ?>
            <div class="margin_bottom_10">
                <a class="btn btn-success btn-md" href="/mail/dksu/add" role="button">Зареєструвати лист</a>
            </div>
            <?php }?>
            <table class="table table-hover table-head-panel mail" style="text-align:center">
                <thead class="align-center">
                    <tr>
                        <th>№ вх.</th>
                        <th>Дата</th>
                        <th>Від кого надійшов документ</th>
                        <th>Номер документа</th>
                        <th>Дата документа</th>
                        <th>Короткий зміст</th>
                        <th>Вказівки на орацюванння</th>
                        <th>Кому передано для опрацювання</th>
                    </tr>
                </thead>
                <tbody>
                <?php foreach ($mails as $mail) {?>
                    <td><?=$mail['id']?></td>
                    <td><?=$mail['date_to']?></td>
                    <td><?php
                        if($mail['to_mail'] == 0) echo "ГУДКСУ"; elseif($mail['to_mail'] == 1) echo "ДКСУ"?></td>
                    <td><?=$mail['number']?></td>
                    <td><?=$mail['date_mail']?></td>
                    <td><?=$mail['description']?></td>
                    <td><?=$mail['work_mail']?></td>
                    <td><?=User::getUserNameById($mail['work_to'])?></td>
                    </tr>
                <?php }?>
                </tbody>
            </table>
            <?php echo $pagination->get()?>

        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
