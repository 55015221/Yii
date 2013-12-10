<div class="row">
    <div class="col-md-3">
        <!--<div class="ds-sidebar hidden-print affix">-->
        <div class="ds-sidebar">
            <?php $this->widget('ext.navigation.SidebarWidget'); ?>
        </div>
    </div>
    <div class="col-md-9">
        <?php //$this->widget('ext.breadcrumbs.BreadcrumbsWidget'); ?>
        <?php echo $content; ?>
    </div>
</div>