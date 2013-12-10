<?php

class MenuWidget extends CWidget {

    const MEUN_TYPE_TOP = 'top';
    const MEUN_TYPE_SIDE = 'side';

    private $config;
    public $options;
    public $child;

    public function init() {
        if (!isset($this->options['style'])) {
            $this->options['style'] = self::MEUN_TYPE_TOP;
        }
        $this->config = $this->menuConfig();
    }

    public function run() {
        $controller = Yii::app()->controller->id;
        $action = Yii::app()->controller->action->id;
        $list = $this->config;
        $items = array();
        foreach ($list as $key => $value) {
            $list[$key]['active'] = ($controller === $key);
            if ($this->options['style'] === self::MEUN_TYPE_TOP) {
                unset($list[$key]['items']);
                $items = $list;
            } else if ($this->options['style'] === self::MEUN_TYPE_SIDE) {
                $items = $list[$controller]['items'];
                foreach ($items as $k => $val) {
                    $active = isset($val['attached']) ? array_merge($val['url'], $val['attached']) : $val['url'];
                    $items[$k]['active'] = in_array($action, $active);
                }
            }
        }

        $class = 'docs-item-' . $this->options['style'] . (isset($this->options['class']) ? " {$this->options['class']}" : "");

        $options = array(
            'items' => $items,
            'encodeLabel' => false,
            'activeCssClass' => 'active',
            'htmlOptions' => array('class' => $class),
        );
        if ($this->options['style'] === self::MEUN_TYPE_SIDE) {
            $options['itemCssClass'] = 'list-group-item';
        }
        if (isset($this->child) && in_array($this->child, array_keys($this->config))) {
            $items = $this->config[$this->child]['items'];
            array_shift($items);
            $options['items'] = $items;
            $options['htmlOptions'] = array('class' => 'content-box');
            $options['itemCssClass'] = '';
        }
        return $this->widget('zii.widgets.CMenu', $options);
    }

    public function menuConfig() {
        return array(
            'setting' => array(
                'label' => '<span class="glyphicon glyphicon-cog"></span> 系统设置',
                'url' => array('setting/'),
                'items' => array(
                    array('label' => '系统信息', 'url' => array('index')),
                    array('label' => '基本设置', 'url' => array('system')),
                )
            ),
            'category' => array(
                'label' => '<span class="glyphicon glyphicon-th-list"></span> 栏目模块',
                'url' => array('category/'),
                'items' => array(
                    array('label' => '栏目列表', 'url' => array('index'), 'attached' => array('edit')),
                    array('label' => '字段配置', 'url' => array('system')),
                )
            ),
            'about' => array(
                'label' => '<span class="glyphicon glyphicon-th-list"></span> 简介模块',
                'url' => array('about/'),
                'items' => array(
                    array('label' => '简介列表', 'url' => array('index'), 'attached' => array('edit')),
                    array('label' => '创建简介', 'url' => array('create')),
                )
            ),
            'article' => array(
                'label' => '<span class="glyphicon glyphicon-th-list"></span> 文章模块',
                'url' => array('article/'),
                'items' => array(
                    array('label' => '文章列表', 'url' => array('index'), 'attached' => array('edit')),
                    array('label' => '创建文章', 'url' => array('create')),
                )
            ),
            'product' => array(
                'label' => '<span class="glyphicon glyphicon-th-list"></span> 产品模块',
                'url' => array('product/'),
                'items' => array(
                    array('label' => '产品列表', 'url' => array('index'), 'attached' => array('edit')),
                    array('label' => '创建产品', 'url' => array('create')),
                )
            ),
            'picture' => array(
                'label' => '<span class="glyphicon glyphicon-th-list"></span> 图片模块',
                'url' => array('picture/'),
                'items' => array(
                    array('label' => '图片列表', 'url' => array('index'), 'attached' => array('edit')),
                    array('label' => '创建文章', 'url' => array('create')),
                )
            ),
            'feedback' => array(
                'label' => '<span class="glyphicon glyphicon-th-list"></span> 留言模块',
                'url' => array('feedback/'),
                'items' => array(
                    array('label' => '留言列表', 'url' => array('index'), 'attached' => array('edit')),
                    array('label' => '创建文章', 'url' => array('create')),
                )
            ),
//            'contents' => array(
//                'label' => '<span class="glyphicon glyphicon-th-list"></span> 内容管理',
//                'url' => array('contents/'),
//                'items' => array(
//                    array('label' => '管理首页', 'url' => array('index')),
//                    array('label' => '<span class="glyphicon glyphicon-th-list"></span> 简介管理', 'url' => array('about')),
//                    array('label' => '<span class="glyphicon glyphicon-th-list"></span> 文章管理', 'url' => array('article')),
//                    array('label' => '<span class="glyphicon glyphicon-th-list"></span> 产品管理', 'url' => array('product')),
//                    array('label' => '<span class="glyphicon glyphicon-th-list"></span> 下载管理', 'url' => array('download')),
//                    array('label' => '<span class="glyphicon glyphicon-th-list"></span> 图片管理', 'url' => array('picture')),
//                    array('label' => '<span class="glyphicon glyphicon-th-list"></span> 招聘管理', 'url' => array('job')),
//                    array('label' => '<span class="glyphicon glyphicon-th-list"></span> 留言管理', 'url' => array('facebook')),
//                )
//            ),
        );
    }

}

?>
