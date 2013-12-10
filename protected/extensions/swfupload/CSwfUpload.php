<?php

class CSwfUpload extends CWidget {

    public $jsHandlerUrl;
    public $postParams = array();
    public $config = array();

    public function run() {
        $assets = dirname(__FILE__) . '/assets';
        $baseUrl = Yii::app()->assetManager->publish($assets);
        Yii::app()->clientScript->registerScriptFile($baseUrl . '/swfupload.js', CClientScript::POS_HEAD);
        Yii::app()->clientScript->registerScriptFile($baseUrl . '/handlers.js', CClientScript::POS_HEAD);
        Yii::app()->clientScript->registerCssFile($baseUrl . '/default.css');
        $postParams = array('PHPSESSID' => session_id());
        if (isset($this->postParams)) {
            $postParams = array_merge($postParams, $this->postParams);
        }
        $config = array('post_params' => $postParams, 'flash_url' => $baseUrl . '/swfupload.swf');
        $config = array_merge($config, $this->config);
        $config = CJavaScript::encode($config);
        Yii::app()->getClientScript()->registerScript(__CLASS__, "
		var swfu;
			swfu = new SWFUpload($config);
		");
    }

}