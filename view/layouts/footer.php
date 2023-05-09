
<!-- jQuery (потрібно для JavaScript плагінів Bootstrap) -->
<!--script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!-- Підключення мінімізованої збірки всіх плагінів jQuery. Можна підключати додаткові плагіни, якщо потрібно -->
<script src="/template/js/jquery.js"></script>
<?php
    if (isset($user_info)) {
?>
        <script src="/template/js/ajax.js"></script>
<?php
    }
?>

<script src="/template/js/bootstrap.min.js"></script>
<script src="/template/js/main.js"></script>
</body>
</html>
