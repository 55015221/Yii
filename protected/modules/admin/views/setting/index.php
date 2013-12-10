<?php
$this->pageTitle = Yii::app()->name . ' - 系统信息';
$this->breadcrumbs = array(
    '系统设置' => array('setting/index'),
    '系统信息'
);
?>
<h2>系统信息</h2>
<?php
$this->widget('admin.widgets.ServicesWidget', array(
    'htmlOptions' => array('class' => 'table-hover')
));
?>