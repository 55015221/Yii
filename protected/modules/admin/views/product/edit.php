<?php
$this->pageTitle = Yii::app()->name . ' - 产品编辑';
$this->breadcrumbs = array(
    '产品管理' => array('category/index'),
    '产品编辑'
);
?>

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
        <?php $this->widget('admin.widgets.CategoryListWidget', array('module'=>'product','selected' => $model->category->category_id)); ?>
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
    <?php echo $form->labelEx($model, 'product_picture', array('class' => 'col-md-2 control-label')); ?>
    <div class="col-sm-10">
        <?php //echo $form->file($model, 'product_picture', array('class' => 'form-control', 'value' => $model->product_picture)); ?>
            <!-- <div id="divFileProgressContainer"></div> -->
            <div class="swfupload"><span id="swfupload"></span></div>
        <div id="thumbnails">
            <?php if(!empty($model->picture)):?>
                <?php foreach($model->picture as $picture):?>
                    <img width="100" height="80" src="<?php echo $picture->pic_path;?>" alt="<?php echo $picture->pic_alt;?>">
                <?php endforeach;?>
            <?php endif;?>
        </div>
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

<?php
$this->widget('application.extensions.swfupload.CSwfUpload', array(
    'postParams' => array(),
    'config' => array(
        'use_query_string' => false,
        'upload_url' => $this->createUrl('picture/upload'), //Use $this->createUrl method or define yourself
        'file_size_limit' => '2 MB',
        'file_types' => '*.jpg;*.png;*.gif',
        'file_types_description' => 'Image Files',
        'file_upload_limit' => 0,
        'file_queue_error_handler' => 'js:fileQueueError',
        'file_dialog_complete_handler' => 'js:fileDialogComplete',
        'upload_progress_handler' => 'js:uploadProgress',
        'upload_error_handler' => 'js:uploadError',
        'upload_success_handler' => 'js:uploadSuccess',
        'upload_complete_handler' => 'js:uploadComplete',
        'custom_settings' => array('upload_target' => 'divFileProgressContainer'),
        'button_placeholder_id' => 'swfupload',
        'button_width' => 178,
        'button_height' => 20,
        'button_text' => '<span>上传 (Max 2 MB)</span>',
        'button_window_mode' => 'js:SWFUpload.WINDOW_MODE.TRANSPARENT',
        'button_cursor' => 'js:SWFUpload.CURSOR.HAND',
        'debug' => true,
    ),
        )
);
?>