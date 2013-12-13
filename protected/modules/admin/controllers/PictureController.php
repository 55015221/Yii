<?php

class PictureController extends Controller {

    public function actionIndex() {

        $this->render('index');
    }

    public function filters() {
        return array(
            'accessControl -upload', // perform access control but for uploadAction
        );
    }

    /**
     * 文件上传
     * $pic_foreign_id => 外键id
     * $pic_module => 模块
     * $folder => 目录
     * return array 
     */
    public static function actionUpload($module ,$folder = 'images'){
        try {
            if(empty($module)){
                echo 'Error:undefined module';
                Yii::app()->end();
            }
            $fileData = CUploadedFile::getInstanceByName('Filedata');
            if (!$fileData || $fileData->getHasError()) {
                echo 'Error: Documento Invalido';
                Yii::app()->end();
            }

            $name = time() . '_' . mt_rand(10000, 99999) . '.' . pathinfo($fileData->name, PATHINFO_EXTENSION);
            $fileData->saveAs(Tool::generateFilePath() . '/' . $name);
            //插入数据库
            $filename = Tool::generateFilePath($folder, true) . '/' . $name;
            $pic = new Picture;          
            $pic->pic_alt = pathinfo($fileData->name, PATHINFO_BASENAME);
            $pic->pic_path = $filename;
            $pic->pic_module = $module;
            $pic->pic_foreign_id = 0;
            $pic->pic_create_time = date('Y-m-d H:i:s');
            $pic->save();
            echo json_encode(array(
                'id'=>$pic->attributes['pic_id'],
                'filename'=>$filename,
            ));
        } catch (Exception $e) {
            echo 'Error: ' . $e->getMessage();
        }
        Yii::app()->end();
    }

}

?>
