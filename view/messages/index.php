<?php include_once "/view/layouts/header.php"?>
<?php include_once "/view/layouts/left_nav.php"?>
<div class="col-xs-12 col-sm-10">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">Мої повідомлення</h3>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-xs-3">
                    <ul class="left_nav-list">
                        <li class="left_nav-item">
                            <div class="left_nav-trigger-mess">Останні контакти</div>
                            <ul class="left_nav_inner" style="display: block">
                                <?php
                                $_SESSION['mess'] = 0;
                                foreach ($dialogs as $dialog) {
                                    if($dialog['user_1'] === $user_info['id']) {
                                            ?>
                                            <li class="left_nav_inner-item">
                                                <a href="" data-dialog="<?=$dialog['id']?>" class="left_nav_inner-link left_nav_inner-link_message dialog-button">
                                                    <?= User::getUserNameById($dialog['user_2']); if(Messages::countMessage($dialog['id'], $user_info['id'])) { ?>
                                                    <span class="badge"><?=$res = Messages::countMessage($dialog['id'], $user_info['id']);$_SESSION['mess'] += $res;}?></span>
                                                </a>
                                            </li>
                                            <?php
                                    }elseif($dialog['user_2'] === $user_info['id']) {
                                            ?>
                                            <li class="left_nav_inner-item">
                                                <a href="" data-dialog="<?=$dialog['id']?>" class="left_nav_inner-link left_nav_inner-link_message dialog-button dialog-button-<?=$dialog['id']?>">
                                                    <?= User::getUserNameById($dialog['user_1']); if(Messages::countMessage($dialog['id'], $user_info['id'])) {?>
                                                    <span class="badge"><?=$res = Messages::countMessage($dialog['id'], $user_info['id']);$_SESSION['mess'] += $res; }?></span>
                                                </a>
                                            </li>
                                            <?php
                                        }
                                    }
                                ?>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="col-xs-9 left-border dialog-panel">
                    <div class="preloader-list">
                        <i class="fa fa-refresh fa-spin"></i>
                    </div>
                    <div class="message-list">
                        <div class="bs-callout bs-callout-info">
                            <h4>Ви не вибрали діалог</h4>
                            <p>Будь ласка, виберіть діалог для початку спілкування</p>
                        </div>
                    </div>
                    <div class="message-add">
                        <textarea id="message" cols="30" rows="10" required></textarea>
                        <br>
                        <a id="send-message" data-dialog="1" class="btn btn-success">Надіслати</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</div>
</div>

<?php include_once "/view/layouts/footer.php"?>
