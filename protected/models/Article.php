<?php

/**
 * This is the model class for table "{{news}}".
 *
 * The followings are the available columns in table '{{news}}':
 * @property integer $article_id
 * @property string $category_id
 * @property string $article_title
 * @property string $article_intro
 * @property string $article_content
 * @property integer $user_id
 * @property string $article_create_time
 * @property string $article_view
 * @property string $article_comment
 * @property string $article_picpath
 * @property string $article_description
 * @property string $article_keywords
 */
class Article extends BasicModel {

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return News the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return '{{article}}';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('user_id', 'numerical', 'integerOnly' => true),
            array('category_id', 'length', 'max' => 50),
            array('article_title, article_intro, article_content, article_create_time, article_view, article_comment, article_picpath, article_description, article_keywords', 'safe'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('article_id, category_id, article_title, article_intro, article_content, user_id, article_create_time, article_view, article_comment, article_picpath, article_description, article_keywords', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'category' => array(self::BELONGS_TO, 'Category', 'category_id'),
            'categories' => array(self::BELONGS_TO, 'Category', '', 'on' => 'category.category_pid=categories.category_id'),
            'user' => array(self::BELONGS_TO, 'User', 'user_id', 'select' => array('username')),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'article_id' => 'News',
            'category_id' => 'Category',
            'article_title' => '标题',
            'article_intro' => '摘要',
            'article_content' => '内容',
            'user_id' => 'User',
            'article_create_time' => '创建时间',
            'article_view' => 'News View',
            'article_comment' => 'News Comment',
            'article_picpath' => '图片路径',
            'article_description' => 'SEO描述',
            'article_keywords' => 'SEO关键字',
        );
    }

    /**
     * Retrieves a list of models based on the current search/filter conditions.
     * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
     */
    public function search() {
        // Warning: Please modify the following code to remove attributes that
        // should not be searched.

        $criteria = new CDbCriteria;

        $criteria->compare('article_id', $this->article_id);
        $criteria->compare('category_id', $this->category_id, true);
        $criteria->compare('article_title', $this->article_title, true);
        $criteria->compare('article_intro', $this->article_intro, true);
        $criteria->compare('article_content', $this->article_content, true);
        $criteria->compare('user_id', $this->user_id);
        $criteria->compare('article_create_time', $this->article_create_time, true);
        $criteria->compare('article_view', $this->article_view, true);
        $criteria->compare('article_comment', $this->article_comment, true);
        $criteria->compare('article_picpath', $this->article_picpath, true);
        $criteria->compare('article_description', $this->article_description, true);
        $criteria->compare('article_keywords', $this->article_keywords, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function getArticleByModule($module) {
        $criteria = new CDbCriteria(array(
            'with' => array('category', 'categories', 'user'),
            'condition' => "category.category_module='" . $module . "'",
            'together' => true,
            'order' => 't.article_create_time desc',
        ));
        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
            'pagination' => array(
                'pageVar' => Yii::app()->params['pagevar'],
                'pageSize' => Yii::app()->params['pagesize'],
            ),
        ));
    }

    public function getArticleByPk($pk) {
        return $this->with(array('category', 'categories', 'user'))->findByPk($pk);
    }

}