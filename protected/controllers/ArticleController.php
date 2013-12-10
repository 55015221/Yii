<?php

/**
 * 新闻栏目
 */
class ArticleController extends Controller {

    public function actionIndex() {
        $category_id = (int) Yii::app()->request->getParam('id');
        //$this->breadcrumbs = array('公司动态');
        $criteria = new CDbCriteria();
        $criteria->order = 'article_id DESC';
        $criteria->condition = 'user_id = 1';
        $criteria->order = 'article_create_time DESC';
        if (!empty($category_id)) {
            $criteria->addCondition('category_id=' . $category_id);
        }
        $count = Article::model()->count($criteria);
        $pages = new CPagination($count);

        $pages->pageSize = 10;
        $pages->applyLimit($criteria);
        $list = Article::model()->findAll($criteria);
        $model = new Article;
        $this->render('index', array(
            'list' => $list,
            'model' => $model,
            'pages' => $pages,
        ));
    }

    public function actionView() {
        $id = Yii::app()->request->getParam('id');
        $data = Article::model()->findByPk($id);
        if (empty($data)) {
            throw new CHttpException(404, '访问的页面不存在');
        }
        $this->render('view', array(
            'data' => $data
        ));
    }

    public function actionAjax() {
        $criteria = new CDbCriteria();
        //$criteria->order = 'article_id DESC';
        $criteria->condition = 'user_id = 1';

        $dataProvider = new CActiveDataProvider('Article', array(
                    'pagination' => array(
                        'pageSize' => Yii::app()->params['pagesize'],
                        'pageVar' => Yii::app()->params['pagevar'],
                    ),
                    'criteria' => $criteria,
                ));


        $this->render('view', array(
            'dataProvider' => $dataProvider,
        ));
    }

}