<?php

class CategoryController extends Controller {

    public function actionIndex() {
        $criteria = new CDbCriteria();
        $criteria->select = "*,category_path||'-'||category_id AS path";
        $criteria->order = "path ASC";
        $list = Category::model()->findAll($criteria);

        $this->render('index', array('list' => $list));
    }

    public function actionNode() {

        $model = new Category;
        $list = CJSON::encode($model->nodes());
        $this->render('node', array('list' => $list));
    }

    public function actionSystem() {

        $this->render('system');
    }

    public function actionOther() {

        $this->render('other');
    }

    public function actionEdit() {
        $model = Category::model()->findByPk($_GET['id']);

        if (isset($_POST['Category'])) {
            $model->attributes = $_POST['Category'];
            if ($model->save())
                $this->redirect(array('index'));
        }

        $this->render('edit', array(
            'model' => $model,
        ));
    }

    public function actionDelete() {

        throw new CHttpException(404, "抱歉，暂不支持删除功能！");
    }

}

?>
