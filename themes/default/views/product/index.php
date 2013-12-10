<div class="row">
    <div class="col-sm-3">
        <!--<div class="ds-sidebar hidden-print affix">-->
        <div class="ds-sidebar">
            <?php $this->widget('ext.navigation.SidebarWidget'); ?>
        </div>
    </div>
    <div class="col-sm-9">
        <?php //$this->widget('ext.breadcrumbs.BreadcrumbsWidget'); ?>
        <?php foreach ($list as $item): ?>
            <div class="col-xs-6 col-md-4">
                <a class="thumbnail" href="<?php echo Yii::app()->createUrl('product/view', array('id' => $item['product_id'])); ?>">
                    <img style="height:150px;" alt="" src="<?php echo Yii::app()->baseUrl . '/' . $item['product_picture']; ?>">
                </a>
                <h5><a href="<?php echo Yii::app()->createUrl('product/view', array('id' => $item['product_id'])); ?>"><?php echo $item['product_name']; ?></a></h5>
                <p><?php echo $item['product_create_time']; ?></p>
            </div>
        <?php endforeach; ?>
    </div>
</div>