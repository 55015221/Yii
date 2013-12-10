<?php
$this->pageTitle = Yii::app()->name . ' - 栏目列表';
$this->breadcrumbs = array(
    '栏目配置' => array('category/index'),
    '栏目列表'
);
?>
<h2>栏目列表
    <small class="navbar-right">
        <?php echo CHtml::link('<span class="glyphicon glyphicon-pencil"></span> 新增', $this->createUrl('add'), array('title' => '新增')); ?> 
    </small>
</h2>

<?php //$this->widget('admin.widgets.CategoryListWidget', array('selected' => '')); ?>

<table class="table table-hover">
    <colgroup>
        <col width="20">
        <col>
        <col>
        <col>
        <col>
        <col>
    </colgroup>
    <tbody>
        <tr>
            <th>&nbsp;</th>
            <th>名称</th>
            <th>头部导航</th>
            <th>path</th>
            <th>排序</th>
            <th>操作</th>
        </tr>
        <?php foreach ($list as $val): ?>
            <?php $spaces = str_repeat('&nbsp;&nbsp;&nbsp;', 2 * substr_count($val->category_path, '-')); ?>
            <tr class="<?php echo (Category::model()->isParent($val->category_id)) ? 'item-parent' : 'item-child'; ?>" 
                data='{"id":"<?php echo $val->category_id; ?>","pid":"<?php echo $val->category_pid; ?>"}' 
                <?php echo (0 != $val->category_pid) ? '"' : ''; ?>
                >
                <td><?php echo (Category::model()->isParent($val->category_id)) ? '<span class="toggle-show">+</span>' : '&nbsp;'; ?></td>
                <td><?php echo $spaces, CHtml::link($val->category_name, Yii::app()->createAbsoluteUrl($val->category_url), array('title' => Yii::app()->createAbsoluteUrl($val->category_url), 'target' => '_blank')); ?></td>
                <td><?php echo $val->category_is_nav ? '<span class="green">是</span>' : '否'; ?></td>
                <td><?php echo $val->category_path . '-' . $val->category_id; ?></td>
                <td><?php echo $val->category_order; ?></td>
                <td>
                    <?php echo CHtml::link('<span class="glyphicon glyphicon-edit"></span> 编辑', $this->createUrl('edit', array('id' => $val->category_id)), array('title' => '编辑')); ?> 
                    <?php if ('index/index' !== $val->category_url): ?>
                        | <?php echo CHtml::link('<span class="glyphicon glyphicon-trash"></span> 删除', $this->createUrl('delete', array('id' => $val->category_id)), array('title' => '删除', 'onclick' => 'return confirm("确定要删除此栏目吗?");')); ?>
                    <?php endif; ?>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>

<script type="text/javascript">
    $(function() {
        $("table tr").each(function() {
            var row = $(this);
            $(".item-parent").find("td:first").on('click', function() {
                var parent = $.parseJSON($(this).parent("tr").attr('data'));
                if (typeof(row.attr('data')) !== 'undefined') {
                    var child = $.parseJSON(row.attr('data'));
                    if (child.pid === parent.id) {
                        row.is(":hidden") ? row.show() : row.hide();
                    }
                }
            });
        });
    });
</script>