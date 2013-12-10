<?php
$this->pageTitle = Yii::app()->name . ' - 栏目编辑';
$this->breadcrumbs = array(
    '栏目配置' => array('category/index'),
    '栏目编辑'
);
?>
<h2>栏目编辑</h2>

<?php //$this->widget('admin.widgets.CategoryListWidget', array('selected' => $model->category_id)); ?>

<?php
$form = $this->beginWidget('CActiveForm', array(
    'id' => 'form',
    'htmlOptions' => array('class' => 'form-horizontal', 'role' => 'form'),
        ));
?>
<?php echo $form->hiddenField($model, 'category_id', array('class' => 'form-control', 'value' => $model->category_id)); ?>
<div class="form-group">
    <?php echo $form->labelEx($model, 'category_name', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php echo $form->textField($model, 'category_name', array('class' => 'form-control', 'value' => $model->category_name)); ?>
    </div>
</div>
<div class="form-group">
    <?php echo $form->labelEx($model, 'category_is_nav', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php echo $form->radioButtonList($model, 'category_is_nav', array(0 => '否', 1 => '是'), array('class' => '','separator'=>'&nbsp;&nbsp;&nbsp;', 'value' => $model->category_is_nav)); ?>
    </div>
</div>
<div class="form-group">
    <?php echo $form->labelEx($model, 'category_url', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php echo CHtml::encode($model->category_url, array('class' => 'form-control', 'value' => $model->category_url)); ?>
    </div>
</div>
<div class="form-group">
    <?php echo $form->labelEx($model, 'category_order', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php echo $form->textField($model, 'category_order', array('class' => 'form-control', 'value' => $model->category_order)); ?>
    </div>
</div>

<div class="form-group">
    <label class="col-sm-2 control-label">&nbsp;</label>   
    <div class="col-sm-10">
        <?php echo CHtml::submitButton('保存', array('name' => 'submit', 'class' => 'btn btn-default btn-sm')); ?>
        <?php echo CHtml::button('取消', array('class' => 'btn btn-default btn-sm', 'onclick' => 'window.history.back()')); ?>
    </div>
</div>
<?php $this->endWidget(); ?>

<script type="text/javascript">
</script>