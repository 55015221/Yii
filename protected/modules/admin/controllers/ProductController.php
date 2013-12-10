<?php

class ProductController extends Controller {

    public function actionIndex() {
        
        $this->render('index');
    }

    public function actionEdit() {
        $this->render('edit');
    }

    public function actionCreate() {
        $this->render('cteate');
    }

}

?>
