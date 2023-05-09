<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h4><?=$page['title']?></h4>
        </div>
        <div class="panel-body">
            <div class="margin_bottom_10">
                <a class="btn btn-success btn-md" href="/vydatki/kost/add" role="button">Зареєструвати кошторис</a>
            </div>
            <table class="table table-hover table-head-panel mail" style="text-align:center">
                <thead class="align-center">
                    <tr>
                        <th>№ вх.</th>
                        <th>Дата отримання</th>
                        <th>Від кого надійшов документ</th>
                        <th>Номер документа</th>
                        <th>Дата документа</th>
                        <th>Короткий зміст</th>
                        <th>Вказівки на орацюванння</th>
                        <th>Кому передано для опрацювання</th>
                    </tr>
                </thead>
                <tbody>
                <?php foreach ($kost as $item) {?>
                    <td><?=$item['id']?></td>
                    <td><?=$item['date_to']?></td>
                    <td><?=$item['to_mail']?></td>
                    <td><?=$item['number']?></td>
                    <td><?=$item['date_mail']?></td>
                    <td><?=$item['description']?></td>
                    <td><?=$item['work_mail']?></td>
                    <td><?=User::getUserNameById($item['work_to'])?></td>
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
