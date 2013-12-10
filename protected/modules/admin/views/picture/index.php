<?php
$this->widget('application.extensions.swfupload.CSwfUpload', array(
    'postParams' => array(),
    'config' => array(
        'use_query_string' => false,
        'upload_url' => $this->createUrl('picture/upload'), //Use $this->createUrl method or define yourself
        'file_size_limit' => '60 MB',
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

<?php echo CHtml::beginForm(); ?>
<div class="form">
    <div class="row">
        <div id="divFileProgressContainer"></div>
        <div class="swfupload"><span id="swfupload"></span></div>
    </div>
</div>
<?php echo CHtml::endForm(); ?>