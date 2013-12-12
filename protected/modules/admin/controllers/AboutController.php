<?php

class AboutController extends Controller {

    public $_module = 'about';
    private $_model;

    public function actionIndex() {
        $records = Article::model()->getArticleByModule($this->_module);
        $this->render('index', array(
            'records' => $records,
        ));
    }

    public function actionCreate() {
        $model = new Article;
        if (isset($_POST['Article'])) {
            $model->attributes = $_POST['Article'];
            if ($model->save())
                $this->redirect(array('index'));
            throw new CHttpException(500, $model->errors);
        }

        $this->render('create', array(
            'model' => $model,
        ));
    }

    public function actionEdit($id) {
        $model = $this->loadModel($id);

        if (isset($_POST['Article'])) {
            $model->attributes = $_POST['Article'];
            if ($model->save())
                $this->redirect(array('index'));
            throw new CHttpException(500, $model->errors);
        }

        $this->render('edit', array(
            'model' => $model,
        ));
    }

    public function actionDelete($id) {

        $model = $this->loadModel($id);
        throw new CHttpException(404, '系统暂不支持删除操作！');
        return false;
    }

    public function loadModel($id) {
        if (empty($id))
            $id = $_GET['id'];
        if ($this->_model === null) {
            if (isset($id)) {
                $condition = null;
                $this->_model = Article::model()
                        ->with(array('category', 'categories', 'user'))
                        ->findByPk($id, $condition);
            }
            if ($this->_model === null)
                throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }

}

?>
