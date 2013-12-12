<?php
$this->pageTitle = Yii::app()->name . ' - 栏目编辑';
$this->breadcrumbs = array(
    '栏目配置' => array('category/index'),
    '栏目编辑'
);
?>
<h2>栏目编辑</h2>


<?php
$form = $this->beginWidget('CActiveForm', array(
    'id' => 'form',
    'htmlOptions' => array('class' => 'form-horizontal', 'role' => 'form'),
        ));
?>
<?php echo $form->hiddenField($model, 'product_id', array('value' => $model->product_id)); ?>
<div class="form-group">
    <?php echo $form->labelEx($model, 'product_name', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php echo $form->textField($model, 'product_name', array('class' => 'form-control', 'value' => $model->product_name)); ?>
    </div>
</div>

<div class="form-group">
    <?php echo $form->labelEx($model, 'category_name', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php $this->widget('admin.widgets.CategoryListWidget', array('selected' => $model->category->category_id)); ?>
    </div>
</div>

<div class="form-group">
    <?php echo $form->labelEx($model, 'product_keys', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php echo $form->textField($model, 'product_keys', array('class' => 'form-control', 'value' => $model->product_keys)); ?>
    </div>
</div>

<div class="form-group">
    <?php echo $form->labelEx($model, 'product_introduce', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php echo $form->textArea($model, 'product_introduce', array('class' => 'form-control', 'value' => $model->product_introduce)); ?>
    </div>
</div>

<div class="form-group">
    <?php echo $form->labelEx($model, 'product_content', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php Tool::kindeditor('product_content'); ?>
        <?php echo $form->textArea($model, 'product_content', array('id' => 'product_content', 'class' => 'form-control', 'value' => $model->product_content)); ?>
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