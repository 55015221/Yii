<?php

class CategoryListWidget extends CWidget {

    const SELECT_STYLE = 'select';

    public $module;
    public $selected;

    public function init() {
        
    }

    public function run() {
        $criteria = new CDbCriteria();
        $criteria->select = "*,CONCAT(category_path,'-',category_id) AS path";
        $criteria->order = "path ASC";
        $criteria->addCondition("category_module = '" . $this->module . "'");
        $list = Category::model()->findAll($criteria);

        $data = array();
        $disabled = null;
        foreach ($list as $k => $val) {
            if(0===$k)
                $disabled = $val['category_id'];
            $mak = count(explode('-', $val['category_path'])) - 1;
            $data[$val['category_id']] = str_repeat('&nbsp;&nbsp;&nbsp;', $mak) . $val['category_name'];
        }
        echo CHtml::dropDownList('category_id', $this->selected, $data, array(
            'class' => 'form-control',
            'encode' => false,
            'options' => array(
                $disabled => array('disabled' => true),
            )
        ));
    }

}

?>
