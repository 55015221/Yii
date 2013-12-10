<?php

class ContentsController extends Controller {

    public $_model = null;

    public function actionIndex() {

        $this->render('index', array(
                //'config'=>$config,
        ));
    }

    public function actionAbout() {
        $this->pageTitle = Yii::app()->name . ' - 简介管理';
        $this->breadcrumbs = array(
            '内容管理' => array('contents/index'),
            '简介管理'
        );

        $records = Article::model()->getArticleByModule('about');
        $this->render('list', array(
            'records' => $records,
        ));
    }

    public function actionArticle() {
        $this->pageTitle = Yii::app()->name . ' - 文章管理';
        $this->breadcrumbs = array(
            '内容管理' => array('contents/index'),
            '文章管理'
        );

        $records = Article::model()->getArticleByModule('article');
        $this->render('list', array(
            'records' => $records,
        ));
    }

    public function actionProduct() {

        $this->render('product');
    }

    public function actionPicture() {

        $this->render('picture');
    }

    public function actionDownload() {

        $this->render('download');
    }

    public function actionJob() {

        $this->render('job');
    }

    public function actionFacebook() {

        $this->render('facebook');
    }

    public function actionEdit() {
        $articleModel = new Article;
        $categoryModel = new Category;
        $userModel = new User;
        $articleModel->primaryKey = $_GET['id'];
        $data = $articleModel->getArticle();

        if (isset($_POST['Article']) && !empty($_POST['Article'])) {
            if (isset($_POST['Article']['article_id']) && !empty($_POST['Article']['article_id'])) {
                $article = $this->loadModel($_POST['Article']['article_id']);
            }
            $article->attributes = $_POST['Article'];
            if ($article->save()) {
                $this->redirect(array('about'));
            }
        }

        $this->render('edit', array(
            'data' => $data,
            'articleModel' => $articleModel,
            'categoryModel' => $categoryModel,
            'userModel' => $userModel,
        ));
    }

    public function actionDelete() {

        $id = $_GET['id'];
        throw new CHttpException(404, '系统暂不支持删除操作！');
        return false;
    }

    public function loadModel($id) {
        if (empty($id)) {
            $id = $_GET['id'];
        }
        if ($this->_model === null) {
            if (isset($id)) {
                $condition = null;
                $this->_model = Article::model()->findByPk($id, $condition);
            }
            if ($this->_model === null)
                throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }

}

?>
