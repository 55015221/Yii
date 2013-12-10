<?php
$this->pageTitle = Yii::app()->name . ' - 管理首页';
$this->breadcrumbs = array(
    '内容管理' => array('contents/index'),
    '管理首页'
);
?>
<h2>管理首页</h2>
<?php
$this->widget('admin.widgets.MenuWidget', array(
    'child' => 'contents',
));
?>

<script>
    $(function() {
        $('.wrap >.row >.col-sm-2').hide();
        $('.wrap >.row div:last-child').attr('class', 'col-sm-12');
    });
</script>