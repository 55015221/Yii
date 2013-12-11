<?php

if (isset($_POST['PHPSESSID'])) {
    //$_COOKIE['PHPSESSID'] = $_POST['PHPSESSID'];
}
// change the following paths if necessary
$yii = dirname(__FILE__) . '/vendor/framework/yii.php';
$config = dirname(__FILE__) . '/protected/config/main.php';

// remove the following line when in production mode
defined('YII_DEBUG') or define('YII_DEBUG', true);
defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL', 3);
require_once($yii);
Yii::createWebApplication($config)->run();
