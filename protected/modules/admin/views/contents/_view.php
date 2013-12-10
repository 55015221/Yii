
<tr>
    <td><?php echo $data->article_id; ?></td>
    <td><?php echo $data->article_title; ?></td>
    <td><?php echo $data->category->category_name; ?></td>
    <td><?php echo $data->user->username; ?></td>
    <td><?php echo $data->article_create_time; ?></td>
    <td><?php echo $data->article_view; ?></td>
    <td>
        <?php echo CHtml::link('<span class="glyphicon glyphicon-edit"></span> 编辑', $this->createUrl('edit', array('id' => $data->article_id)), array('title' => '编辑')); ?> 
        | <?php echo CHtml::link('<span class="glyphicon glyphicon-trash"></span> 删除', $this->createUrl('delete', array('id' => $data->article_id)), array('title' => '删除', 'onclick' => 'return confirm("确定要删除此项吗?");')); ?>
    </td>
</tr>