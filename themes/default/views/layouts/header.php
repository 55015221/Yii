<!--<div class="header navbar navbar-fixed-top" role="banner">-->
<div class="header navbar" role="banner">
    <header>
        <div class="container">
            <div class="navbar-header">
                <?php echo CHtml::link(CHtml::image(Yii::app()->theme->baseUrl . '/assets/images/logo.gif', Yii::app()->name), Yii::app()->homeUrl); ?>
            </div>
            <div class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
                <nav>
                    <?php
                    $this->widget('ext.navigation.NavigationWidget', array(
                        'htmlOptions' => array(
                            'id' => 'nav-cross',
                            'class' => 'nav nav-pills',
                    )));
                    ?>
                </nav>
            </div>
        </div>
    </header>
</div>

