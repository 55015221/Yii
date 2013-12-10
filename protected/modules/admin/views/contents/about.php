<?php
$this->pageTitle = Yii::app()->name . ' - 简介管理';
$this->breadcrumbs = array(
    '内容管理' => array('contents/index'),
    '简介管理'
);
?>
<h2>简介管理
    <small class="navbar-right">
        <?php echo CHtml::link('<span class="glyphicon glyphicon-pencil"></span> 新增', $this->createUrl('add'), array('title' => '新增')); ?> 
    </small>
</h2>

<table class="table table-hover">
    <colgroup>
        <col>
        <col>
        <col>
        <col>
    </colgroup>
    <tbody>
        <tr>
            <th>ID</th>
            <th>标题</th>
            <th>所属栏目</th>
            <th>创建人</th>
            <th>创建时间</th>
            <th>查看次数</th>
            <th>操作</th>
        </tr>
        <?php foreach ($records as $item): ?>
            <tr>
                <td><?php echo $item['article_id']; ?></td>
                <td><?php echo $item['article_title']; ?></td>
                <td><?php echo $item['category_name']; ?></td>
                <td><?php echo $item['username']; ?></td>
                <td><?php echo $item['article_create_time']; ?></td>
                <td><?php echo $item['article_view']; ?></td>
                <td>
                    <?php echo CHtml::link('<span class="glyphicon glyphicon-edit"></span> 编辑', $this->createUrl('edit', array('id' => $item['article_id'])), array('title' => '编辑')); ?> 
                    | <?php echo CHtml::link('<span class="glyphicon glyphicon-trash"></span> 删除', $this->createUrl('delete', array('id' => $item['article_id'])), array('title' => '删除', 'onclick' => 'return confirm("确定要删除此项吗?");')); ?>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
