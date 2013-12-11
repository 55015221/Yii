<?php
define('DB_HOST',$_SERVER['HTTP_MYSQLPORT'].'.mysql.sae.sina.com.cn:'.$_SERVER['HTTP_MYSQLPORT']);
//db配置文件
return array(
    //'connectionString' => 'sqlite:' . dirname(__FILE__) . '/../data/cms.db',
    'connectionString' => 'mysql:host=DB_HOST;dbname=app_honoer', //数据库DNS
    // 'connectionString' => 'mysql:host=localhost;dbname=yii', //数据库DNS
    'username' => 'root', //数据库用户
    'password' => '', //数据库密码
    'schemaCachingDuration' => 3306, //端口
    'charset' => 'utf8', //字符集
    'tablePrefix' => 'yii_', //表前缀
    'enableParamLogging' => true, //显示带参数的SQL
);
?>
