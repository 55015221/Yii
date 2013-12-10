<?php

class NavigationWidget extends CWidget {

    public $htmlOptions = array();

    public function init() {
        $this->htmlOptions['id'] = isset($this->htmlOptions['id']) ? $this->htmlOptions['id'] : 'top-nav';
        $this->htmlOptions['class'] = isset($this->htmlOptions['class']) ? $this->htmlOptions['class'] : 'top-nav';
    }

    public function run() {
        $items = array();
        $list = Category::model()->findAll(array(
            'condition' => 'category_is_nav=1',
            'order' => 'category_order ASC',
        ));
        foreach ($list as $item) {
            $linkOut = (preg_match('/^(http|https):\/\/.+$/', $item['category_url'])) ? true : false;
            $items[$item['category_id']] = array(
                'label' => $item['category_name'], //<i class="icon-chevron-right"></i>
                'url' => $linkOut ? $item['category_url'] : array($item['category_url']),
                'active' => $this->isActive($item['category_url']),
                'linkOptions' => array(
                    'title' => $item['category_name'],
                    'target' => $linkOut ? '_blank' : '',
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

    protected function isActive($url) {
        $path = explode('/', $url);
        if (($path[0] == Yii::app()->controller->id && $path[1] == Yii::app()->controller->action->id) || Yii::app()->request->url == $url) {
            return true;
        }
        return false;
    }

}

?>
