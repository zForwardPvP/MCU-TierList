<?php

    $connect = mysqli_connect('localhost', 'root', '', 'MCU');

    if (!$connect) {
        die('Ошибка подключения к Базе Данных!');
    }