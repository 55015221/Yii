<?php

class ProductController extends Controller {

    private $_model;

    public function actionIndex() {
        $records = Product::model()->getProductList();
        $this->render('index',array(
          'records' => $records,
          ));
    }

    public function actionEdit($id) {
        $model = $this->loadModel($id);

        if (isset($_POST['Product'])) {
            $model->attributes = $_POST['Product'];
            if ($model->save())
                $this->redirect(array('index'));
            throw new CHttpException(500, $model->errors);
        }

        $this->render('edit', array(
            'model' => $model,
            ));
    }

    public function actionCreate() {
        $model=new Product;
        if(isset($_POST['Product'])){
            $model->attributes=$_POST['Product'];
            if($model->save())
                $this->redirect(array('index'));
        }

        $this->render('create',array(
            'model'=>$model,
            ));
    }

    public function loadModel($id) {
        if (empty($id))
            $id = $_GET['id'];
        if ($this->_model === null) {
            if (isset($id)) {
                $condition = null;
                $this->_model = Product::model()
                ->with(array('category', 'categories', 'user','picture'))
                ->findByPk($id, $condition);
            }
            if ($this->_model === null)
                throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }
}

?>
