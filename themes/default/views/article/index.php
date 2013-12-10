<div class="row">
    <div class="col-sm-3">
        <!--<div class="ds-sidebar hidden-print affix">-->
        <div class="ds-sidebar">
            <?php $this->widget('ext.navigation.SidebarWidget'); ?>
        </div>
    </div>
    <div class="col-sm-9">
        <table class="table table-hover">
            <?php foreach ($list as $key => $item): ?>
                <tr>
                    <td>
                        <?php $page = intval(Yii::app()->request->getParam('page'))? : 1; ?>
                        <?php echo (Yii::app()->params['pagesize'] * ($page - 1)) + $key + 1; ?>
                    </td>
                    <td>
                        <span style="float:right;"><?php echo $item['article_create_time']; ?></span>
                        <?php echo CHtml::link($item['article_title'], array('view', 'id' => $item['article_id']), array('title' => $item['article_title'])); ?>
                    </td>
                </tr>
            <?php endforeach; ?>
        </table>

        <?php
        $this->widget('CLinkPager', array(
            //'footer' => '<form style="float:right;margin-right:10px;" action=""><span>转跳：</span><input class="span2" type="text" name="page" value=""><input style="margin:0 0 5px 3px;" class="btn" type="submit" value="跳"></form>',
            'id' => 'pagination',
            'pages' => $pages,
            'selectedPageCssClass' => 'active', //当前页的class
            'hiddenPageCssClass' => 'disabled', //禁用页的class
            'header' => '', //分页前显示的内容
            'maxButtonCount' => 10, //显示分页数量
            'htmlOptions' => array('class' => 'pagination'),
            'firstPageLabel' => '首页',
            'nextPageLabel' => '下一页',
            'prevPageLabel' => '上一页',
            'lastPageLabel' => '末页',
        ));
        ?>
    </div>
</div>