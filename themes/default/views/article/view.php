<div class="row">
    <div class="col-sm-3">
        <!--<div class="ds-sidebar hidden-print affix">-->
        <div class="ds-sidebar">
            <?php $this->widget('ext.navigation.SidebarWidget'); ?>
        </div>
    </div>
    <div class="col-sm-9">
        <?php //$this->widget('ext.breadcrumbs.BreadcrumbsWidget'); ?>
        <div class="page-header">
            <h4><?php echo $data['article_title']; ?></h4>
        </div>
        <?php echo $data['article_content']; ?>
    </div>
</div>
