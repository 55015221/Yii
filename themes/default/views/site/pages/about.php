<?php
$record = Article::model()
        ->with('category')
        ->find('category.category_url=?', array(Yii::app()->request->url));
?>
<div class="row">
    <div class="col-sm-3">
        <div class="ds-sidebar">
            <?php $this->widget('ext.navigation.SidebarWidget'); ?>
        </div>
    </div>
    <div class="col-sm-9">
        <div class="page-header">
            <h2><?php echo $record->category->category_name; ?></h2>
        </div>
        <?php echo $record->article_content; ?>
    </div>
</div>
