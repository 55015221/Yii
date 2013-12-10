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
<?php echo $form->hiddenField($articleModel, 'article_id', array('value' => $data['article_id'])); ?>
<div class="form-group">
    <?php echo $form->labelEx($articleModel, 'article_title', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php echo $form->textField($articleModel, 'article_title', array('class' => 'form-control', 'value' => $data['article_title'])); ?>
    </div>
</div>

<div class="form-group">
    <?php echo $form->labelEx($categoryModel, 'category_name', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php $this->widget('admin.widgets.CategoryListWidget', array('selected' => $data['category_id'])); ?>
    </div>
</div>

<div class="form-group">
    <?php echo $form->labelEx($articleModel, 'article_keywords', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php echo $form->textField($articleModel, 'article_keywords', array('class' => 'form-control', 'value' => $data['article_keywords'])); ?>
    </div>
</div>

<div class="form-group">
    <?php echo $form->labelEx($articleModel, 'article_description', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php echo $form->textArea($articleModel, 'article_description', array('class' => 'form-control', 'value' => $data['article_description'])); ?>
    </div>
</div>

<div class="form-group">
    <?php echo $form->labelEx($articleModel, 'article_content', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php Tool::kindeditor('article_content'); ?>
        <?php echo $form->textArea($articleModel, 'article_content', array('id' => 'article_content', 'class' => 'form-control', 'value' => $data['article_content'])); ?>
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