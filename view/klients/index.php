<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h4><?=$page['title']?></h4>
        </div>
        <div class="panel-body">
            <table class="table table-hover table-head-panel klients-table">
                <thead>
                <tr>
                    <th>КРК</th>
                    <th>Коротка назва</th>
                    <th>ЄДРПОУ</th>
                    <th>Керівник</th>
                    <th>Головний бухгалтер</th>    
                    <th>Телефон 1</th>
                    <th>Телефон 2</th>
                </tr>
                </thead>
                <tbody>
                    <?php foreach ($klients as $klient) {?>
                            <tr onclick="window.location.href='/klients/<?=$klient['id']?>'; return false;">
                                <td><?=$klient['krk']?></td>
                                <td><?=$klient['name_s']?></td>
                                <td><?=$klient['edrpou']?></td>
                                <td><?=$klient['ker']?></td>
                                <td><?=$klient['buh']?></td>
                                <td><?=$klient['tel_1']?></td>
                                <td><?=$klient['tel_2']?></td>
                            </tr>
                        </a>
                    <?php }?>
                </tbody>
            </table>
            <a class="btn btn-success btn-md" href="/klients/add" role="button">Додати установу</a>
        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
