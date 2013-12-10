<?php

class SidebarWidget extends CWidget {

    static $url;
    public $htmlOptions;

    const SINGLE_PAGES = 'site/page';

    public function init() {
        self::$url = Yii::app()->controller->id . '/' . Yii::app()->controller->action->id;
        $this->htmlOptions['id'] = isset($this->htmlOptions['id']) ? $this->htmlOptions['id'] : 'sidebar';
        $this->htmlOptions['class'] = isset($this->htmlOptions['class']) ? $this->htmlOptions['class'] : 'nav nav-list ds-nav-list';
    }

    public function run() {

        $module = (self::SINGLE_PAGES == self::$url) ? 'about' : Yii::app()->controller->id;
        $items = array();
        $criteria = new CDbCriteria();
        $criteria->select = "*,t.category_path || '-' ||t.category_id  as path";
        $criteria->condition = "t.category_module = '" . $module . "'";
        $criteria->order = "path ASC";
        $list = Category::model()->with('categories')->findAll($criteria);
        if (self::SINGLE_PAGES != self::$url && count($list) > 1)
            unset($list[0]);
        foreach ($list as $item) {
            $items[$item['category_id']] = array(
                'label' => $item['category_name'], //<i class="icon-chevron-right"></i>
                'url' => $this->getWebUrl($item['category_url']),
                'active' => $this->isActive($item),
                'linkOptions' => array(
                    'title' => $item['category_name'],
                    'target' => $this->isOutLink($item['category_url']) ? '_blank' : '',
                ),
            );
        }

        $this->widget('zii.widgets.CMenu', array(
            'id' => $this->htmlOptions['id'],
            'htmlOptions' => array('class' => $this->htmlOptions['class']),
            'activeCssClass' => 'active',
            'items' => $items,
        ));
    }

    protected function isActive($args) {
        $aciton = Yii::app()->controller->action->id;
        switch ($aciton) {
            case 'index':
                return $args['category_id'] == Yii::app()->request->getParam('id');
                break;
            case 'view':
                $model = ucfirst(Yii::app()->controller->id);
                $record = $model::model()->findByPk(Yii::app()->request->getParam('id'));
                return $record['category_id'] == $args['category_id'];
                break;
            case 'page':
                return Yii::app()->request->url == $args['category_url'];
                break;
        }
        return false;
    }

    protected function getWebUrl($category_url) {
        return $this->isOutLink($category_url) ? $category_url : array($category_url);
    }

    protected function isOutLink($url) {
        return (preg_match('/^(http|https):\/\/.+$/', $url)) ? true : false;
    }

}

?>
