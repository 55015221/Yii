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

    public function actionUpload() {
        try {
            $picture_file = CUploadedFile::getInstanceByName('Filedata');
            
            if (!$picture_file || $picture_file->getHasError()) {
                echo 'Error: Documento Invalido';
                Yii::app()->end();
            }
            $picture_name = time() . '_' . mt_rand(10000, 99999) . '.' . pathinfo($picture_file->name, PATHINFO_EXTENSION);
            $picture_file->saveAs(Tool::generateFilePath() . '/' . $picture_name);
            
            echo Tool::generateFilePath('images', true) . '/' . $picture_name;
        } catch (Exception $e) {
            echo 'Error: ' . $e->getMessage();
        }
        Yii::app()->end();
    }

}

?>
