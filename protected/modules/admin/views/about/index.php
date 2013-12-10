<div class="page-header">
    <h2>
        <small class="navbar-right">
            <?php echo CHtml::link('<span class="glyphicon glyphicon-pencil"></span> 新增', $this->createUrl('create'), array('title' => '新增')); ?> 
        </small>
    </h2>
</div>
<table class="table table-hover">
    <colgroup>
        <col>
        <col>
        <col>
        <col>
    </colgroup>
    <thead>
        <tr>
            <th>ID</th>
            <th>标题</th>
            <th>所属栏目</th>
            <th>创建人</th>
            <th>创建时间</th>
            <th>查看次数</th>
            <th>操作</th>
        </tr>
    </thead>
        <?php
        $this->widget('zii.widgets.CListView', array(
            'dataProvider' => $records, //数据
            'itemView' => '_view', //显示的模版
            'id' => Yii::app()->controller->id,
            'itemsTagName' => 'tbody',
            'ajaxVar' => '', //默认为page或ajax 去掉后url更简洁
            'htmlOptions' => array('class' => Yii::app()->controller->id),
            'loadingCssClass' => 'loading', //默认为list-view-loading
            //'template' => '{summary}{sorter}{items}{pager}',//显示的顺序
            //'ajaxUpdate' => false, //是否ajax分页  false或分页显示的容器id
            //'beforeAjaxUpdate' => 'before_ajax_update',   //回调函数 在common.js里完成
            //'afterAjaxUpdate' => 'after_ajax_update',  
            'emptyText' => '<div class="alert alert-waning">暂无数据！</div>', //无数据时显示内容
            'pagerCssClass' => '', //分页的class
            'pager' => array(
                'selectedPageCssClass' => 'active', //当前页的class
                'hiddenPageCssClass' => 'disabled', //禁用页的class
                'header' => '', //分页前显示的内容
                'maxButtonCount' => 10, //显示分页数量
                'htmlOptions' => array('class' => 'pagination'),
                'firstPageLabel' => '首页',
                'nextPageLabel' => '下一页',
                'prevPageLabel' => '上一页',
                'lastPageLabel' => '末页',
            ),
        ));
        ?>
</table>