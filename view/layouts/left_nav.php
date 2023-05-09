<div class="row margin_top_20">
    <div class="col-xs-12 col-sm-2">
        <ul class="left_nav-list">
            <?php
                if($user_info['admin'] == 3 /*|| $user_info['buh'] == 1 || $user_info['vid'] == 1 || $user_info['boss'] == 1*/) {
            ?>
            <li class="left_nav-item">
                <a href="#" id="nav_1" class="left_nav-trigger active ">Основне меню</a>
                <ul class="left_nav_inner">
                    <li class="left_nav_inner-item">
                        <a href="/" class="left_nav_inner-link">Головна</a>
                    </li>
                    <li class="left_nav_inner-item">
                        <a href="#" class="left_nav_inner-link">Пункт меню 2</a>
                    </li>
                    <li class="left_nav_inner-item">
                        <a href="#" class="left_nav_inner-link">Пункт меню 3</a>
                    </li>
                    <li class="left_nav_inner-item">
                        <a href="#" class="left_nav_inner-link">Пункт меню 4</a>
                    </li>
                    <li class="left_nav_inner-item">
                        <a href="#" class="left_nav_inner-link">Пункт меню 5</a>
                    </li>
                </ul>
            </li>
                <?php }?>
            <?php
            if($user_info['admin'] == 1 /*$user_info['buh'] == 1 || $user_info['vid'] == 1  || $user_info['boss'] == 1*/) {
                ?>
                <li class="left_nav-item">
                    <a href="#" class="left_nav-trigger">Відділ видатків</a>
                    <ul class="left_nav_inner">
                        <li class="left_nav_inner-item">
                            <a href="/vydatki/kost" class="left_nav_inner-link">Кошториси</a>
                        </li>
                        <li class="left_nav_inner-item">
                            <a href="/vydatki/rozp" class="left_nav_inner-link">Розоділи</a>
                        </li>
                    </ul>
                </li>
            <?php }?>
            <?php
                if($user_info['admin'] == 1 || $user_info['buh'] == 1 || $user_info['vid'] == 1 || $user_info['boss'] == 1) {
            ?>
            <li class="left_nav-item">
                <a href="#" class="left_nav-trigger">Поштова система</a>
            <ul class="left_nav_inner">
                <li class="left_nav_inner-item">
                    <a href="/mail/out" class="left_nav_inner-link">Журнал вихідної</a>
                </li>
                <!--<li class="left_nav_inner-item">
                    <a href="/mail/dksu" class="left_nav_inner-link">Журнал вхідної - ГУДКСУ</a>
                </li>-->
            <?php
                if($user_info['admin'] == 1) {
            ?>
                <li class="left_nav_inner-item">
                    <a href="/mail/org" class="left_nav_inner-link">Журнал вхідної - Інші</a>
                </li>
            </ul>
            </li>
            <?php }?>
            <?php }?>
            <?php
                if($user_info['admin'] == 1 /*|| $user_info['buh'] == 1 || $user_info['vid'] == 1 || $user_info['boss'] == 1*/) {
            ?>
            <li class="left_nav-item">
                <a href="#" id="nav_2" class="left_nav-trigger">Відділ ІТ</a>
                <ul class="left_nav_inner">
                    <li class="left_nav_inner-item">
                        <a href="/klients" class="left_nav_inner-link">Розпорядники</a>
                    </li>
                    <li class="left_nav_inner-item">
                        <a href="/computers" class="left_nav_inner-link">Облік комп'ютерів</a>
                    </li>
                    <li class="left_nav_inner-item">
                        <a href="/registration" class="left_nav_inner-link">Реєстрація користувача</a>
                    </li>
                </ul>
            </li>
                <?php }?>
        </ul>
    </div>