<?php

/**
 * This is the model class for table "{{category}}".
 *
 * The followings are the available columns in table '{{category}}':
 * @property integer $category_id
 * @property integer $category_pid
 * @property string $category_name
 * @property string $category_module
 * @property string $category_path
 * @property string $category_url
 * @property integer $category_is_nav
 * @property integer $category_order
 */
class Category extends BasicModel {

    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public function tableName() {
        return '{{category}}';
    }

    public function rules() {
        return array(
            array('category_pid,category_is_nav,category_order', 'numerical', 'integerOnly' => true),
            array('category_name, category_url,category_module', 'length', 'max' => 100),
            array('category_path', 'safe'),
            array('category_id, category_pid, category_name, category_path, category_url,category_is_nav,category_order', 'safe', 'on' => 'search'),
        );
    }

    public function relations() {
        return array(
            'categories' => array(self::BELONGS_TO, 'Category', '', 'on' => 't.category_pid=categories.category_id'),
        );
    }

    public function attributeLabels() {
        return array(
            'category_id' => 'Category',
            'category_pid' => 'Category Pid',
            'category_name' => '栏目名称',
            'category_module' => '模块类型',
            'category_path' => 'Category Path',
            'category_url' => '栏目url',
            'category_is_nav' => '是否为导航',
            'category_order' => '栏目排序',
            'path' => 'Path',
        );
    }

    public function search() {

        $criteria = new CDbCriteria;

        $criteria->compare('category_id', $this->category_id);
        $criteria->compare('category_pid', $this->category_pid);
        $criteria->compare('category_name', $this->category_name, true);
        $criteria->compare('category_module', $this->category_name, true);
        $criteria->compare('category_path', $this->category_path, true);
        $criteria->compare('category_url', $this->category_url, true);
        $criteria->compare('category_is_nav', $this->category_is_nav);
        $criteria->compare('category_order', $this->category_order);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /*
     *  var zNodes =[
      { id:1, pId:0, name:"父节点1 - 展开", open:true},
      { id:11, pId:1, name:"父节点11 - 折叠"},
      { id:111, pId:11, name:"叶子节点111"},
      { id:112, pId:11, name:"叶子节点112"},
      { id:113, pId:11, name:"叶子节点113"},
      { id:114, pId:11, name:"叶子节点114"},
      { id:12, pId:1, name:"父节点12 - 折叠"},
      { id:121, pId:12, name:"叶子节点121"},
      { id:122, pId:12, name:"叶子节点122"},
      { id:123, pId:12, name:"叶子节点123"},
      { id:124, pId:12, name:"叶子节点124"},
      { id:13, pId:1, name:"父节点13 - 没有子节点", isParent:true},
     */

    public function nodes() {
        $criteria = new CDbCriteria();
        $criteria->select = "*,CONCAT(category_path,'-',category_id) AS path";
        $criteria->order = "path ASC";
        $criteria->addCondition("category_name<>'首页'");
        $list = $this->findAll($criteria);

        $node = array();
        foreach ($list as $item) {
            $node[] = array(
                'id' => $item['category_id'],
                'pId' => $item['category_pid'],
                'name' => $item['category_name'] . '[Id:' . $item['category_id'] . ']',
                'isParent' => $this->getChildren($item['category_id']) ? true : false,
            );
        }
        return $node;
    }

    public function getChildren($category_id) {
        return $this->findAll('category_pid=:category_id', array($category_id));
    }

    public function isParent($category_id) {
        return $this->find('category_pid=:category_id', array(':category_id'=>$category_id)) ? true : false;
    }

}