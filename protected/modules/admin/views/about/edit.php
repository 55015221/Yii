<?php
$this->pageTitle = Yii::app()->name . ' - 简介编辑';
$this->breadcrumbs = array(
    '简介管理' => array('about/index'),
    $model->category->category_name,
);
?>

<?php
$form = $this->beginWidget('CActiveForm', array(
    'id' => 'form',
    'htmlOptions' => array('class' => 'form-horizontal', 'role' => 'form'),
        ));
?>
<?php echo $form->hiddenField($model, 'article_id', array('value' => $model->article_id)); ?>
<div class="form-group">
    <?php echo $form->labelEx($model, 'article_title', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php echo $form->textField($model, 'article_title', array('class' => 'form-control', 'value' => $model->article_title)); ?>
    </div>
</div>

<div class="form-group">
    <?php echo $form->labelEx($model, 'article_keywords', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php echo $form->textField($model, 'article_keywords', array('class' => 'form-control', 'value' => $model->article_keywords)); ?>
    </div>
</div>

<div class="form-group">
    <?php echo $form->labelEx($model, 'article_description', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php echo $form->textArea($model, 'article_description', array('class' => 'form-control', 'value' => $model->article_description)); ?>
    </div>
</div>

<div class="form-group">
    <?php echo $form->labelEx($model, 'article_content', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php Tool::kindeditor('article_content'); ?>
        <?php echo $form->textArea($model, 'article_content', array('id' => 'article_content', 'class' => 'form-control', 'value' => $model->article_content)); ?>
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