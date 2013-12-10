<?php

/**
 * 产品控制器
 */
class ProductController extends Controller {

    /**
     * 产品首页
     */
    public function actionIndex() {
        $criteria = new CDbCriteria();
        if (isset($_GET['id']) && !empty($_GET['id'])) {
            $criteria->addCondition('category_id=' . $_GET['id']);
        }
        $list = Product::model()->findAll($criteria);
        $this->render('index', array(
            'list' => $list,
        ));
    }

    /**
     * 产品详情页
     */
    public function actionView() {
        if (!$id = Yii::app()->request->getParam('id')) {
            throw new CHttpException(404, '此页面不存在!');
        }
        $criteria = new CDbCriteria();
        $criteria->alias = 't';
        $criteria->condition = 'product_id =' . $id;
        $criteria->with = array('picture');
        $data = Product::model()->find($criteria);
        $this->render('view', array(
            'data' => $data,
        ));
    }

}