

-- ----------------------------
-- Table structure for yii_article
-- ----------------------------
DROP TABLE IF EXISTS "app_honoer"."yii_article";
CREATE TABLE "yii_article" (
"article_id"  INTEGER PRIMARY KEY AUTOINCREMENT,
"category_id"  TEXT,
"article_title"  TEXT,
"article_intro"  TEXT,
"article_content"  TEXT,
"user_id"  INTEGER,
"article_create_time"  TEXT,
"article_view"  TEXT,
"article_comment"  TEXT,
"article_picpath"  TEXT,
"article_description"  TEXT,
"article_keywords"  TEXT
);

-- ----------------------------
-- Records of yii_article
-- ----------------------------
INSERT INTO "app_honoer"."yii_article" VALUES (1, 5, 'iframe自动适应高度122', '
	不管哪种方式，Button的宽度在IE6、7下总是不能完美，接下来我们演示一个普通的Button，你可以用IE6或者IE7浏览器看看其显示宽度，然后对比Chrome或者IE8等浏览器，你会发现Bug的所在。


	不管哪种方式，Button的宽度在IE6、7下总是不能完...', '<p>
	网上找的一段代码
</p>
<pre class="brush:js;toolbar:false;">&lt;script type="text/javascript"&gt; 
    function reinitIframe(){ 
        var iframe = document.getElementById("mainFrame"); 
        try{ 
            var bHeight = iframe.contentWindow.document.body.scrollHeight; 
            var dHeight = iframe.contentWindow.document.documentElement.scrollHeight; 
            var height = Math.max(bHeight, dHeight); 
            iframe.height = height; 
        }catch (ex){} 
    } 
    window.setInterval("reinitIframe()", 200); 
&lt;/script&gt;</pre>
<p>
	<br />
</p>', 1, '2012-06-26 10:33:37', 228, 0, '/Public/Upload/thumb_51949a6b8364d.jpg', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (2, 6, 'jQuery 点击空白地方便的点击展开/关闭效果非常方便的点击展开/关闭效果', 'function reinitIframe(){
        var iframe = document.getElementById("mainFrame");
        try{
            var bHeight = iframe.contentWindow.document.body.scrollHeight;
            var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
            va...', '<pre class="prettyprint lang-js">function reinitIframe(){
        var iframe = document.getElementById("mainFrame");
        try{
            var bHeight = iframe.contentWindow.document.body.scrollHeight;
            var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
            var height = Math.max(bHeight, dHeight);
            iframe.height = height;
        }catch (ex){}
    }
    window.setInterval("reinitIframe()", 200);</pre>', 1, '2013-05-16 15:59:39', 73, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (3, 5, '图片水平垂直居中jquery-center-image', 'jquery.centerimage.js/**
 * description: position a image to center of container
 * author: Nicolas.Z
 * date: April 24, 2012
 * requires: jQuery v1.4+
 */
(function( $ ) {
       
var dimi...', '<p>jquery.centerimage.js</p><pre class="brush:js;toolbar:false;">/**
 * description: position a image to center of container
 * author: Nicolas.Z
 * date: April 24, 2012
 * requires: jQuery v1.4+
 */
(function( $ ) {
       
var diminish = function( $target, maxWidth, maxHeight ) {
    var width = $target.outerWidth(),
        height = $target.outerHeight(),
        verticalPadding = width - $target.width(), 
        horizontalPadding = height - $target.height();
           
    if ( width &gt; maxWidth ) {
        height = height * ( maxWidth / width );
        width = maxWidth;
    }
       
    if ( height &gt; maxHeight ) {
        width = width * ( maxHeight / height );
        height = maxHeight;
    }
       
    $target.css({
        width: width - verticalPadding,
        height: height - horizontalPadding
    });
       
    return {
        width: width,
        height: height
    };
};
   
$.fn.center = function( options ) {
    var settings = $.extend({
        src: '''',
        maxWidth: 0,
        maxHeight: 0
    }, options );
       
    return this.each(function() {
        var $self = $( this ), 
            $container = $self.parent(),
            containerWidth = $container.innerWidth(),
            containerHeight = $container.innerHeight(),
            rect, src;
           
        var center  = function() {
            rect = diminish( $self, settings.maxWidth || containerWidth, settings.maxHeight || containerHeight );
            $container.css( ''position'', ''relative'' );
            $self.css({
                ''position'': ''absolute'',
                ''top'': ( containerHeight - rect.height ) / 2,
                ''left'': ( containerWidth - rect.width ) / 2
            });
        };
           
        if ( $self.is( ''img'' ) ) {
            $container.css( ''overflow'', ''hidden'' );
            $self.bind( ''load'', function() {
                // for IE
                $self.unbind( ''load'' );
                   
                center();
                $container.css( ''overflow'', ''visible'' );
            });
               
            // for IE
            if ( this.src ) {
                src = this.src;
            }
            if ( settings.src &amp;&amp; typeof settings.src === ''string'' ) {
                src = settings.src;
            }
            this.src = src;
               
        } else {
            center();
        }
    });
};
   
})( jQuery );</pre><p>Html</p><pre class="brush:html;toolbar:false;">jQuery - Plugin - Center Imagebody, div, p, ul, ol, li { padding: 0; margin: 0; }
            body { font: 11px/1.6 Trebuchet MS; color: #333; }
            ul { list-style: none; }
            .clearfix { clear: both; }
            #container { width: 760px; margin: 0 auto; }
            #header, #content { margin-bottom: 15px; }
            #footer { color: #666; }
               
            #text-box { width: 300px; height: 200px; margin-bottom: 15px; padding: 10px; border: solid 1px #ccc; background: #e8e8e8; }
            #text-box-content { width: 300px; height: 200px; }
            #text-box-content div { width: 100px; height: 100px; padding: 5px; box-shadow: 2px 2px 1px #aaa; border: solid 1px #aaa; background: #fff; }
               
            #photo-box { width: 450px; height: 300px; padding: 10px; border:solid 1px #ccc; background: #e8e8e8; }
            #photo-box-content { width: 450px; height: 300px; }
            #photo-box-content img { padding: 4px; border: solid 1px #bbb; box-shadow: 0 0 5px #999; background: #fff; }
               
            #image-index { margin: 15px 0; }
            #image-index li { margin-right: 5px; float: left; }
            #image-index a { padding: 10px; font-size: 18px; text-decoration: none; color: #666; border: solid 1px #ccc; float: left; }
            #image-index a:hover { color: #000; text-shadow: 0 1px 0 #fff; background: #fc0; }jQuery - Plugin - Center Imagejquery plugin center imageImage 1Image 2Image 3Image 4Image 5© Copyright 2012 by Nicolas.Z</pre><p><br /></p><p><br /></p>', 1, '2012-06-26 10:52:25', 185, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (4, 5, 'clearfix清除浮动闭合容器之:after与:before', '首先对伪类:before与:after做下注脚:before 伪元素在元素之前添加内容。:after 伪元素在元素之后添加内容。这2个伪元素允许创作人员在元素内容的 最前面/最后面 插入生成内容。默认地，这个伪元素是行内元素，不过可以使用属性 display 改变这一点。该二伪类不被IE6/7所支持。好了，进入正题在平常我...', '<p style="text-align:justify;line-height:24px;border-right-width:0px;background-color:#ffffff;font-family:&#39;helvetica neue&#39;, arial, helvetica, sans-serif;border-top-width:0px;border-bottom-width:0px;color:#222222;font-size:12px;vertical-align:baseline;border-left-width:0px;padding:0px;margin-top:0px;margin-bottom:10px;"><span style="font-size:12px">首先对伪类:before与:after做下注脚</span></p><p style="text-align:justify;line-height:24px;border-right-width:0px;background-color:#ffffff;font-family:&#39;helvetica neue&#39;, arial, helvetica, sans-serif;border-top-width:0px;border-bottom-width:0px;color:#222222;font-size:12px;vertical-align:baseline;border-left-width:0px;padding:0px;margin-top:0px;margin-bottom:10px;"><span style="font-size:12px">:before 伪元素在元素之前添加内容。</span></p><p style="text-align:justify;line-height:24px;border-right-width:0px;background-color:#ffffff;font-family:&#39;helvetica neue&#39;, arial, helvetica, sans-serif;border-top-width:0px;border-bottom-width:0px;color:#222222;font-size:12px;vertical-align:baseline;border-left-width:0px;padding:0px;margin-top:0px;margin-bottom:10px;"><span style="font-size:12px">:after 伪元素在元素之后添加内容。</span></p><p style="text-align:justify;line-height:24px;border-right-width:0px;background-color:#ffffff;font-family:&#39;helvetica neue&#39;, arial, helvetica, sans-serif;border-top-width:0px;border-bottom-width:0px;color:#222222;font-size:12px;vertical-align:baseline;border-left-width:0px;padding:0px;margin-top:0px;margin-bottom:10px;"><span style="font-size:12px">这2个伪元素允许创作人员在元素内容的 最前面/最后面 插入生成内容。默认地，这个伪元素是行内元素，不过可以使用属性 display 改变这一点。</span><span style="font-family:inherit;color:#000000"><strong style="font-weight:bold"><span style="font-family:inherit;color:#000000;font-size:12px">该二伪类不被IE6/7所支持</span></strong></span><span style="font-size:12px">。</span></p><p style="text-align:justify;line-height:24px;border-right-width:0px;background-color:#ffffff;font-family:&#39;helvetica neue&#39;, arial, helvetica, sans-serif;border-top-width:0px;border-bottom-width:0px;color:#222222;font-size:12px;vertical-align:baseline;border-left-width:0px;padding:0px;margin-top:0px;margin-bottom:10px;"><span style="font-size:12px">好了，进入正题</span></p><p style="text-align:justify;line-height:24px;border-right-width:0px;background-color:#ffffff;font-family:&#39;helvetica neue&#39;, arial, helvetica, sans-serif;border-top-width:0px;border-bottom-width:0px;color:#222222;font-size:12px;vertical-align:baseline;border-left-width:0px;padding:0px;margin-top:0px;margin-bottom:10px;"><span style="font-family:inherit" id="more-214"></span></p><p style="text-align:justify;line-height:24px;border-right-width:0px;background-color:#ffffff;font-family:&#39;helvetica neue&#39;, arial, helvetica, sans-serif;border-top-width:0px;border-bottom-width:0px;color:#222222;font-size:12px;vertical-align:baseline;border-left-width:0px;padding:0px;margin-top:0px;margin-bottom:10px;"><span style="font-size:12px">在平常我们coding时候经常会发生子元素浮动而引起父级元素不能完全撑开的状况，</span></p><p style="text-align:justify;line-height:24px;border-right-width:0px;background-color:#ffffff;font-family:&#39;helvetica neue&#39;, arial, helvetica, sans-serif;border-top-width:0px;border-bottom-width:0px;color:#222222;font-size:12px;vertical-align:baseline;border-left-width:0px;padding:0px;margin-top:0px;margin-bottom:10px;"><span style="font-size:12px">可能很多朋友给父级元素用overflow:hidden简单粗暴的解决，但这种方式有弊端，一是在IE6下不能完美解决，二是假如在该模块有定位的层就有定位层显示不完整的可能。</span></p><p style="text-align:justify;line-height:24px;border-right-width:0px;background-color:#ffffff;font-family:&#39;helvetica neue&#39;, arial, helvetica, sans-serif;border-top-width:0px;border-bottom-width:0px;color:#222222;font-size:12px;vertical-align:baseline;border-left-width:0px;padding:0px;margin-top:0px;margin-bottom:10px;"><span style="font-size:12px">也有可能有些朋友是在父级元素里最后添加一个&lt;div style=”clear:both”&gt;&lt;/div&gt;来解决这个问题，但这样我们的HTML代码里就多了些冗余的代码且从语义化角度来看这也是不合理的。</span></p><p style="text-align:justify;line-height:24px;border-right-width:0px;background-color:#ffffff;font-family:&#39;helvetica neue&#39;, arial, helvetica, sans-serif;border-top-width:0px;border-bottom-width:0px;color:#222222;font-size:12px;vertical-align:baseline;border-left-width:0px;padding:0px;margin-top:0px;margin-bottom:10px;"><span style="font-size:12px">下面创建一个.clearfix类来完美解决这个问题</span></p><p><strong><span style="font-size:12px">代码如下：</span></strong></p><p><strong><span style="font-size:12px"></span></strong></p><pre class="brush:css;">.clearfix:after {content: ".";display: block;height: 0;clear: both;visibility: hidden;}  
* html .clearfix{zoom:1;} /* IE6 */
*+html .clearfix{zoom:1;} /* IE7 */</pre><p><strong><span style="font-size:12px">还可以:</span></strong><strong><span style="font-size:12px"></span></strong></p><pre class="brush:css;">clearfix:before, .clearfix:after { 
    content:""; 
    display:table; 
} 
.clearfix:after{ 
    clear:both; 
    overflow:hidden; 
} 
.clearfix{ 
    *zoom:1; 
}</pre><p> </p>', 1, '2012-08-02 11:47:41', 3134, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (5, 5, '快来看美女喽~', '', '<p>
&nbsp;&nbsp;&nbsp;&nbsp;<img data-original="http://img.baidu.com/hi/r/image/2012-02-10/5cd9b1b85518db186ad7d84257f4ac08.jpg" style="float:left;" border="0" height="284" hspace="0" vspace="0" width="186" />
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;2012年我省普通高考成绩将于6月26日下午公布。
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;考生可通过下列方式查询今年普通高考成绩：
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;一、96040电话查询方式，可提前拨打预定短信
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;中国电信固定电话、CDMA手机或小灵通，中国联通手机及铁通固定电话用户，只需拨通96040（全省各地均可直拨，无需加区号），按语音提示输入10位准考证号码和4位出生年月，即可查询到高考成绩。考生亦可提前拨打96040对高考成绩及录取情况进行短信通知预定，下发短信免费。
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;二、短信查询方式
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;（一）中国移动用户编写短信息“GAF+10位准考证号+4位出生年月”（例如准考证号是0123456789，出生年月是93年6月，则发送：GAF01234567899306，下同）；电信CDMA、小灵通及中国联通用户编写“KAF+10位准考证号+4位出生年月”，发送至10622168，即可预定或查询高考各科成绩及总分；
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;（二）广东地区的移动、联通用户可编写短信息&nbsp;“18+10位准考证号+4位出生年月”发送至10629500，即可预定或查询高考各科成绩及总分。
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;三、手机语音查询方式
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;广东地区的移动用户拨打1259025679，根据语音提示操作输入10位准考证号和4位出生年月，即可预定或查询高考各科成绩及总分。
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;四、网站在线查询方式
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;考生可登录广东考试服务网（网址：http://www.5184.com）进行查询。
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;通知单样式（理科类）
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;广东省2012年普通高考成绩通知单
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;考生号:××××××××××&nbsp;姓名:×××&nbsp;广东省教育考试院&nbsp;2012年6月26日
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;语文&nbsp;×××&nbsp;理科数学&nbsp;×××&nbsp;理科综合&nbsp;×××&nbsp;英语（含听说）&nbsp;×××
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;总成绩&nbsp;×××&nbsp;排位总分&nbsp;×××&nbsp;理科排位&nbsp;××××××
</p>
<p style="text-indent:2em">
&nbsp;&nbsp;&nbsp;&nbsp;备注：总成绩指各科考试实际总成绩；排位总分指政策性加分后排位总分；理科排位指考生投档顺序位置
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;<br />
</p>', 1, '2012-06-26 13:34:37', 115, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (6, 5, 'iframe 高度自适应，结果2W多条。', '', '<p>
&nbsp;&nbsp;&nbsp;&nbsp;<img data-original="/Public/Upload/96971340785841.jpg" style="width:314px;height:194px;float:right;" title="t010ba35b5b89b15f4a.jpg" border="0" hspace="0" vspace="0" />
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;通过Google搜索iframe&nbsp;自适应高度，结果5W多条，搜索iframe&nbsp;高度自适应，结果2W多条。<br />
&nbsp;&nbsp;&nbsp;&nbsp;我翻了前面的几十条，刨去大量的转载，有那么三五篇是原创的。而这几篇原创里面，基本上只谈到如何自适应静的东西，就是没有考虑到JS操作DOM之后，如何做动态同步的问题。另外，在兼容性方面，也研究的不彻底。<br />
&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;这篇文章，希望在这两个方面再做一些深入。<br />
&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;可能有人还没接触到这个问题过，先说明一下，什么是自适应高度吧。所谓iframe自适应高度，就是，基于界面美观和交互的考虑，隐藏了iframe的border和scrollbar，让人看不出它是个iframe。如果iframe始终调用同一个固定高度的页面，我们直接写死iframe高度就可以了。而如果iframe要切换页面，或者被包含页面要做DOM动态操作，这时候，就需要程序去同步iframe高度和被包含页的实际高度了。<br />
&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;顺便说下，iframe在迫不得已的时候才去用，它会给前端开发带来太多的麻烦。<br />
&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;传统做法大致有两个：<br />
&nbsp;&nbsp;&nbsp;&nbsp;方法一，在每个被包含页在本身内容加载完毕之后，执行JS取得本页面的高度，然后去同步父页面的iframe高度。<br />
&nbsp;&nbsp;&nbsp;&nbsp;方法二，在主页面iframe的onload事件中执行JS，去取得被包含页的高度内容，然后去同步高度。<br />
&nbsp;&nbsp;&nbsp;&nbsp;在代码维护角度考虑，方法二是优于方法一的，因为方法一，每个被包含页都要去引入一段相同的代码来做这个事情，创建了好多副本。<br />
&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;两个方法都只处理了静的东西，就是只在内容加载的时候执行，如果JS去操作DOM引起的高度变化，都不太方便。<br />
&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;如果在主窗口做一个Interval，不停的来获取被包含页的高度，然后做同步，是不是即方便，又解决了JS操作DOM的问题了呢？答案是肯定的。<br />
&nbsp;&nbsp;&nbsp;&nbsp;<br />
</p>', 1, '2012-06-27 16:31:59', 126, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (7, 5, 'jQuery点击空白地方关闭弹出层', '', '<p>jQuery点击空白地方关闭弹出层<br /></p><p><span style="color:#e36c09">全部代码 保存后可运行</span></p><pre class="brush:html;">&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt;  
&lt;html xmlns="http://www.w3.org/1999/xhtml"&gt;  
&lt;head&gt;  
&lt;title&gt;jQuery点击空白处关闭弹出层&lt;/title&gt;  
&lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;  
&lt;style type="text/css"&gt;  
#box{width:300px;height:200px;border:1px solid #000;display:none; margin:0 auto;}  
.btn{color:red;}  
&lt;/style&gt;  
&lt;script src="http://www.honoer.com/Public/Js/jQuery/jquery-1.6.2.min.js" type="text/javascript"&gt;&lt;/script&gt;  
&lt;script type="text/javascript"&gt;  
$(function(){  
 $(".btn").click(function(event){  
  var e=window.event || event;  
  if(e.stopPropagation){  
   e.stopPropagation();  
  }else{  
   e.cancelBubble = true;  
  }    
  $("#box").show();  
 });  
 $("#box").click(function(event){  
  var e=window.event || event;  
  if(e.stopPropagation){  
   e.stopPropagation();  
  }else{  
   e.cancelBubble = true;  
  }  
 });  
 document.onclick = function(){  
  $("#box").hide();  
 };  
})  
&lt;/script&gt;  
&lt;/head&gt;  
&lt;body&gt;  
&lt;div id="box"&gt;打开我了,点空白关闭啊,谢谢&lt;/div&gt;  
&lt;span class="btn"&gt;打开弹出层&lt;/span&gt;  
&lt;/body&gt;  
&lt;/html&gt;</pre><p><strong><span style="font-size:12px"> 又发现：</span></strong></p><p><strong><span style="font-size:12px"></span></strong> </p><pre class="brush:js;">&lt;script type="text/javascript"&gt;    
    $(function(){     
          
        $("ul,input").click(function(e){     
            e?e.stopPropagation():event.cancelBubble = true;     
        });     
                  
        $("input").focus(function() {      
        $("ul").fadeIn();      
              
        });      
        $(document).click(function() {      
            $("ul").fadeOut();      
                  
        });      
    })     
&lt;/script&gt;</pre><p><strong><span style="font-size:12px"></span></strong> </p>', 1, '2012-07-03 18:51:55', 122, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (8, 5, 'jQuery返回顶部代码', '', '<p>
&nbsp;&nbsp;&nbsp;&nbsp;<strong><span style="color:#7030a0">CSS代码：</span></strong>
</p>
<pre class="brush:css;">
    .backToTop {
    display: none;
    width: 18px;
    line-height: 1.2;
    padding: 5px 0;
    background-color: #000;
    color: #fff;
    font-size: 12px;
    text-align: center;
    position: fixed;
    _position: absolute;
    right: 10px;
    bottom: 100px;
    _bottom: "auto";
    cursor: pointer;
    opacity: .6;
    filter: Alpha(opacity=60);
}
</pre>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;<br />
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;<strong><span style="color:#7030a0">JS代码：</span></strong>
</p>
<pre class="brush:js;">
    (function() {
    var $backToTopTxt = "返回顶部", $backToTopEle = $('''').appendTo($("body"))
        .text($backToTopTxt).attr("title", $backToTopTxt).click(function() {
            $("html, body").animate({ scrollTop: 0 }, 120);
    }), $backToTopFun = function() {
        var st = $(document).scrollTop(), winh = $(window).height();
        (st &gt; 0)? $backToTopEle.show(): $backToTopEle.hide();    
        //IE6下的定位
        if (!window.XMLHttpRequest) {
            $backToTopEle.css("top", st + winh - 166);    
        }
    };
    $(window).bind("scroll", $backToTopFun);
    $(function() { $backToTopFun(); });
})();
</pre>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;<br />
</p>', 1, '2012-06-28 12:07:07', 158, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (9, 5, 'jQuery 点击空白地方关闭弹出层', '', '<p> &nbsp; &nbsp;jQuery 点击空白地方关闭弹出层</p><pre class="brush:html;">&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt;
&lt;html xmlns="http://www.w3.org/1999/xhtml"&gt;
&lt;head&gt;
&lt;title&gt;jQuery点击空白处关闭弹出层&lt;/title&gt;
&lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
&lt;style type="text/css"&gt;
#box{width:300px;height:200px;border:1px solid #000;display:none; margin:0 auto;}
.btn{color:red;}
&lt;/style&gt;
&lt;script src="http://www.honoer.com/Public/Js/jQuery/jquery-1.6.2.min.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;script type="text/javascript"&gt;
$(function(){
 $(".btn").click(function(event){
  var e=window.event || event;
  if(e.stopPropagation){
   e.stopPropagation();
  }else{
   e.cancelBubble = true;
  }  
  $("#box").show();
 });
 $("#box").click(function(event){
  var e=window.event || event;
  if(e.stopPropagation){
   e.stopPropagation();
  }else{
   e.cancelBubble = true;
  }
 });
 document.onclick = function(){
  $("#box").hide();
 };
})
&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;div id="box"&gt;打开我了,点空白关闭啊,谢谢&lt;/div&gt;
&lt;span class="btn"&gt;打开弹出层&lt;/span&gt;
&lt;/body&gt;
&lt;/html&gt;</pre><p><br /></p><script type="text/javascript">&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;$(function(){&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt; $(&quot;.btn&quot;).click(function(event){&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;  var e=window.event || event;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;  if(e.stopPropagation){&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;   e.stopPropagation();&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;  }else{&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;   e.cancelBubble = true;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;  }  &lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;  $(&quot;#box&quot;).show();&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt; });&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt; $(&quot;#box&quot;).click(function(event){&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;  var e=window.event || event;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;  if(e.stopPropagation){&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;   e.stopPropagation();&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;  }else{&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;   e.cancelBubble = true;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;  }&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt; });&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt; document.onclick = function(){&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;  $(&quot;#box&quot;).hide();&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt; };&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;})&lt;/span&gt;&lt;/p&gt;&lt;p&gt;
    &lt;span class=&quot;Apple-style-span&quot;&gt;</script><p><br/></p><p> &nbsp; &nbsp;<br /></p>', 1, '2012-07-12 15:21:26', 132, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (10, 11, 'QQ里的获取远程URL内容 111122', '', '<p>
	&nbsp; &nbsp;<strong><span style="color:#7030a0;">PHP代码:</span></strong> &nbsp; <strong><span style="color:#7030a0;"><span></span></span></strong> 
</p>
<p>
	&nbsp; &nbsp;<strong><span style="color:#7030a0;"> 这里用到了php里的file_get_contents和curl函数， 需要curl支持 </span></strong> 
</p>
<p>
	&nbsp; &nbsp;其中 <span style="font-family:consolas, ''background-color:#fafafa;">curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE); //php帮助解释为：将<span><a>curl_exec()</a></span>获取的信息以文件流的形式返回，而不是直接输出</span><span style="font-family:consolas, ''background-color:#ffffff;">curl_setopt($ch, CURLOPT_URL,$url);</span>//<span style="font-family:consolas, ''background-color:#fafafa;">php帮助解释为：</span>需要获取的URL地址，也可以在<span><a>curl_init()</a></span>函数中设置<span style="color:#7030a0;"></span> 
</p>
<pre class="brush:php;">function get_url_contents($url)
{
    if (ini_get("allow_url_fopen") == "1")
        return file_get_contents($url);
      
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
    curl_setopt($ch, CURLOPT_URL, $url);
    $result =  curl_exec($ch);
    curl_close($ch);
      
    return $result;
}</pre>', 1, '2012-07-04 14:33:35', 116, 0, '', 33, 22);
INSERT INTO "app_honoer"."yii_article" VALUES (11, 5, 'PHP curl函数详解，实现抓取原创内容', '', '<pre class="brush:php;">
    /*    
* 类用途: 实现抓取原创内容    
*/
class CURL     
 {       
 var $cookie_file;  // 设置Cookie文件保存路径及文件名      
 var $loginurl;//登陆地地址     
 var $actionstr;//登陆参数     
 function __construct()     
 {     
  $this-&gt;cookie_file=dirname(__FILE__)."/cookie_".md5(basename(__FILE__)).".txt";      
  if(!file_exists($this-&gt;cookie_file))     
   { // 检测Cookie是否存在         
   $str = $this-&gt;vget(''jroam''); // 获取登录随机值         
   preg_match("/name=\"formhash\" value=\"(.*?)\"/is",$str,$hash); // 提取登录随机值        
   $this-&gt;vlogin($this-&gt;loginurl,$this-&gt;actionstr); // 登录获取Cookie         
  }      
 }     
                   
 function vlogin($url,$data){ // 模拟登录获取Cookie函数         
  $curl = curl_init(); // 启动一个CURL会话         
  curl_setopt($curl, CURLOPT_URL, $url); // 要访问的地址                     
  curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0); // 对认证证书来源的检查         
  curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 1); // 从证书中检查SSL加密算法是否存在         
  curl_setopt($curl, CURLOPT_USERAGENT, $_SERVER[''HTTP_USER_AGENT'']); // 模拟用户使用的浏览器         
  curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1); // 使用自动跳转         
  curl_setopt($curl, CURLOPT_AUTOREFERER, 1); // 自动设置Referer         
  curl_setopt($curl, CURLOPT_POST, 1); // 发送一个常规的Post请求         
  curl_setopt($curl, CURLOPT_POSTFIELDS, $data); // Post提交的数据包         
  curl_setopt($curl, CURLOPT_COOKIEJAR, $this-&gt;cookie_file); // 存放Cookie信息的文件名称         
  curl_setopt($curl, CURLOPT_COOKIEFILE, $this-&gt;cookie_file); // 读取上面所储存的Cookie信息         
  curl_setopt($curl, CURLOPT_TIMEOUT, 30); // 设置超时限制防止死循环         
  curl_setopt($curl, CURLOPT_HEADER, 0); // 显示返回的Header区域内容         
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1); // 获取的信息以文件流的形式返回         
  $tmpInfo = curl_exec($curl); // 执行操作         
  if (curl_errno($curl)) {         
     echo ''Errno''.curl_error($curl);         
  }         
  curl_close($curl); // 关闭CURL会话         
  return $tmpInfo; // 返回数据         
 }         
                     
 function vget($url){ // 模拟获取内容函数         
  $curl = curl_init(); // 启动一个CURL会话         
  curl_setopt($curl, CURLOPT_URL, $url); // 要访问的地址                     
  curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0); // 对认证证书来源的检查         
  curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 1); // 从证书中检查SSL加密算法是否存在         
  curl_setopt($curl, CURLOPT_USERAGENT, $_SERVER[''HTTP_USER_AGENT'']); // 模拟用户使用的浏览器         
  curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1); // 使用自动跳转         
  curl_setopt($curl, CURLOPT_AUTOREFERER, 1); // 自动设置Referer         
  curl_setopt($curl, CURLOPT_HTTPGET, 1); // 发送一个常规的Post请求         
  curl_setopt($curl, CURLOPT_COOKIEFILE, $this-&gt;cookie_file); // 读取上面所储存的Cookie信息         
  curl_setopt($curl, CURLOPT_TIMEOUT, 30); // 设置超时限制防止死循环         
  curl_setopt($curl, CURLOPT_HEADER, 0); // 显示返回的Header区域内容         
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1); // 获取的信息以文件流的形式返回         
  $tmpInfo = curl_exec($curl); // 执行操作         
  if (curl_errno($curl)) {         
     echo ''Errno''.curl_error($curl);         
  }         
  curl_close($curl); // 关闭CURL会话         
  return $tmpInfo; // 返回数据         
 }         
                     
 function vpost($url,$data){ // 模拟提交数据函数         
  $curl = curl_init(); // 启动一个CURL会话         
  curl_setopt($curl, CURLOPT_URL, $url); // 要访问的地址                     
  curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0); // 对认证证书来源的检查         
  curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 1); // 从证书中检查SSL加密算法是否存在         
  curl_setopt($curl, CURLOPT_USERAGENT, $_SERVER[''HTTP_USER_AGENT'']); // 模拟用户使用的浏览器         
  curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1); // 使用自动跳转         
  curl_setopt($curl, CURLOPT_AUTOREFERER, 1); // 自动设置Referer         
  curl_setopt($curl, CURLOPT_POST, 1); // 发送一个常规的Post请求         
  curl_setopt($curl, CURLOPT_POSTFIELDS, $data); // Post提交的数据包         
  curl_setopt($curl, CURLOPT_COOKIEFILE, $this-&gt;cookie_file); // 读取上面所储存的Cookie信息         
  curl_setopt($curl, CURLOPT_TIMEOUT, 30); // 设置超时限制防止死循环         
  curl_setopt($curl, CURLOPT_HEADER, 0); // 显示返回的Header区域内容         
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1); // 获取的信息以文件流的形式返回         
  $tmpInfo = curl_exec($curl); // 执行操作         
  if (curl_errno($curl)) {         
     echo ''Errno''.curl_error($curl);         
  }         
  curl_close($curl); // 关键CURL会话         
  return $tmpInfo; // 返回数据         
 }         
 function delcookie($cookie_file){ // 删除Cookie函数         
  @unlink($cookie_file); // 执行删除         
 }         
 }
</pre>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;<br />
</p>', 1, '2012-07-09 10:12:16', 109, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (12, 5, '非常方便的点击展开/关闭效果', '', '<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;可扩展的简易点击展开/关闭效果,分别用原生JavaScript和jQuery实现.使用方法及相关解释,请参见源码.
</p>
<pre class="brush:js;">
    $(function(){
    var $title = $(''div.jqdemo'');//找到要显示/隐藏的元素
    //$title.hide();   //如果你想默认是隐藏状态,可取消此行注释,下面两个切换函数换位
    $title.prev().toggle(function(){//为显示/隐藏元素的前一个元素(取出标题元素)设置点击切换事件
        $title.hide().prev().find(''span'').text(''+'');//第一次点击时,隐藏div元素,并找到标题元素中的span,切换按钮
    }, function(){
        $title.show().prev().find(''span'').text(''-'');//第二次点击时,显示div元素,并找到标题元素中的span,切换按钮
    });
    //JQ的代码是不是简洁漂亮的多.哈哈.几句代码就搞定了.通过修改show()/hide()还可以得到很炫酷的效果
});
</pre>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;<br />
</p>', 1, '2012-07-09 15:38:28', 108, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (13, 5, 'jQuery.lazyload 图片延时加载 详解', '', '<p><strong>jQuery.lazyload 图片延时加载</strong>：</p><p><br /></p><p>在线压缩js http://closure-compiler.appspot.com/home <br />虽然是很牛X的特效,不过用JQuery插件只需要短短几句代码,使用过程如下: <br /><br /><strong>1.导入JS插件</strong></p><pre class="brush:js;">&lt;script src="jquery.js" type="text/javascript"&gt;&lt;/script&gt; 
&lt;script src="jquery.lazyload.js" type="text/javascript"&gt;&lt;/script&gt;</pre><p><br /></p><p><strong>2.在你的页面中加入如下的javascript：</strong><br /></p><pre class="brush:js;">$("img").lazyload();</pre><p><span style="color:#00b050">这将会使所有的图片都延迟加载。</span></p><p><br /></p><p>当然插件还有几个配置项可供设置。</p><p><strong>1.改变threshold </strong><br /></p><pre class="brush:js;">$(“img”).lazyload({ threshold : 200 });</pre><p><span style="color:#00b050">把阀值设置成200 意思就是当图片没有看到之前先load 200像素。</span></p><p><br /></p><p><strong>2.当然了你也可以通过设置占位符图片和自定事件来触发加载图片事件</strong></p><pre class="brush:js;">$("img").lazyload({ 
placeholder : "img/grey.gif", 
event : "click"
});</pre><p><strong>3.可以通过定义effect 参数来定义一些图片显示效果</strong></p><pre class="brush:js;">$("img").lazyload({ 
placeholder : "img/grey.gif", 
effect : "fadeIn"
});</pre><p>LazyLoad(延迟加载)技术不仅仅用在对网页中图片的延迟加载，对数据同样可以，Google Reader和Bing图片搜索就把 <br />LazyLoad技术运用的淋漓尽致； </p><p><br /><strong>缺陷：</strong> <br />1.与Ajax技术的冲突； <br />2.图片的延迟加载，遇到高度特别高的图片，会出现停止加载的问题； <br />3.写代码不规范的同学要注意了，不管由于什么原因，如果您的页面中，img标签的height属性未定义，那么我建议您最好不要使用ImageLazyLoad</p><p><br /></p><p>大家可以直接采用淘宝的延迟加载技术:(2kb大小) <br /><a title="http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/imglazyload-min.js" target="_self" href="http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/imglazyload-min.js">http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/imglazyload-min.js </a><br />调用方法也是很简单的： </p><pre class="brush:js;">&lt;script  src="http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/imglazyload-min.js"
type="text/javascript"&gt;&lt;/script&gt; 
&lt;script type="text/javascript"&gt;
// &lt;![CDATA[KISSY.ImageLazyload();// ]]&gt;
&lt;/script&gt;</pre><p><br /></p><p><br /></p><p><strong>注：</strong>该脚本依赖 yahoo-dom-event, 页面中需要加载 yui 2.x,你也可以直接引用下面的地址: <br /></p><pre class="brush:js;">&lt;script src="http://kissy.googlecode.com/svn/trunk/third-party/yui2/yahoo-dom-event/yahoo-dom-event.js" type="text/javascript"&gt;
 
&lt;/script&gt;</pre><p>配置参数如下：</p><pre class="brush:js;">&lt;script type="text/javascript"&gt; 
KISSY.ImageLazyload({ 
mod: "manual", // 延迟模式。默认为 auto 
diff: 200 // 当前屏幕下多远处的图片开始延迟加载。默认两屏外的图片才延迟加载 
}); 
&lt;/script&gt;</pre><p>manual 模式时，需要手动将页面中需要延迟加载的图片的 src 属性名更改为 data-lazyload-src. 比如 SRP 页面，宝贝列表的后20个图片延迟加载。 输出时，html 代码为：<br /></p><pre class="brush:html;">&lt;img data-lazy-src="path/to/img" alt="something" /&gt;</pre><p>如果您是Jquery，Prototype等这些JS框架的粉丝，他们都有定制的LazyLoad Plugin提供；<br /><br />可查看<a title="http://www.appelsiini.net/projects/lazyload" target="_self" href="http://www.appelsiini.net/projects/lazyload">http://www.appelsiini.net/projects/lazyload</a><br /><br />LazyLoad(延迟加载)技术不仅仅用在对网页中图片的延迟加载，对数据同样可以，Google Reader和Bing图片搜索就把<br />LazyLoad技术运用的淋漓尽致；<br /><br /></p>', 1, '2012-07-11 12:02:10', 97, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (14, 5, 'JQuery让页脚部固定在网页底部', '', '<p>想让底部不随滚动条滚动吗？</p><p> </p><p>试试下面的 代码吧。。</p><p><span style="font-size:12px">注：此代码未测试</span></p><pre class="brush:js;">// 重定位页脚函数 
function repositionFooter(){ 
    var h = $(window).height(); 
    $(".innerBlock").css(''min-height'',h - 230) 
}; 
  
// 用户调整窗口大小时重定位页脚 
var resizeTimer = null; 
$(window).bind(''resize'', function(){ 
    if(resizeTimer) clearTimeout(resizeTimer); 
    resizeTimer = setTimeout(repositionFooter,100); 
      
}); 
  
// 页面加载的时候重定位页脚 
$(document).ready(repositionFooter);</pre><p> </p>', 1, '2012-07-23 16:49:29', 114, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (15, 5, 'jquery制作浮动层随浏览器滚动条滚动一直保持在顶部位置', '', '<pre class="brush:html;">&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt; 
&lt;html xmlns="http://www.w3.org/1999/xhtml"&gt; 
&lt;head&gt; 
&lt;meta http-equiv="Content-Type" content="text/html; charset=utf-8" /&gt; 
&lt;title&gt;jquery制作浮动层随浏览器滚动条滚动一直保持在顶部位置&lt;/title&gt; 
&lt;script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"&gt;&lt;/script&gt; 
  
  
&lt;!--演示内容开始--&gt;
&lt;p&gt;&lt;style type="text/css"&gt; 
*{margin:0;padding:0;list-style-type:none;} 
a,img{border:0;} 
.pagedemo{width:760px;margin:0 auto;} 
#nav_left_layout{position:absolute;height:30px;width:760px;background:#dedede;z-index:9999999;} 
&lt;/style&gt;&lt;/p&gt; 
&lt;div class="pagedemo"&gt; 
&lt;div style="height:300px;background:#eee;"&gt;&amp;nbsp;&lt;/div&gt; 
&lt;div id="nav_left_layout"&gt;jquery制作浮动层随浏览器滚动条滚动一直保持在顶部位置&lt;/div&gt; 
&lt;div style="height:900px;overflow:hidden;"&gt;&amp;nbsp;&lt;/div&gt; 
&lt;/div&gt; 
&lt;script type="text/javascript"&gt;  
$.fn.smartFloat = function() { 
    var position = function(element) { 
        var top = element.position().top, pos = element.css("position"); 
        $(window).scroll(function() { 
            var scrolls = $(this).scrollTop(); 
            if (scrolls &gt; top) { 
                if (window.XMLHttpRequest) { 
                    element.css({ 
                        position: "fixed", 
                        top: 0 
                    });  
                } else { 
                    element.css({ 
                        top: scrolls 
                    });  
                } 
            }else { 
                element.css({ 
                    position: pos, 
                    top: top 
                });  
            } 
        }); 
}; 
    return $(this).each(function() { 
        position($(this));                        
    }); 
}; 
//绑定 
$("#nav_left_layout").smartFloat(); 
&lt;/script&gt; 
&lt;!--演示内容结束--&gt;
  
&lt;/body&gt; 
&lt;/html&gt;</pre><p> </p>', 1, '2012-07-23 18:29:29', 120, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (16, 12, '联系我们', '', '<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;百度，全球最大的中文搜索引擎、最大的中文网站。2000年1月创立于北京中关村。
</p>
<p>
	1999年底，身在美国硅谷的李彦宏看到了中国互联网及中文搜索引擎服务的巨大发展潜力，抱着技术改变世界的梦想，他毅然辞掉硅谷的高薪工作，携搜
索引擎专利技术，于2000年1月1日在中关村创建了百度公司。从最初的不足10人发展至今，员工人数超过17000人。如今的百度，已成为中国最受欢
迎、影响力最大的中文网站。
</p>
<p>
	百度拥有数千名研发工程师，这是中国乃至全球最为优秀的技术团队，这支队伍掌握着世界上最为先进的搜索引擎技术，使百度成为中国掌握世界尖端科学核心技术的中国高科技企业，也使中国成为美国、俄罗斯、和韩国之外，全球仅有的4个拥有搜索引擎核心技术的国家之一。
</p>
<p>
	从创立之初，百度便将“让人们最便捷地获取信息，找到所求”作为自己的使命，成立以来，公司秉承“以用户为导向”的理念，不断坚持技术创新，致力于
为用户提供“简单，可依赖”的互联网搜索产品及服务，其中包括：以网络搜索为主的功能性搜索，以贴吧为主的社区搜索，针对各区域、行业所需的垂直搜
索，Mp3搜索，以及门户频道、IM等，全面覆盖了中文网络世界所有的搜索需求，根据第三方权威数据，百度在中国的搜索份额超过80%。
</p>
<p>
	在面对用户的搜索产品不断丰富的同时，百度还创新性地推出了基于搜索的营销推广服务，并成为最受企业青睐的互联网营销推广平台。目前，中国已有数十
万家企业使用了百度的搜索推广服务，不断提升着企业自身的品牌及运营效率。通过持续的商业模式创新，百度正进一步带动整个互联网行业和中小企业的经济增
长，推动社会经济的发展和转型。
</p>
<p>
	为推动中国数百万中小网站的发展，百度借助超大流量的平台优势，联合所有优质的各类网站，建立了世界上最大的网络联盟，使各类企业的搜索推广、品牌营销的价值、覆盖面均大面积提升。与此同时，各网站也在联盟大家庭的互助下，获得最大的生存与发展机会。
</p>
<p>
	作为国内的一家知名企业，百度也一直秉承“弥合信息鸿沟，共享知识社会”的责任理念，坚持履行企业公民的社会责任。成立来，百度利用自身优势积极投
身公益事业，先后投入巨大资源，为盲人、少儿、老年人群体打造专门的搜索产品，解决了特殊群体上网难问题,极大地弥补了社会信息鸿沟问题。此外，在加速推
动中国信息化进程、净化网络环境、搜索引擎教育及提升大学生就业率等方面，百度也一直走在行业领先的地位。2011年初，百度还特别成立了百度基金会，围
绕知识教育、环境保护、灾难救助等领域，更加系统规范地管理和践行公益事业。
</p>
<p>
	2005年，百度在美国纳斯达克上市，一举打破首日涨幅最高等多项纪录，并成为首家进入纳斯达克成分股的中国公司。通过数年来的市场表现，百度优异的业绩与值得依赖的回报，使之成为中国企业价值的代表，傲然屹立于全球资本市场。
</p>
<p>
	2009年，百度更是推出全新的框计算技术概念，并基于此理念推出百度开放平台，帮助更多优秀的第三方开发者利用互联网平台自主创新、自主创业，在
大幅提升网民互联网使用体验的同时，带动起围绕用户需求进行研发的产业创新热潮，对中国互联网产业的升级和发展产生巨大的拉动效应。
</p>
<p>
	今天，百度已经成为中国最具价值的品牌之一，英国《金融时报》将百度列为“中国十大世界级品牌”，成为这个榜单中最年轻的一家公司，也是唯一一家互
联网公司。而“亚洲最受尊敬企业”、“全球最具创新力企业”、“中国互联网力量之星”等一系列荣誉称号的获得，也无一不向外界展示着百度成立数年来的成
就。
</p>
<p>
	多年来，百度董事长兼CEO李彦宏，率领百度人所形成的“简单可依赖”的核心文化，深深地植根于百度。这是一个充满朝气、求实坦诚的公司，以搜索改变生活，推动人类的文明与进步，促进中国经济的发展为己任，正朝着更为远大的目标而迈进。
</p>', 1, '2012-07-27 14:35:56', 116, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (17, 5, 'IE的条件注释', '', '<p>条件注释是IE特有的一种功能，能对IE系列产品进行单独的XHTML代码处理，注意，主要是针对XHTML,而非CSS。</p><p>条件注释功能非常强大，可以进行true和false判断，例如：</p><p>程序代码</p><p class="code">&lt;!–[if IE]&gt;此内容只有IE可见&lt;![endif]–&gt;<br />&lt;!–[if IE 6.0]&gt;此内容只有IE6.0可见&lt;![endif]–&gt;</p><p>条件注释能被IE判断是什么版本的浏览器，并在符合条件的情况下显示其中的内容，从IE5.0到7.0都支持注释功能，而且版本号精确到小数点后4位：</p><p>程序代码</p><p class="code">&lt;!–[if IE 6.1000]&gt;此内容只有IE6.1可见&lt;![endif]–&gt;</p><p>IE条件注释还支持感叹号非操作：</p><p>程序代码</p><p class="code">&lt;!–[if !IE 6.0]&gt;此内容除了IE6.0版本之外都可见&lt;![endif]–&gt;</p><p>并且支持前缀，用于判断更高版本或是更低版本：</p><p>程序代码</p><p class="code">&lt;!–[if gt IE 5.0]&gt;此内容只有IE5.0以上版本可见&lt;![endif]–&gt;</p><p>这里的gt全称为greater than表示当前条件版本以上版本，但不包含当前版本。</p><p>还有其它几个前缀：</p><p>lt 表示less than 当前条件版本以下的版本，不包含当前版本。</p><p>gte 表示greeter than or equal 当前版本以上版本，并包含当前版本。</p><p>lte 表示less than or equal 当前版本以下版本，并包含当前版本。</p><p> </p>', 1, '2012-07-27 15:04:47', 121, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (18, 5, 'PHP curl 并发最佳实践【转载】', '', '<p>在实际项目或者自己编写小工具(比如新闻聚合,商品价格监控,比价)的过程中, 通常需要从第3方网站或者API接口获取数据, 在需要处理1个URL队列时, 为了提高性能, 可以采用cURL提供的curl_multi_*族函数实现简单的并发.<br /><br />本文将探讨两种具体的实现方法, 并对不同的方法做简单的性能对比.<br />1. 经典cURL并发机制及其存在的问题<br /><br />经典的cURL实现机制在网上很容易找到, 比如参考PHP在线手册的如下实现方式: <br /><br /></p><pre class="brush:php;">function classic_curl($urls, $delay) { 
    $queue = curl_multi_init(); 
    $map = array(); 
   
    foreach ($urls as $url) { 
        // create cURL resources 
        $ch = curl_init(); 
   
        // set URL and other appropriate options 
        curl_setopt($ch, CURLOPT_URL, $url); 
   
        curl_setopt($ch, CURLOPT_TIMEOUT, 1); 
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
        curl_setopt($ch, CURLOPT_HEADER, 0); 
        curl_setopt($ch, CURLOPT_NOSIGNAL, true); 
   
        // add handle 
        curl_multi_add_handle($queue, $ch); 
        $map[$url] = $ch; 
    } 
   
    $active = null; 
   
    // execute the handles 
    do { 
        $mrc = curl_multi_exec($queue, $active); 
    } while ($mrc == CURLM_CALL_MULTI_PERFORM); 
   
    while ($active &gt; 0 &amp;&amp; $mrc == CURLM_OK) { 
        if (curl_multi_select($queue, 0.5) != -1) { 
            do { 
                $mrc = curl_multi_exec($queue, $active); 
            } while ($mrc == CURLM_CALL_MULTI_PERFORM); 
        } 
    } 
   
    $responses = array(); 
    foreach ($map as $url=&gt;$ch) { 
        $responses[$url] = callback(curl_multi_getcontent($ch), $delay); 
        curl_multi_remove_handle($queue, $ch); 
        curl_close($ch); 
    } 
   
    curl_multi_close($queue); 
    return $responses; 
}</pre><p> </p><p>首先将所有的URL压入并发队列, 然后执行并发过程, 等待所有请求接收完之后进行数据的解析等后续处理. 在实际的处理过程中, 受网络传输的影响, 部分URL的内容会优先于其他URL返回, 但是经典cURL并发必须等待最慢的那个URL返回之后才开始处理, 等待也就意味着CPU的空闲和浪费. 如果URL队列很短, 这种空闲和浪费还处在可接受的范围, 但如果队列很长, 这种等待和浪费将变得不可接受.<br />2. 改进的Rolling cURL并发方式<br /><br />仔细分析不难发现经典cURL并发还存在优化的空间, 优化的方式时当某个URL请求完毕之后尽可能快的去处理它, 边处理边等待其他的URL返回, 而不是等待那个最慢的接口返回之后才开始处理等工作, 从而避免CPU的空闲和浪费. 闲话不多说, 下面贴上具体的实现:<br />3. 两种并发实现的性能对比<br /></p><pre class="brush:php;">function rolling_curl($urls, $delay) { 
    $queue = curl_multi_init(); 
    $map = array(); 
   
    foreach ($urls as $url) { 
        $ch = curl_init(); 
   
        curl_setopt($ch, CURLOPT_URL, $url); 
        curl_setopt($ch, CURLOPT_TIMEOUT, 1); 
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
        curl_setopt($ch, CURLOPT_HEADER, 0); 
        curl_setopt($ch, CURLOPT_NOSIGNAL, true); 
   
        curl_multi_add_handle($queue, $ch); 
        $map[(string) $ch] = $url; 
    } 
   
    $responses = array(); 
    do { 
        while (($code = curl_multi_exec($queue, $active)) == CURLM_CALL_MULTI_PERFORM) ; 
   
        if ($code != CURLM_OK) { break; } 
   
        // a request was just completed -- find out which one 
        while ($done = curl_multi_info_read($queue)) { 
   
            // get the info and content returned on the request 
            $info = curl_getinfo($done[''handle'']); 
            $error = curl_error($done[''handle'']); 
            $results = callback(curl_multi_getcontent($done[''handle'']), $delay); 
            $responses[$map[(string) $done[''handle'']]] = compact(''info'', ''error'', ''results''); 
   
            // remove the curl handle that just completed 
            curl_multi_remove_handle($queue, $done[''handle'']); 
            curl_close($done[''handle'']); 
        } 
   
        // Block for data in / output; error handling is done by curl_multi_exec 
        if ($active &gt; 0) { 
            curl_multi_select($queue, 0.5); 
        } 
   
    } while ($active); 
   
    curl_multi_close($queue); 
    return $responses; 
}</pre><p> </p><p><br />改进前后的性能对比试验在LINUX主机上进行, 测试时使用的并发队列如下:<br /><br /> &nbsp; &nbsp;http://item.taobao.com/item.htm?id=14392877692<br /> &nbsp; &nbsp;http://item.taobao.com/item.htm?id=16231676302<br /> &nbsp; &nbsp;http://item.taobao.com/item.htm?id=17037160462<br /> &nbsp; &nbsp;http://item.taobao.com/item.htm?id=5522416710<br /> &nbsp; &nbsp;http://item.taobao.com/item.htm?id=16551116403<br /> &nbsp; &nbsp;http://item.taobao.com/item.htm?id=14088310973<br /><br />简要说明下实验设计的原则和性能测试结果的格式: 为保证结果的可靠, 每组实验重复20次, 在单次实验中, 给定相同的接口URL集合, 分别测量 Classic(指经典的并发机制)和Rolling(指改进后的并发机制)两种并发机制的耗时(秒为单位), 耗时短者胜出(Winner), 并计算节省的时间(Excellence, 秒为单位)以及性能提升比例(Excel. %). 为了尽量贴近真实的请求而又保持实验的简单, 在对返回结果的处理上只是做了简单的正则表达式匹配, 而没有进行其他复杂的操作. 另外, 为了确定结果处理回调对性能对比测试结果的影响, 可以使用usleep模拟现实中比较负责的数据处理逻辑(如提取, 分词, 写入文件或数据库等).<br /><br />性能测试中用到的回调函数为:<br /></p><pre class="brush:php;">function callback($data, $delay) { 
    preg_match_all(''/&lt;h3&gt;(.+)&lt;\/h3&gt;/iU'', $data, $matches); 
    usleep($delay); 
    return compact(''data'', ''matches''); 
}</pre><p> </p><p>数据处理回调无延迟时: Rolling Curl略优, 但性能提升效果不明显.<br />数据处理回调延迟5毫秒: Rolling Curl完胜, 性能提升40%左右.<br />通过上面的性能对比, 在处理URL队列并发的应用场景中Rolling cURL应该是更加的选择, 并发量非常大(1000+)时, 可以控制并发队列的最大长度, 比如20, 每当1个URL返回并处理完毕之后立即加入1个尚未请求的URL到队列中, 这样写出来的代码会更加健壮, 不至于并发数太大而卡死或崩溃. 详细的实现请参考: http://code.google.com/p/rolling-curl/ </p>', 1, '2012-07-27 17:31:08', 125, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (19, 5, 'jQuery 图片水平垂直居中 另一方法', '', '<p>又看到一jQuery方法实现图片水平垂直居中的代码 列出来看看：</p><pre class="brush:js;">//缩略图
jQuery.fn.LoadImage=function(scaling,width,height,loadpic){
    if(loadpic==null)loadpic="../images/msg_img/loading.gif";
return this.each(function(){
   var t=$(this);
   var src=$(this).attr("src")
   var img=new Image();
   img.src=src;
   //自动缩放图片
   var autoScaling=function(){
    if(scaling){
     if(img.width&gt;0 &amp;&amp; img.height&gt;0){ 
           if(img.width/img.height&gt;=width/height){ 
               if(img.width&gt;width){ 
                   t.width(width); 
                   t.height((img.height*width)/img.width); 
               }else{ 
                   t.width(img.width); 
                   t.height(img.height); 
               } 
           } 
           else{ 
               if(img.height&gt;height){ 
                   t.height(height); 
                   t.width((img.width*height)/img.height); 
               }else{ 
                   t.width(img.width); 
                   t.height(img.height); 
               } 
           } 
       } 
    } 
   }
   //处理ff下会自动读取缓存图片
   if(img.complete){
    autoScaling();
      return;
   }
   $(this).attr("src","");
   var loading=$("&lt;img alt=\"加载中...\" title=\"图片加载中...\" src=\""+loadpic+"\" /&gt;");
   
   t.hide();
   t.after(loading);
   $(img).load(function(){
    autoScaling();
    loading.remove();
    t.attr("src",this.src);
    t.show();
    //$(''.photo_prev a,.photo_next a'').height($(''#big-pic img'').height());
   });
  });
}</pre><p>CSS代码：</p><pre class="brush:css;">.img-wrap{float:left;padding:10px;width:150px;height:110px;border:1px solid #eee;text-align:center;overflow:hidden}
.img-wrap a{display:table-cell;vertical-align:middle;*display:block; overflow:hidden; background-color:#fff}
.img-wrap a:hover{ background-color:#e8eff6}</pre><p><br /></p><p>使用方法：</p><p><br /></p><pre class="brush:html;">/** //缩略图使用方法
 * /
&lt;body&gt;
&lt;div class="picbig"&gt;
    &lt;div class="img-wrap"&gt;
        &lt;img style="" src="http://www.honoer.com/uploadfile/2011/1228/20111228025151156.jpg"&gt;
    &lt;/div&gt;
&lt;/div&gt;    
&lt;/body&gt;
&lt;script type="text/javascript"&gt;
$(function(){
$(".picbig").each(function(i){
var cur = $(this).find(''.img-wrap'').eq(0);
var w = cur.width();
var h = cur.height();
$(this).find(''.img-wrap img'').LoadImage(true, w, h,''../Images/loading.gif'');
});
})
&lt;/script&gt;</pre><p><br /></p>', 1, '2012-07-27 23:21:44', 161, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (20, 5, 'jQuery常用技巧', '', '<div style="text-align:left"><table cellspacing="0" cellpadding="0"><tbody><tr><td id="postmessage_10779"><span style="font-size:12px">1、关于页面元素的引用<br />通过jquery的$()引用元素包括通过id、class、元素名以及元素的层级关系及dom或者xpath条件等方法，且返回的对象为jquery对象（集合对象），不能直接调用dom定义的方法。<br />2、jQuery对象与dom对象的转换<br />只有jquery对象才能使用jquery定义的方法。注意dom对象和jquery对象是有区别的，调用方法时要注意操作的是dom对象还是jquery对象。<br />普通的dom对象一般可以通过$()转换成jquery对象。<br />如：$(document.getElementById(”msg”))则为jquery对象，可以使用jquery的方法。<br />由于jquery对象本身是一个集合。所以如果jquery对象要转换为dom对象则必须取出其中的某一项，一般可通过索引取出。<br />如：$(”#msg”)[0]，$(”div”).eq(1)[0]，$(”div”).get()[1]，$(”td”)[5]这些都是dom对象，可以使用dom中的方法，但不能再使用Jquery的方法。<br />以下几种写法都是正确的：<br />$(”#msg”).html();<br />$(”#msg”)[0].innerHTML;<br />$(”#msg”).eq(0)[0].innerHTML;<br />$(”#msg”).get(0).innerHTML;<br />3、如何获取jQuery集合的某一项<br />对于获取的元素集合，获取其中的某一项（通过索引指定）可以使用eq或get(n)方法或者索引号获取，要注意，eq返回的是jquery对象，而get(n)和索引返回的是dom元素对象。对于jquery对象只能使用jquery的方法，而dom对象只能使用dom的方法，如要获取第三个&lt;div&gt;元素的内容。有如下两种方法：<br />$(”div”).eq(2).html(); &nbsp; &nbsp;//调用jquery对象的方法<br />$(”div”).get(2).innerHTML; //调用dom的方法属性<br />4、同一函数实现set和get<br />Jquery中的很多方法都是如此，主要包括如下几个：<br />$(”#msg”).html(); &nbsp; &nbsp;//返回id为msg的元素节点的html内容。<br />$(”#msg”).html(”&lt;b&gt;new content&lt;/b&gt;”);<br />//将“&lt;b&gt;new content&lt;/b&gt;” 作为html串写入id为msg的元素节点内容中,页面显示粗体的new content<br />$(”#msg”).text(); &nbsp; &nbsp;//返回id为msg的元素节点的文本内容。<br />$(”#msg”).text(”&lt;b&gt;new content&lt;/b&gt;”);<br />//将“&lt;b&gt;new content&lt;/b&gt;” 作为普通文本串写入id为msg的元素节点内容中,页面显示&lt;b&gt;new content&lt;/b&gt;<br />$(”#msg”).height(); &nbsp; &nbsp;//返回id为msg的元素的高度<br />$(”#msg”).height(”300″); //将id为msg的元素的高度设为300<br />$(”#msg”).width(); &nbsp; &nbsp;//返回id为msg的元素的宽度<br />$(”#msg”).width(”300″); //将id为msg的元素的宽度设为300<br />$(”input”).val(”); //返回表单输入框的value值<br />$(”input”).val(”test”); //将表单输入框的value值设为test<br />$(”#msg”).click(); //触发id为msg的元素的单击事件<br />$(”#msg”).click(fn); //为id为msg的元素单击事件添加函数<br />同样blur,focus,select,submit事件都可以有着两种调用方法<br />5、集合处理功能<br />对于jquery返回的集合内容无需我们自己循环遍历并对每个对象分别做处理，jquery已经为我们提供的很方便的方法进行集合的处理。<br />包括两种形式：<br />$(”p”).each(function(i){this.style.color=[&#39;#f00&#39;,&#39;#0f0&#39;,&#39;#00f&#39;][ i ]})<br />//为索引分别为0，1，2的p元素分别设定不同的字体颜色。<br />$(”tr”).each(function(i){this.style.backgroundColor=[&#39;#ccc&#39;,&#39;#fff&#39;][i%2]})<br />//实现表格的隔行换色效果<br />$(”p”).click(function(){alert($(this).html())})<br />//为每个p元素增加了click事件，单击某个p元素则弹出其内容<br />6、扩展我们需要的功能<br />$.extend({<br />min: function(a, b){return a &lt; b?a:b; },<br />max: function(a, b){return a &gt; b?a:b; }<br />}); //为jquery扩展了min,max两个方法<br />使用扩展的方法（通过“$.方法名”调用）：<br />alert(”a=10,b=20,max=”+$.max(10,20)+”,min=”+$.min(10,20));<br />7、支持方法的连写<br />所谓连写，即可以对一个jquery对象连续调用各种不同的方法。<br />例如：<br />$(”p”).click(function(){alert($(this).html())})<br />.mouseover(function(){alert(’mouse over event’)})<br />.each(function(i){this.style.color=[&#39;#f00&#39;,&#39;#0f0&#39;,&#39;#00f&#39;][ i ]});<br />8、操作元素的样式<br />主要包括以下几种方式：<br />$(”#msg”).css(”background”); &nbsp; &nbsp;//返回元素的背景颜色<br />$(”#msg”).css(”background”,”#ccc”) //设定元素背景为灰色<br />$(”#msg”).height(300); $(”#msg”).width(”200″); //设定宽高<br />$(”#msg”).css({ color: “red”, background: “blue” });//以名值对的形式设定样式<br />$(”#msg”).addClass(”select”); //为元素增加名称为select的class<br />$(”#msg”).removeClass(”select”); //删除元素名称为select的class<br />$(”#msg”).toggleClass(”select”); //如果存在（不存在）就删除（添加）名称为select的class<br />9、完善的事件处理功能<br />Jquery已经为我们提供了各种事件处理方法，我们无需在html元素上直接写事件，而可以直接为通过jquery获取的对象添加事件。<br />如：<br />$(”#msg”).click(function(){alert(”good”)}) //为元素添加了单击事件<br />$(”p”).click(function(i){this.style.color=[&#39;#f00&#39;,&#39;#0f0&#39;,&#39;#00f&#39;][ i ]})<br />//为三个不同的p元素单击事件分别设定不同的处理<br />jQuery中几个自定义的事件：<br />（1）hover(fn1,fn2)：一个模仿悬停事件（鼠标移动到一个对象上面及移出这个对象）的方法。当鼠标移动到一个匹配的元素上面时，会触发指定的第一个函数。当鼠标移出这个元素时，会触发指定的第二个函数。<br />//当鼠标放在表格的某行上时将class置为over，离开时置为out。<br />$(”tr”).hover(function(){<br />$(this).addClass(”over”);<br />},<br />function(){<br />$(this).addClass(”out”);<br />});<br />（2）ready(fn):当DOM载入就绪可以查询及操纵时绑定一个要执行的函数。<br />$(document).ready(function(){alert(”Load Success”)})<br />//页面加载完毕提示“Load Success”,相当于onload事件。与$(fn)等价<br />（3）toggle(evenFn,oddFn): 每次点击时切换要调用的函数。如果点击了一个匹配的元素，则触发指定的第一个函数，当再次点击同一元素时，则触发指定的第二个函数。随后的每次点击都重复对这两个函数的轮番调用。<br />//每次点击时轮换添加和删除名为selected的class。<br />$(”p”).toggle(function(){<br />$(this).addClass(”selected”);<br />},function(){<br />$(this).removeClass(”selected”);<br />});<br />（4）trigger(eventtype): 在每一个匹配的元素上触发某类事件。<br />例如：<br />$(”p”).trigger(”click”); &nbsp; &nbsp;//触发所有p元素的click事件<br />（5）bind(eventtype,fn)，unbind(eventtype): 事件的绑定与反绑定<br />从每一个匹配的元素中（添加）删除绑定的事件。<br />例如：<br />$(”p”).bind(”click”, function(){alert($(this).text());}); //为每个p元素添加单击事件<br />$(”p”).unbind(); //删除所有p元素上的所有事件<br />$(”p”).unbind(”click”) //删除所有p元素上的单击事件<br />10、几个实用特效功能<br />其中toggle()和slidetoggle()方法提供了状态切换功能。<br />如toggle()方法包括了hide()和show()方法。<br />slideToggle()方法包括了slideDown()和slideUp方法。<br />11、几个有用的jQuery方法<br />$.browser.浏览器类型：检测浏览器类型。有效参数：safari, opera, msie, mozilla。如检测是否ie：$.browser.isie，是ie浏览器则返回true。<br />$.each(obj, fn)：通用的迭代函数。可用于近似地迭代对象和数组（代替循环）。<br />如<br />$.each( [0,1,2], function(i, n){ alert( “Item #” + i + “: ” + n ); });<br />等价于：<br />var tempArr=[0,1,2];<br />for(var i=0;i&lt;tempArr.length;i++){<br />alert(”Item #”+i+”: “+tempArr[ i ]);<br />}<br />也可以处理json数据，如<br />$.each( { name: “John”, lang: “JS” }, function(i, n){ alert( “Name: ” + i + “, Value: ” + n ); });<br />结果为：<br />Name:name, Value:John<br />Name:lang, Value:JS<br />$.extend(target,prop1,propN)：用一个或多个其他对象来扩展一个对象，返回这个被扩展的对象。这是jquery实现的继承方式。<br />如：<br />$.extend(settings, options);<br />//合并settings和options，并将合并结果返回settings中，相当于options继承setting并将继承结果保存在setting中。<br />var settings = $.extend({}, defaults, options);<br />//合并defaults和options，并将合并结果返回到setting中而不覆盖default内容。<br />可以有多个参数（合并多项并返回）<br />$.map(array, fn)：数组映射。把一个数组中的项目(处理转换后)保存到到另一个新数组中，并返回生成的新数组。<br />如：<br />var tempArr=$.map( [0,1,2], function(i){ return i + 4; });<br />tempArr内容为：[4,5,6]<br />var tempArr=$.map( [0,1,2], function(i){ return i &gt; 0 ? i + 1 : null; });<br />tempArr内容为：[2,3]<br />$.merge(arr1,arr2):合并两个数组并删除其中重复的项目。<br />如：$.merge( [0,1,2], [2,3,4] ) //返回[0,1,2,3,4]<br />$.trim(str)：删除字符串两端的空白字符。<br />如：$.trim(” &nbsp; hello, how are you? “); //返回”hello,how are you? ”<br />12、解决自定义方法或其他类库与jQuery的冲突<br />很多时候我们自己定义了$(id)方法来获取一个元素，或者其他的一些js类库如prototype也都定义了$方法，如果同时把这些内容放在一起就会引起变量方法定义冲突，Jquery对此专门提供了方法用于解决此问题。<br />使用jquery中的jQuery.noConflict();方法即可把变量$的控制权让渡给第一个实现它的那个库或之前自定义的$方法。之后应用Jquery的时候只要将所有的$换成jQuery即可，如原来引用对象方法$(”#msg”)改为jQuery(”#msg”)。<br />如：<br />jQuery.noConflict();<br />// 开始使用jQuery<br />jQuery(”div p”).hide();<br />// 使用其他库的 $()<br />$(”content”).style.display = ‘none’;</span></td></tr></tbody></table></div><p> </p>', 1, '2012-07-31 19:04:54', 160, 3, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (21, 5, '50个常用的jQuery代码段', '', '<p><span style="font-size:12px" id="_baidu_bookmark_start_23">﻿</span><span style="font-size:12px" id="_baidu_bookmark_start_23">1. 如何创建嵌套的过滤器： </span></p><ul type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//允许你减少集合中的匹配元素的过滤器， </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//只剩下那些与给定的选择器匹配的部分。在这种情况下， </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//查询删除了任何没（:not）有（:has） </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//包含class为“selected”（.selected）的子节点。 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">.filter(“:not(:has(.selected))”)<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">2. 如何重用元素搜索 </span></p><ul type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">var allItems = $(“div.item”); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">var keepList = $(“div#container1 div.item”); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//现在你可以继续使用这些jQuery对象来工作了。例如， </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//基于复选框裁剪“keep list”，复选框的名称 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//符合 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">&lt; DIV &gt;class names: </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(formToLookAt + ” input:checked”).each(function() { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;keepList = keepList.filter(“.” + $(this).attr(“name”)); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">}); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">&lt; /DIV&gt;<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">3. 任何使用has()来检查某个元素是否包含某个类或是元素： </span></p><ul type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//jQuery 1.4.*包含了对这一has方法的支持。该方法找出 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//某个元素是否包含了其他另一个元素类或是其他任何的 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//你正在查找并要在其之上进行操作的东东。 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(“input”).has(“.email”).addClass(“email_icon”);<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">4. 如何使用jQuery来切换样式表 </span></p><ul type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//找出你希望切换的媒体类型（media-type），然后把href设置成新的样式表。 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(‘link[media=&#39;screen&#39;]‘).attr(‘href’, ’Alternative.css’);<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">5. 如何限制选择范围（基于优化目的）： </span></p><ul type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//尽可能使用标签名来作为类名的前缀， </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//这样jQuery就不需要花费更多的时间来搜索 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//你想要的元素。还要记住的一点是， </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//针对于你的页面上的元素的操作越具体化， </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//就越能降低执行和搜索的时间。 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">var in_stock = $(‘#shopping_cart_items input.is_in_stock’); &lt;ul id=”shopping_cart_items”&gt;<br />&lt;li&gt;&lt;input type=”radio” value=”Item-X” name=”item” /&gt; Item X&lt;/li&gt;<br />&lt;li&gt;&lt;input type=”radio” value=”Item-Y” name=”item” /&gt; Item Y&lt;/li&gt;<br />&lt;li&gt;&lt;input type=”radio” value=”Item-Z” name=”item” /&gt; Item Z&lt;/li&gt;<br />&lt;/ul&gt;<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">6. 如何正确地使用ToggleClass： </span></p><ul type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//切换（toggle）类允许你根据某个类的 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//是否存在来添加或是删除该类。 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//这种情况下有些开发者使用： </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">a.hasClass(‘blueButton’) ? a.removeClass(‘blueButton’) : a.addClass(‘blueButton’); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//toggleClass允许你使用下面的语句来很容易地做到这一点 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">a.toggleClass(‘blueButton’);<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">7. 如何设置IE特有的功能： </span></p><ul type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">if ($.browser.msie) { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">// Internet Explorer就是个虐待狂 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">}<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">8. 如何使用jQuery来代替一个元素： </span></p><ul type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(‘#thatdiv’).replaceWith(‘fnuh’);<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">9. 如何验证某个元素是否为空： </span></p><ul type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">if ($(‘#keks’).html()) { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//什么都没有找到; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">}<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">10. 如何从一个未排序的集合中找出某个元素的索引号 </span></p><ul type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(“ul &gt; li”).click(function () { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;var index = $(this).prevAll().length; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">});<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">11. 如何把函数绑定到事件上： </span></p><ul type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(‘#foo’).bind(‘click’, function() { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;alert(‘User clicked on ”foo.”‘); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">});<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">12. 如何追加或是添加html到元素中： </span></p><ul type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(‘#lal’).append(‘sometext’);<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">13. 在创建元素时，如何使用对象字面量（literal）来定义属性 </span></p><ul type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">var e = $(“”, { href: ”#”, class: ”a-class another-class”, title: ”…” });<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">14. 如何使用多个属性来进行过滤 </span></p><ul type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//在使用许多相类似的有着不同类型的input元素时， </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//这种基于精确度的方法很有用 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">var elements = $(‘#someid input[type=sometype][value=somevalue]‘).get();<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">15. 如何使用jQuery来预加载图像： </span></p><ul type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">jQuery.preloadImages = function() { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;for(var i = 0; i &lt; arguments.length; i++) { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp; &nbsp; &nbsp;$(“&lt;img /&gt;”).attr(‘src’, arguments</span><p> </p><p> </p></p></li></ul><p> </p><p><span style="font-size:12px" id="_baidu_bookmark_end_24">﻿
<p><span style="font-size:12px" id="_baidu_bookmark_start_23">31. 如何在jQuery中克隆一个元素：</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">var cloned = $(‘#somediv’).clone();<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">32. 在jQuery中如何测试某个元素是否可见</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">if($(element).is(‘:visible’) == ’true’) { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;//该元素是可见的 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">}<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">33. 如何把一个元素放在屏幕的中心位置：</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">jQuery.fn.center = function () { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;this.css(‘position’,&#39;absolute’); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;this.css(‘top’, ( $(window).height() - this.height() ) / +$(window).scrollTop() + ’px’); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;this.css(‘left’, ( $(window).width() - this.width() ) / 2+$(window).scrollLeft() + ’px’); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;return this; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">} </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//这样来使用上面的函数： </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(element).center();<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">34. 如何把有着某个特定名称的所有元素的值都放到一个数组中：</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">var arrInputValues = new Array(); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(“input[name=&#39;table[]‘]”).each(function(){ </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;arrInputValues.push($(this).val()); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">});<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">35. 如何从元素中除去HTML</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">(function($) { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;$.fn.stripHtml = function() { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp; &nbsp; &nbsp;var regexp = /&lt;(“[^&quot;]*”|’[^&#39;]*’|[^&#39;&quot;&gt;])*&gt;/gi; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp; &nbsp; &nbsp;this.each(function() { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$(this).html( $(this).html().replace(regexp,””) ); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp; &nbsp; &nbsp;}); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp; &nbsp; &nbsp;return $(this); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;} </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">})(jQuery); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//用法： </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(‘p’).stripHtml();<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">36. 如何使用closest来取得父元素：</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(‘#searchBox’).closest(‘div’);<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">37. 如何使用Firebug和Firefox来记录jQuery事件日志：</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">// 允许链式日志记录 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">// 用法： </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(‘#someDiv’).hide().log(‘div hidden’).addClass(‘someClass’); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">jQuery.log = jQuery.fn.log = function (msg) { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;if (console){ </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp; &nbsp; &nbsp;console.log(“%s: %o”, msg, this); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;} </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;return this; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">};<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">38. 如何强制在弹出窗口中打开链接：</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">jQuery(‘a.popup’).live(‘click’, function(){ </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;newwindow=window.open($(this).attr(‘href’),”,’height=200,width=150′); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;if (window.focus) { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp; &nbsp; &nbsp;newwindow.focus(); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;} </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;return false; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">});<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">39. 如何强制在新的选项卡中打开链接：</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">jQuery(‘a.newTab’).live(‘click’, function(){ </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;newwindow=window.open($(this).href); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;jQuery(this).target = ”_blank”; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;return false; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">});<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">40. 在jQuery中如何使用.siblings()来选择同辈元素</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">// 不这样做 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(‘#nav li’).click(function(){ </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;$(‘#nav li’).removeClass(‘active’); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;$(this).addClass(‘active’); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">}); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//替代做法是 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(‘#nav li’).click(function(){ </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;$(this).addClass(‘active’).siblings().removeClass(‘active’); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">});<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">41. 如何切换页面上的所有复选框：</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">var tog = false; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">// 或者为true，如果它们在加载时为被选中状态的话 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(‘a’).click(function() { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;$(“input[type=checkbox]“).attr(“checked”,!tog); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;tog = !tog; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">});<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">42. 如何基于一些输入文本来过滤一个元素列表：</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//如果元素的值和输入的文本相匹配的话 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//该元素将被返回 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(‘.someClass’).filter(function() { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;return $(this).attr(‘value’) == $(‘input#someId’).val(); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">})<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">43. 如何获得鼠标垫光标位置x和y</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(document).ready(function() { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;$(document).mousemove(function(e){ </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp; &nbsp; &nbsp;$(’#XY’).html(”X Axis : ” + e.pageX + ” | Y Axis ” + e.pageY); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;}); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">});<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">44. 如何把整个的列表元素（List Element，LI）变成可点击的</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(“ul li”).click(function(){ </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp;window.location=$(this).find(“a”).attr(“href”); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp;return false; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">});<br /></span></p></li></ul><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">&lt;ul&gt; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">&lt;li&gt;&lt;a href=”#”&gt;Link 1&lt;/a&gt;&lt;/li&gt; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">&lt;li&gt;&lt;a href=”#”&gt;Link 2&lt;/a&gt;&lt;/li&gt; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">&lt;li&gt;&lt;a href=”#”&gt;Link 3&lt;/a&gt;&lt;/li&gt; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">&lt;li&gt;&lt;a href=”#”&gt;Link 4&lt;/a&gt;&lt;/li&gt; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">&lt;/ul&gt;<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">45. 如何使用jQuery来解析XML（基本的例子）：</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">function parseXml(xml) { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;//找到每个Tutorial并打印出author </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;$(xml).find(“Tutorial”).each(function() { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp; &nbsp; &nbsp;$(“#output”).append($(this).attr(“author”) + ”&quot;); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;}); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">}<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">46. 如何检查图像是否已经被完全加载进来</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(‘#theImage’).attr(‘src’, ’image.jpg’).load(function() { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;alert(‘This Image Has Been Loaded’); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">});<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">47. 如何使用jQuery来为事件指定命名空间：</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//事件可以这样绑定命名空间 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(‘input’).bind(‘blur.validation’, function(e){ </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">// … </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">}); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//data方法也接受命名空间 </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$(‘input’).data(‘validation.isValid’, true);<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">48. 如何检查cookie是否启用</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">var dt = new Date(); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">dt.setSeconds(dt.getSeconds() + 60); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">document.cookie = ”cookietest=1; expires=” + dt.toGMTString(); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">var cookiesEnabled = document.cookie.indexOf(“cookietest=”) != -1; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">if(!cookiesEnabled) { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//没有启用cookie </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">}<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">49. 如何让cookie过期：</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">var date = new Date(); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">date.setTime(date.getTime() + (x * 60 * 1000)); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$.cookie(‘example’, ’foo’, { expires: date });<br /></span></p></li></ul><p><span style="font-size:12px" id="_baidu_bookmark_start_23">50. 如何使用一个可点击的链接来替换页面中任何的URL</span></p><ul class="litype_1" type="1"><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">$.fn.replaceUrl = function() { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;var regexp = /((ftp|http|https)://(w+:{0,1}w*@)?(S+)(:[0-9]+)?(/|/([w#!:.?+=&amp;%@!-/]))?)/gi; </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;this.each(function() { </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp; &nbsp; &nbsp;$(this).html( </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$(this).html().replace(regexp,’&lt;a href=”$1″&gt;$1&lt;/a&gt;‘) </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp; &nbsp; &nbsp;); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;}); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23"> &nbsp; &nbsp;return $(this); </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">} </span></p></li><li><p><span style="font-size:12px" id="_baidu_bookmark_start_23">//用法<br /></span></p></li></ul><br /></span></p><p> </p>', 1, '2012-07-31 19:12:56', 137, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (22, 5, 'PHP 得到客户端真实的IP', '', '<p>代码如下：</p><pre class="brush:php;">&lt;?php
function GetIP() {
    if ($_SERVER["HTTP_X_FORWARDED_FOR"])
        $ip = $_SERVER["HTTP_X_FORWARDED_FOR"];
    else if ($_SERVER["HTTP_CLIENT_IP"])
        $ip = $_SERVER["HTTP_CLIENT_IP"];
    else if ($_SERVER["REMOTE_ADDR"])
        $ip = $_SERVER["REMOTE_ADDR"];
    else if (getenv("HTTP_X_FORWARDED_FOR"))
        $ip = getenv("HTTP_X_FORWARDED_FOR");
    else if (getenv("HTTP_CLIENT_IP"))
        $ip = getenv("HTTP_CLIENT_IP");
    else if (getenv("REMOTE_ADDR"))
        $ip = getenv("REMOTE_ADDR");
    else
        $ip = "Unknown";
    return $ip;
}
echo GetIP();
?&gt;</pre><p><br /></p>', 1, '2012-08-02 15:30:53', 162, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (23, 5, '弹出窗口插件colorbox ', '', '<p> </p><p>官方网站：<a href="http://www.jacklmoore.com/colorbox" target="_self">http://www.jacklmoore.com/colorbox</a></p><p> </p><ul><li><p>支持 照片，照片组，幻灯片，ajax，内联 和 iframe 框架。 </p></li><li><p>通过CSS 控制外观，使用用户可以很容易重新定制外观。 </p></li><li><p>不需要更改 ColorBox 的 javascript 文件就可以重新设定其行为。 </p></li><li><p>可以依靠 callback &amp; event-hooks 进行拓展，不需要修改源代码。 </p></li><li><p>非常友好，不需要修改现有的 HTML，所有的选项都通过 JS 设置。 &nbsp;
<p> </p><p>介绍</p><div class="info"><p>colorbox()函数使用一堆key/value对象和一个可选的callback函数</p><p class="code">格式：$(&#39;selector&#39;).colorbox({key:value}, callback);</p><p class="code">例子： $(&#39;a.gallery&#39;).colorbox({transition:&#39;fade&#39;, speed:500});</p><p class="code">还是例子：$(&#39;button&#39;).colorbox({href:&quot;thankyou.html&quot;}); </p></div></p></li><li><div class="info"><table class="FCK__ShowTableBorders"><tbody><tr><th><p> </p><p>设置的值</p></th><th><p> </p><p>默认值</p></th><th><p> </p><p>介绍</p></th></tr><tr style="background-color:#f9f9f9"><td><p>transition</p></td><td>&quot;elastic&quot;</td><td><p>过渡效果，可以是&quot;elastic&quot;, &quot;fade&quot;, or &quot;none&quot;.</p></td></tr><tr><td><p>speed</p></td><td>350</td><td><p>设置过渡效果的持续时间，毫秒</p></td></tr><tr style="background-color:#f9f9f9"><td>href</td><td>false</td><td><p>Example:<span class="code"><span style="color:#000000">$(&#39;h1&#39;).colorbox({href:&quot;welcome.html&quot;})</span></span></p><p><span class="code"><span style="background-color:#ffffff;color:#000000">这个用来设置一个锚标记的值或者一个不是锚的元素，例如图像或者表单的按钮，例如：</span></span></p></td></tr><tr><td>title</td><td>false</td><td><p>这可以为Colorbox设置一个标题</p></td></tr><tr style="background-color:#f9f9f9"><td>rel</td><td>false</td><td><p>Example:<span class="code"><span style="color:#000000">$(&#39;#example a&#39;).colorbox({rel:&#39;group1&#39;})</span></span></p><p><span class="code"><span style="color:#000000">这个可以根据元素的rel属性设置要显示的元素集合，也可以覆盖一个存在的rel属性</span></span></p></td></tr><tr><td>width</td><td>false</td><td><p>Example: &quot;100%&quot;, &quot;500px&quot;, or 500</p><p>设置宽度，包括边框和按钮</p></td></tr><tr style="background-color:#f9f9f9"><td>height</td><td>false</td><td><p> Example: &quot;100%&quot;, &quot;500px&quot;, or 500</p><p>设置高度，包括边框和按钮</p></td></tr><tr><td>innerWidth</td><td>false</td><td><p>Example: &quot;50%&quot;, &quot;500px&quot;, or 500</p><p>这个可以设定一个固定的内大小，包括边框和按钮</p></td></tr><tr style="background-color:#f9f9f9"><td>innerHeight</td><td>false</td><td><p>Example: &quot;50%&quot;, &quot;500px&quot;, or 500</p><p>这个可以设定一个固定的内高度，包括边框和按钮</p></td></tr><tr><td>initialWidth</td><td>300</td><td><p>设置初始化宽度</p></td></tr><tr style="background-color:#f9f9f9"><td>initialHeight</td><td>100</td><td><p>设置初始化高度</p></td></tr><tr><td>maxWidth</td><td>false</td><td><p> Example: &quot;100%&quot;, 500, &quot;500px&quot;</p><p>设置内容的最大宽度</p></td></tr><tr style="background-color:#f9f9f9"><td>maxHeight</td><td>false</td><td><p>Example: &quot;100%&quot;, 500, &quot;500px&quot;</p><p>设置内容的最大高度</p></td></tr><tr><td>scalePhotos</td><td>true</td><td><p>如果是true且maxWidth, maxHeight, innerWidth, innerHeight, width, 或者 height 被设置，</p><p>Colorbox会缩放图片以使用边框</p></td></tr><tr style="background-color:#f9f9f9"><td>scrolling</td><td>true</td><td><p>如果是false,Colorbox不会为了溢出元素设置滚动条</p></td></tr><tr><td>iframe</td><td>false</td><td><p>如果是true，元素会在Iframe中显示</p></td></tr><tr style="background-color:#f9f9f9"><td>inline</td><td>false</td><td><p>Example: <span class="code"><span style="color:#000000">$(&quot;#inline&quot;).colorbox({inline:true, href:&quot;#myForm&quot;});</span></span></p><p><span class="code"><span style="color:#000000">如果是true,jQuery选择器可以用来选择要显示的元素。例如：</span></span></p></td></tr><tr><td>html</td><td>false</td><td><p>Example: <br /><span class="code"><span style="color:#000000">$.fn.colorbox({html:&#39; &nbsp;
<p>Hello</p>&#39;});</span></span> 
<p><span class="code"><span style="color:#000000">这个是直接让你显示HTML代码，例</span></span></p><p> </p><p> </p></p></td></tr><tr style="background-color:#f9f9f9"><td>photo</td><td>false</td><td><p>如果为true，ColorBox只会把元素按照图片显示，防止类似photo.php?pic=1这样的连接被误认为是网页</p></td></tr><tr><td>opacity</td><td>0.85</td><td><p>遮罩层不透明度 从0-1之间取值</p></td></tr><tr style="background-color:#f9f9f9"><td>open</td><td>false</td><td><p>如果为true,ColorBox会自动开启</p></td></tr><tr><td>preloading</td><td>true</td><td><p>如果为True,ColorBox会自动预载要显示图片</p></td></tr><tr style="background-color:#f9f9f9"><td>overlayClose</td><td>true</td><td><p>为true单击遮罩层就可以把ColorBox关闭</p></td></tr><tr><td>slideshow</td><td>false</td><td><p>为True，会自动滚动图片</p></td></tr><tr style="background-color:#f9f9f9"><td>slideshowSpeed</td><td>2500</td><td><p>设置时间，毫秒</p></td></tr><tr><td>slideshowAuto</td><td>true</td><td><p>为tuue，滑动会自动开始</p></td></tr><tr style="background-color:#f9f9f9"><td>slideshowStart</td><td>&quot;start slideshow&quot;</td><td><p>开始自动滑动按钮的文本</p></td></tr><tr><td>slideshowStop</td><td>&quot;stop slideshow&quot;</td><td><p>停止自动滑动按钮的文本</p></td></tr><tr style="background-color:#f9f9f9"><td>current</td><td>&quot;{current} of {total}&quot;</td><td><p>文本内容：现在正在显示的元素序号</p></td></tr><tr><td>previous</td><td>&quot;previous&quot;</td><td><p>“上一个”按钮的文本</p></td></tr><tr style="background-color:#f9f9f9"><td>next</td><td>&quot;next&quot;</td><td><p>“下一个”按钮的文本</p></td></tr><tr><td>close</td><td>&quot;close&quot;</td><td><p>“关闭”按钮的文本</p></td></tr></tbody></table></div><p> </p></li></ul><p> </p>', 1, '2012-08-08 18:35:37', 166, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (24, 5, 'PHP中文字符串切割，生成文章摘要', '', '<p>发两个字符串截取函数，经常用到的，很好！</p><p> </p><p>第一个函数 <span style="font-family:courier new">blog_summary() 生成文章摘要的，能把html标签保留且不会影响整体样式：</span></p><pre class="brush:php;">/******************************** 
 * 生成摘要 
 * @param (string) $body 
 *  正文 
 * @param (int) $size 
 *  摘要长度 
 * @param (int) $format 
 *  输入格式 id 
 *******************************/
function blog_summary($body, $size, $format = NULL){ 
  $_size = mb_strlen($body, ''utf-8''); 
  
  if($_size &lt;= $size) return $body; 
  
  // 输入格式中有 PHP 过滤器 
  if(!isset($format) &amp;&amp; filter_is_php($format)){ 
    return $body; 
  } 
  
  $strlen_var = strlen($body); 
  
  // 不包含 html 标签 
  if(strpos($body, ''&lt;'') === false){ 
    return mb_substr($body, 0, $size); 
  } 
  
  // 包含截断标志，优先 
  if($e = strpos($body, ''&lt;!-- break --&gt;'')){ 
    return mb_substr($body, 0, $e); 
  } 
  
  // html 代码标记 
  $html_tag = 0; 
  
  // 摘要字符串 
  $summary_string = ''''; 
  
  /** 
   * 数组用作记录摘要范围内出现的 html 标签 
   * 开始和结束分别保存在 left 和 right 键名下 
   * 如字符串为：&lt;h3&gt;&lt;p&gt;&lt;b&gt;a&lt;/b&gt;&lt;/h3&gt;，假设 p 未闭合 
   * 数组则为：array(''left'' =&gt; array(''h3'', ''p'', ''b''), ''right'' =&gt; ''b'', ''h3''); 
   * 仅补全 html 标签，&lt;? &lt;% 等其它语言标记，会产生不可预知结果 
   */
  $html_array = array(''left'' =&gt; array(), ''right'' =&gt; array()); 
  for($i = 0; $i &lt; $strlen_var; ++$i) { 
    if(!$size){ 
      break; 
    } 
  
    $current_var = substr($body, $i, 1); 
  
    if($current_var == ''&lt;''){ 
      // html 代码开始 
      $html_tag = 1; 
      $html_array_str = ''''; 
    }else if($html_tag == 1){ 
      // 一段 html 代码结束 
      if($current_var == ''&gt;''){ 
        /** 
         * 去除首尾空格，如 &lt;br /  &gt; &lt; img src="" / &gt; 等可能出现首尾空格 
         */
        $html_array_str = trim($html_array_str); 
  
        /** 
         * 判断最后一个字符是否为 /，若是，则标签已闭合，不记录 
         */
        if(substr($html_array_str, -1) != ''/''){ 
  
          // 判断第一个字符是否 /，若是，则放在 right 单元 
          $f = substr($html_array_str, 0, 1); 
          if($f == ''/''){ 
            // 去掉 / 
            $html_array[''right''][] = str_replace(''/'', '''', $html_array_str); 
          }else if($f != ''?''){ 
            // 判断是否为 ?，若是，则为 PHP 代码，跳过 
  
            /** 
             * 判断是否有半角空格，若有，以空格分割，第一个单元为 html 标签 
             * 如 &lt;h2&gt; &lt;p&gt; 
             */
            if(strpos($html_array_str, '' '') !== false){ 
              // 分割成2个单元，可能有多个空格，如：&lt;h2 class="" id=""&gt; 
              $html_array[''left''][] = strtolower(current(explode('' '', $html_array_str, 2))); 
            }else{ 
              /** 
               * * 若没有空格，整个字符串为 html 标签，如：&lt;b&gt; &lt;p&gt; 等 
               * 统一转换为小写 
               */
              $html_array[''left''][] = strtolower($html_array_str); 
            } 
          } 
        } 
  
        // 字符串重置 
        $html_array_str = ''''; 
        $html_tag = 0; 
      }else{ 
        /** 
         * 将&lt; &gt;之间的字符组成一个字符串 
         * 用于提取 html 标签 
         */
        $html_array_str .= $current_var; 
      } 
    }else{ 
      // 非 html 代码才记数 
      --$size; 
    } 
  
    $ord_var_c = ord($body{$i}); 
  
    switch (true) { 
      case (($ord_var_c &amp; 0xE0) == 0xC0): 
        // 2 字节 
        $summary_string .= substr($body, $i, 2); 
        $i += 1; 
      break; 
      case (($ord_var_c &amp; 0xF0) == 0xE0): 
  
        // 3 字节 
        $summary_string .= substr($body, $i, 3); 
        $i += 2; 
      break; 
      case (($ord_var_c &amp; 0xF8) == 0xF0): 
        // 4 字节 
        $summary_string .= substr($body, $i, 4); 
        $i += 3; 
      break; 
      case (($ord_var_c &amp; 0xFC) == 0xF8): 
        // 5 字节 
        $summary_string .= substr($body, $i, 5); 
        $i += 4; 
      break; 
      case (($ord_var_c &amp; 0xFE) == 0xFC): 
        // 6 字节 
        $summary_string .= substr($body, $i, 6); 
        $i += 5; 
      break; 
      default: 
        // 1 字节 
        $summary_string .= $current_var; 
    } 
  } 
  
  if($html_array[''left'']){ 
    /** 
     * 比对左右 html 标签，不足则补全 
     */
  
    /** 
     * 交换 left 顺序，补充的顺序应与 html 出现的顺序相反 
     * 如待补全的字符串为：&lt;h2&gt;abc&lt;b&gt;abc&lt;p&gt;abc 
     * 补充顺序应为：&lt;/p&gt;&lt;/b&gt;&lt;/h2&gt; 
     */
    $html_array[''left''] = array_reverse($html_array[''left'']); 
  
    foreach($html_array[''left''] as $index =&gt; $tag){ 
      // 判断该标签是否出现在 right 中 
      $key = array_search($tag, $html_array[''right'']); 
      if($key !== false){ 
        // 出现，从 right 中删除该单元 
        unset($html_array[''right''][$key]); 
      }else{ 
        // 没有出现，需要补全 
        $summary_string .= ''&lt;/''.$tag.''&gt;''; 
      } 
    } 
  } 
  return $summary_string.''...''; 
}</pre><p>第二个函数CnSub（）对中文的截取效果很好。</p><pre class="brush:php;">function CnSub($str,$len){  
 if($str=='''' || strlen($str)&lt;=$len) return $str; 
 if(ord(substr($str,$len-1,1))&gt;0xa0) $len++; 
 return substr($str,0,$len); 
}</pre><p> </p><p> </p>', 1, '2012-08-28 00:06:36', 127, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (25, 5, 'DIV外部点击事件', '
	有的时候想做这样的一个效果，弹出层外部点击的时候，关闭这个弹出层，


	好了 现在可以用到这个了

style> 
    body{background:black;} 
    #myDiv{background: #fff;width:250px;height:250px;di...', '<p>有的时候想做这样的一个效果，弹出层外部点击的时候，关闭这个弹出层，</p><p>好了 现在可以用到这个了</p><pre class="brush:css;">style&gt; 
    body{background:black;} 
    #myDiv{background: #fff;width:250px;height:250px;display:none;} 
&lt;/style&gt; 
&lt;div id="myDiv"&gt;This is a div;16&lt;/div&gt; 
&lt;input id="btn" type="button" value="显示DIV" /&gt;</pre><p>JS：</p><pre class="brush:js;">&lt;script type="text/javascript"&gt; 
        var myDiv = $("#myDiv"); 
        $(function () { 
                $("#btn").click(function (event) { 
                    showDiv();//调用显示DIV方法23 
                    $(document).one("click", function () { 
                        //对document绑定一个影藏Div方法24 
                        $(myDiv).hide(); 
                        }); 
                    event.stopPropagation();//阻止事件向上冒泡27  
                    }); 
                $(myDiv).click(function (event) { 
                    event.stopPropagation();//阻止事件向上冒泡 
                    }); 
                }); 
        function showDiv() { 
            $(myDiv).fadeIn(); 
        } 
&lt;/script&gt;</pre><p> </p>', 1, '2012-08-28 00:20:26', 113, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (26, 5, 'JS获取当前URL的参数', '', '<pre class="brush:js;">function GetRequest() {     
    var url = location.search; //获取url中"?"符后的字串     
    var theRequest = new Object();     
    if (url.indexOf("?") != -1) {        
        var str = url.substr(1);        
        strs = str.split("&amp;");        
        for(var i = 0; i &lt; strs.length; i ++) {           
            theRequest[strs[i].split("=")[0]]=unescape(strs[i].split("=")[1]); 
        } 
    } 
    return theRequest; 
}  
　　var Request = new Object(); 
　　Request = GetRequest(); 
    var 参数1,参数2,参数3,参数N; 
    参数1 = Request[''参数1'']; 
    参数2 = Request[''参数2'']; 
    参数3 = Request[''参数3'']; 
    参数N = Request[''参数N''];</pre><p> </p>', 1, '2012-08-28 00:21:22', 111, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (27, 5, 'Ajax结合PHP做动态创建数据表', '', '<p>类型 discuz 安装时候一样的 动态显示创建数据库成功或失败！</p><p> <img style="float:none" title="table.PNG" border="0" hspace="0" src="/Public/Upload/59471347465827.PNG" /></p><p><strong>代码如下：</strong></p><pre class="brush:php;">&lt;?php  
$tableName="dedecmsv57utf8";  
    
//链接数据库 链接数据表  
$conn = @ mysql_connect(''localhost'', ''root'', ''admin00'');   
mysql_select_db($tableName, $conn);  
$Res=mysql_query(''show tables'',$conn);  
    
//得到表名  
while($result=mysql_fetch_assoc($Res)){  
    $key=array_keys($result);  
    $tables[]=$result[$key[0]];  
}  
    
//接收前台传过来的循环数  
$n=$_GET[''n''];  
    
if($n&lt;count($tables)){  
    //开始清空操作！  
    $sql="TRUNCATE TABLE ".$tables[$n];  
    $Res1=mysql_query($sql,$conn);  
    if($Res1){  
        $msg="&lt;font color=''green''&gt;【数据表：".$tables[$n]."】\n\t清空成功...&lt;/font&gt;&lt;br&gt;";  
    }else{  
        $msg="&lt;font color=''red''&gt;【数据表：".$tables[$n]."】\n\t清空失败...&lt;/font&gt;&lt;br&gt;";  
    }  
    $n++;     
    $arr=array(''n''=&gt;$n,''msg''=&gt;$msg);  
    echo json_encode($arr); exit;  
}  
    
?&gt;</pre><p>html：</p><pre class="brush:html;">&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt;  
&lt;html xmlns="http://www.w3.org/1999/xhtml"&gt;  
&lt;head&gt;  
&lt;script src="jquery.min.js" language="javascript" type="text/javascript"&gt;&lt;/script&gt;  
&lt;/head&gt;  
&lt;body&gt;  
&lt;/body&gt;  
&lt;script&gt;  
var n=0;          
function getload(n){  
    var url=''ajax.php?n=''+n;  
    $.ajax({  
        type:''post'',  
        url:url,  
        dataType:''json'',  
        success:function(data){  
            $(''body'').append(data.msg);  
            getload(data.n);  
        }  
        
    });   
            
}  
$(function(){     
    getload(0);       
});  
&lt;/script&gt;  
&lt;/html&gt;</pre><p> </p>', 1, '2012-09-13 00:03:11', 102, 1, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (28, 2, '数据库 存储过程 语法及实例', '', '<p>虽然我现在还不是很懂 ，先留下来~</p><p> </p><p>存储过程如同一门程序设计语言，同样包含了数据类型、流程控制、输入和输出和它自己的函数库。</p><p><br />--------------------基本语法--------------------</p><p><strong>一.创建存储过程</strong><br />create procedure sp_name()<br />begin<br />.........<br />end</p><p><strong>二.调用存储过程</strong><br />1.基本语法：call sp_name()<br />注意：存储过程名称后面必须加括号，哪怕该存储过程没有参数传递</p><p><strong>三.删除存储过程</strong><br />1.基本语法：<br />drop procedure sp_name//</p><p>2.注意事项<br />(1)不能在一个存储过程中删除另一个存储过程，只能调用另一个存储过程</p><p><strong>四.其他常用命令</strong></p><p>1.show procedure status<br />显示数据库中所有存储的存储过程基本信息，包括所属数据库，存储过程名称，创建时间等</p><p>2.show create procedure sp_name<br />显示某一个mysql存储过程的详细信息</p><p><br />--------------------数据类型及运算符--------------------<br /><strong>一、基本数据类型：</strong><br />略</p><p><strong>二、变量：</strong></p><p>自定义变量：DECLARE &nbsp; a INT ; SET a=100; &nbsp; &nbsp;可用以下语句代替：DECLARE a INT DEFAULT 100;</p><p>变量分为<em>用户变量</em>和<em>系统变量</em>，系统变量又分为会话和全局级变量</p><p>用户变量：用户变量名一般以@开头，滥用用户变量会导致程序难以理解及管理</p><p>1、 在mysql客户端使用用户变量<br />mysql&gt; SELECT &#39;Hello World&#39; into @x;<br />mysql&gt; SELECT @x;</p><p>mysql&gt; SET @y=&#39;Goodbye Cruel World&#39;;<br />mysql&gt; select @y;</p><p>mysql&gt; SET @z=1+2+3;<br />mysql&gt; select @z;</p><p><br />2、 在存储过程中使用用户变量</p><p>mysql&gt; CREATE PROCEDURE GreetWorld( ) SELECT CONCAT(@greeting,&#39; World&#39;);<br />mysql&gt; SET @greeting=&#39;Hello&#39;;<br />mysql&gt; CALL GreetWorld( );</p><p><br />3、 在存储过程间传递全局范围的用户变量<br />mysql&gt; CREATE PROCEDURE p1( ) &nbsp; SET @last_procedure=&#39;p1&#39;;<br />mysql&gt; CREATE PROCEDURE p2( ) SELECT CONCAT(&#39;Last procedure was &#39;,@last_procedure);<br />mysql&gt; CALL p1( );<br />mysql&gt; CALL p2( );</p><p> </p><p><strong>三、运算符：</strong><br />1.算术运算符<br />+ &nbsp; &nbsp; 加 &nbsp; SET var1=2+2; &nbsp; &nbsp; &nbsp; 4<br />- &nbsp; &nbsp; 减 &nbsp; SET var2=3-2; &nbsp; &nbsp; &nbsp; 1<br />* &nbsp; &nbsp; &nbsp;乘 &nbsp; SET var3=3*2; &nbsp; &nbsp; &nbsp; 6<br />/ &nbsp; &nbsp; 除 &nbsp; SET var4=10/3; &nbsp; &nbsp; &nbsp;3.3333<br />DIV &nbsp; 整除 SET var5=10 DIV 3; 3<br />% &nbsp; &nbsp; 取模 SET var6=10%3 ; &nbsp; &nbsp; 1</p><p>2.比较运算符<br />&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;大于 1&gt;2 False<br />&lt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;小于 2&lt;1 False<br />&lt;= &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 小于等于 2&lt;=2 True<br />&gt;= &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 大于等于 3&gt;=2 True<br />BETWEEN &nbsp; &nbsp; &nbsp;在两值之间 5 BETWEEN 1 AND 10 True<br />NOT BETWEEN 不在两值之间 5 NOT BETWEEN 1 AND 10 False<br />IN &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 在集合中 5 IN (1,2,3,4) False<br />NOT IN &nbsp; &nbsp; &nbsp; 不在集合中 5 NOT IN (1,2,3,4) True<br />= &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 等于 2=3 False<br />&lt;&gt;, != &nbsp; &nbsp; &nbsp; 不等于 2&lt;&gt;3 False<br />&lt;=&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;严格比较两个NULL值是否相等 NULL&lt;=&gt;NULL True<br />LIKE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;简单模式匹配 &quot;Guy Harrison&quot; LIKE &quot;Guy%&quot; True<br />REGEXP &nbsp; &nbsp; &nbsp; 正则式匹配 &quot;Guy Harrison&quot; REGEXP &quot;[Gg]reg&quot; False<br />IS NULL &nbsp; &nbsp; &nbsp;为空 0 IS NULL False<br />IS NOT NULL 不为空 0 IS NOT NULL True</p><p>3.逻辑运算符</p><p>4.位运算符<br />| &nbsp; 或<br />&amp; &nbsp; 与<br />&lt;&lt; 左移位<br />&gt;&gt; 右移位<br />~ &nbsp; 非(单目运算，按位取反)</p><p>注释：</p><p>mysql存储过程可使用两种风格的注释<br />双横杠：--</p><p>该风格一般用于单行注释<br />c风格：/* 注释内容 */ 一般用于多行注释</p><p>--------------------流程控制--------------------<br /><strong>一、顺序结构</strong><br /><strong>二、分支结构</strong><br />if<br />case</p><p><strong>三、循环结构</strong><br />for循环<br />while循环<br />loop循环<br />repeat until循环</p><p>注：<br />区块定义，常用<br />begin<br />......<br />end;<br />也可以给区块起别名，如：<br />lable:begin<br />...........<br />end lable;<br />可以用leave lable;跳出区块，执行区块以后的代码</p><p>begin和end如同C语言中的{ 和 }。</p><p>--------------------输入和输出--------------------</p><p><strong>mysql存储过程的参数用在存储过程的定义，共有三种参数类型,IN,OUT,INOUT<br /></strong>Create procedure|function([[IN |OUT |INOUT ] 参数名 数据类形...])</p><p><strong>IN 输入参数</strong><br />表示该参数的值必须在调用存储过程时指定，在存储过程中修改该参数的值不能被返回，为默认值</p><p><strong>OUT 输出参数</strong><br />该值可在存储过程内部被改变，并可返回</p><p><strong>INOUT 输入输出参数</strong><br />调用时指定，并且可被改变和返回</p><p>IN参数例子：<br />CREATE PROCEDURE sp_demo_in_parameter(IN p_in INT)<br />BEGIN<br />SELECT p_in; --查询输入参数<br />SET p_in=2; --修改<br />select p_in;--查看修改后的值<br />END;</p><p>执行结果:<br />mysql&gt; set @p_in=1<br />mysql&gt; call sp_demo_in_parameter(@p_in)<br />略<br />mysql&gt; select @p_in;<br />略<br />以上可以看出，p_in虽然在存储过程中被修改，但并不影响@p_id的值</p><p>OUT参数例子<br />创建:<br />mysql&gt; CREATE PROCEDURE sp_demo_out_parameter(OUT p_out INT)<br />BEGIN<br />SELECT p_out;/*查看输出参数*/<br />SET p_out=2;/*修改参数值*/<br />SELECT p_out;/*看看有否变化*/<br />END;</p><p>执行结果:<br />mysql&gt; SET @p_out=1<br />mysql&gt; CALL sp_demo_out_parameter(@p_out)<br />略</p><p>mysql&gt; SELECT @p_out;<br />略</p><p>INOUT参数例子：<br />mysql&gt; CREATE PROCEDURE sp_demo_inout_parameter(INOUT p_inout INT)<br />BEGIN<br />SELECT p_inout;<br />SET p_inout=2;<br />SELECT p_inout;<br />END;</p><p>执行结果：<br />set @p_inout=1<br />call sp_demo_inout_parameter(@p_inout) //<br />略<br />select @p_inout;<br />略</p><p> </p><p> </p><p><strong>附：函数库</strong><br />mysql存储过程基本函数包括：字符串类型，数值类型，日期类型</p><p><strong>一、字符串类</strong><br />CHARSET(str) //返回字串字符集<br />CONCAT (string2 [,… ]) //连接字串<br />INSTR (string ,substring ) //返回substring首次在string中出现的位置,不存在返回0<br />LCASE (string2 ) //转换成小写<br />LEFT (string2 ,length ) //从string2中的左边起取length个字符<br />LENGTH (string ) //string长度<br />LOAD_FILE (file_name ) //从文件读取内容<br />LOCATE (substring , string [,start_position ] ) 同INSTR,但可指定开始位置<br />LPAD (string2 ,length ,pad ) //重复用pad加在string开头,直到字串长度为length<br />LTRIM (string2 ) //去除前端空格<br />REPEAT (string2 ,count ) //重复count次<br />REPLACE (str ,search_str ,replace_str ) //在str中用replace_str替换search_str<br />RPAD (string2 ,length ,pad) //在str后用pad补充,直到长度为length<br />RTRIM (string2 ) //去除后端空格<br />STRCMP (string1 ,string2 ) //逐字符比较两字串大小,<br />SUBSTRING (str , position [,length ]) //从str的position开始,取length个字符,<br />注：mysql中处理字符串时，默认第一个字符下标为1，即参数position必须大于等于1<br />mysql&gt; select substring(’abcd’,0,2);<br />+———————–+<br />| substring(’abcd’,0,2) |<br />+———————–+<br />| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br />+———————–+<br />1 row in set (0.00 sec)</p><p>mysql&gt; select substring(’abcd’,1,2);<br />+———————–+<br />| substring(’abcd’,1,2) |<br />+———————–+<br />| ab &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br />+———————–+<br />1 row in set (0.02 sec)</p><p>TRIM([[BOTH|LEADING|TRAILING] [padding] FROM]string2) //去除指定位置的指定字符<br />UCASE (string2 ) //转换成大写<br />RIGHT(string2,length) //取string2最后length个字符<br />SPACE(count) //生成count个空格</p><p><strong>二、数值类型</strong></p><p>ABS (number2 ) //绝对值<br />BIN (decimal_number ) //十进制转二进制<br />CEILING (number2 ) //向上取整<br />CONV(number2,from_base,to_base) //进制转换<br />FLOOR (number2 ) //向下取整<br />FORMAT (number,decimal_places ) //保留小数位数<br />HEX (DecimalNumber ) //转十六进制<br />注：HEX()中可传入字符串，则返回其ASC-11码，如HEX(’DEF’)返回4142143<br />也可以传入十进制整数，返回其十六进制编码，如HEX(25)返回19<br />LEAST (number , number2 [,..]) //求最小值<br />MOD (numerator ,denominator ) //求余<br />POWER (number ,power ) //求指数<br />RAND([seed]) //随机数<br />ROUND (number [,decimals ]) //四舍五入,decimals为小数位数]</p><p>注：返回类型并非均为整数，如：</p><p>(1)默认变为整形值<br />mysql&gt; select round(1.23);<br />+————-+<br />| round(1.23) |<br />+————-+<br />| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1 |<br />+————-+<br />1 row in set (0.00 sec)</p><p>mysql&gt; select round(1.56);<br />+————-+<br />| round(1.56) |<br />+————-+<br />| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2 |<br />+————-+<br />1 row in set (0.00 sec)</p><p>(2)可以设定小数位数，返回浮点型数据</p><p>mysql&gt; select round(1.567,2);<br />+—————-+<br />| round(1.567,2) |<br />+—————-+<br />| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.57 |<br />+—————-+<br />1 row in set (0.00 sec)</p><p>SIGN (number2 ) //返回符号,正负或0<br />SQRT(number2) //开平方</p><p><strong>三、日期类型</strong></p><p>ADDTIME (date2 ,time_interval ) //将time_interval加到date2<br />CONVERT_TZ (datetime2 ,fromTZ ,toTZ ) //转换时区<br />CURRENT_DATE ( ) //当前日期<br />CURRENT_TIME ( ) //当前时间<br />CURRENT_TIMESTAMP ( ) //当前时间戳<br />DATE (datetime ) //返回datetime的日期部分<br />DATE_ADD (date2 , INTERVAL d_value d_type ) //在date2中加上日期或时间<br />DATE_FORMAT (datetime ,FormatCodes ) //使用formatcodes格式显示datetime<br />DATE_SUB (date2 , INTERVAL d_value d_type ) //在date2上减去一个时间<br />DATEDIFF (date1 ,date2 ) //两个日期差<br />DAY (date ) //返回日期的天<br />DAYNAME (date ) //英文星期<br />DAYOFWEEK (date ) //星期(1-7) ,1为星期天<br />DAYOFYEAR (date ) //一年中的第几天<br />EXTRACT (interval_name FROM date ) //从date中提取日期的指定部分<br />MAKEDATE (year ,day ) //给出年及年中的第几天,生成日期串<br />MAKETIME (hour ,minute ,second ) //生成时间串<br />MONTHNAME (date ) //英文月份名<br />NOW ( ) //当前时间<br />SEC_TO_TIME (seconds ) //秒数转成时间<br />STR_TO_DATE (string ,format ) //字串转成时间,以format格式显示<br />TIMEDIFF (datetime1 ,datetime2 ) //两个时间差<br />TIME_TO_SEC (time ) //时间转秒数]<br />WEEK (date_time [,start_of_week ]) //第几周<br />YEAR (datetime ) //年份<br />DAYOFMONTH(datetime) //月的第几天<br />HOUR(datetime) //小时<br />LAST_DAY(date) //date的月的最后日期<br />MICROSECOND(datetime) //微秒<br />MONTH(datetime) //月<br />MINUTE(datetime) //分</p><p>注：可用在INTERVAL中的类型：DAY ,DAY_HOUR ,DAY_MINUTE ,DAY_SECOND ,HOUR ,HOUR_MINUTE ,HOUR_SECOND ,MINUTE ,MINUTE_SECOND,MONTH ,SECOND ,YEAR<br />DECLARE variable_name [,variable_name...] datatype [DEFAULT value]; <br />其中，datatype为mysql的数据类型，如:INT, FLOAT, DATE, VARCHAR(length)</p><p>例：</p><p>DECLARE l_int INT unsigned default 4000000; <br />DECLARE l_numeric NUMERIC(8,2) DEFAULT 9.95; <br />DECLARE l_date DATE DEFAULT &#39;1999-12-31&#39;; <br />DECLARE l_datetime DATETIME DEFAULT &#39;1999-12-31 23:59:59&#39;;<br />DECLARE l_varchar VARCHAR(255) DEFAULT &#39;This will not be padded&#39;;</p><p> </p><p> </p><p> </p><p><strong><span style="font-family:arial;color:red;font-size:12px">SQL Server</span></strong><strong style="color:red">版语法</strong></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">为了方便说明，数据库使用</span><span style="font-family:arial;color:black;font-size:12px">SQL Server</span><span style="font-family:宋体;color:black;font-size:12px">的示例数据库，</span><span style="font-family:arial;color:black;font-size:12px">Northwind</span><span style="font-family:宋体;color:black;font-size:12px">和</span><span style="font-family:arial;color:black;font-size:12px">pubs</span><span style="font-family:宋体;color:black;font-size:12px">，如果</span><span style="font-family:arial;color:black;font-size:12px">SQL Server</span><span style="font-family:宋体;color:black;font-size:12px">中没有的话，可以按下面的方法安装</span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">1</span><span style="font-family:宋体;color:black;font-size:12px">，下载</span><span style="font-family:arial;color:black;font-size:12px">SQL2000SampleDb.msi,</span><span style="font-family:宋体;color:black;font-size:12px">下载地址是：</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">http://www.microsoft.com/downloads/details.aspx?FamilyId=06616212-0356-46A0-8DA2-EEBC53A68034&amp;display </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">2</span><span style="font-family:宋体;color:black;font-size:12px">，安装后，到默认目录</span><span style="font-family:arial;color:black;font-size:12px">C:\SQL Server 2000 Sample Databases </span><span style="font-family:宋体;color:black;font-size:12px">有</span><span style="font-family:arial;color:black;font-size:12px">instnwnd.sql </span><span style="font-family:宋体;color:black;font-size:12px">，</span><span style="font-family:arial;color:black;font-size:12px">instpubs.sql</span><span style="font-family:宋体;color:black;font-size:12px">两个文件</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">3</span><span style="font-family:宋体;color:black;font-size:12px">，在</span><span style="font-family:arial;color:black;font-size:12px">sql server</span><span style="font-family:宋体;color:black;font-size:12px">中运行这两个</span><span style="font-family:arial;color:black;font-size:12px">sql </span><span style="font-family:宋体;color:black;font-size:12px">就可以创建你</span><span style="font-family:arial;color:black;font-size:12px">Northwind</span><span style="font-family:宋体;color:black;font-size:12px">和</span><span style="font-family:arial;color:black;font-size:12px">pubs</span><span style="font-family:宋体;color:black;font-size:12px">数据库。</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">下面开始学</span><span style="font-family:arial;color:black;font-size:12px">T-SQL</span><span style="font-family:宋体;color:black;font-size:12px">的语法</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">一</span><span style="font-family:arial;color:black;font-size:12px">.</span><span style="font-family:宋体;color:black;font-size:12px">注释</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">-- </span><span style="font-family:宋体;color:black;font-size:12px">单行注释，从这到本行结束为注释</span><span style="font-family:arial;color:black;font-size:12px">,</span><span style="font-family:宋体;color:black;font-size:12px">类似</span><span style="font-family:arial;color:black;font-size:12px">C++,c#</span><span style="font-family:宋体;color:black;font-size:12px">中</span><span style="font-family:arial;color:black;font-size:12px">// </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">/* … */ </span><span style="font-family:宋体;color:black;font-size:12px">多行注释，类似</span><span style="font-family:arial;color:black;font-size:12px">C++</span><span style="font-family:宋体;color:black;font-size:12px">，</span><span style="font-family:arial;color:black;font-size:12px">C#</span><span style="font-family:宋体;color:black;font-size:12px">中</span><span style="font-family:arial;color:black;font-size:12px">/* … */ </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">二</span><span style="font-family:arial;color:black;font-size:12px">.</span><span style="font-family:宋体;color:black;font-size:12px">变量（</span><span style="font-family:arial;color:black;font-size:12px">int, smallint, tinyint, decimal,float,real, money ,smallmoney, text ,image, char, varchar</span><span style="font-family:宋体;color:black;font-size:12px">。。。。。。）</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">语法：</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">DECLARE </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">{ </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">{@local_variable data_type} </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">} [,...n] </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">例如：</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">declare @ID int --</span><span style="font-family:宋体;color:black;font-size:12px">申明一个名为</span><span style="font-family:arial;color:black;font-size:12px">@ID</span><span style="font-family:宋体;color:black;font-size:12px">的变量，类型为</span><span style="font-family:arial;color:black;font-size:12px">int</span><span style="font-family:宋体;color:black;font-size:12px">型</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">三</span><span style="font-family:arial;color:black;font-size:12px">.</span><span style="font-family:宋体;color:black;font-size:12px">在</span><span style="font-family:arial;color:black;font-size:12px">SQL Server</span><span style="font-family:宋体;color:black;font-size:12px">窗口中打印出变量的值</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">语法：</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">PRINT &#39;any ASCII text&#39; | @local_variable | @@FUNCTION | string_expr </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">四</span><span style="font-family:arial;color:black;font-size:12px">.</span><span style="font-family:宋体;color:black;font-size:12px">变量赋值</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">例如：</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">--</span><span style="font-family:宋体;color:black;font-size:12px">从数据表中取出第一行数据的</span><span style="font-family:arial;color:black;font-size:12px">ID,</span><span style="font-family:宋体;color:black;font-size:12px">赋值给变量</span><span style="font-family:arial;color:black;font-size:12px">@id</span><span style="font-family:宋体;color:black;font-size:12px">，然后打印出来</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Declare @ID int </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Set @ID = (select top(1) categoryID from categories) </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Print @ID </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">在</span><span style="font-family:arial;color:black;font-size:12px">SQL</span><span style="font-family:宋体;color:black;font-size:12px">中，我们不能像代码那样直接给变量赋值，例如</span><span style="font-family:arial;color:black;font-size:12px">@id = 1</span><span style="font-family:宋体;color:black;font-size:12px">，如果要达到这样的功能，可以这样写：</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Declare @ID int </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Set @ID = (select 1) -- </span><span style="font-family:宋体;color:black;font-size:12px">类似</span><span style="font-family:arial;color:black;font-size:12px"> @ID=1 </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Select @id=1 -- </span><span style="font-family:宋体;color:black;font-size:12px">类似</span><span style="font-family:arial;color:black;font-size:12px"> @ID=1 </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Print @ID </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">五</span><span style="font-family:arial;color:black;font-size:12px">.</span><span style="font-family:宋体;color:black;font-size:12px">变量运算</span><span style="font-family:arial;color:black;font-size:12px">(+,-,*,/,……) </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">以下必要时候省略变量申明</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Set @ID = (select 1+5) --</span><span style="font-family:宋体;color:black;font-size:12px">类似</span><span style="font-family:arial;color:black;font-size:12px"> @ID=1+5 </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Set @ID=(select 1-@ID) --</span><span style="font-family:宋体;color:black;font-size:12px">类似</span><span style="font-family:arial;color:black;font-size:12px"> @ID=1-@ID </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">六</span><span style="font-family:arial;color:black;font-size:12px">.</span><span style="font-family:宋体;color:black;font-size:12px">比较操作符</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">? &gt; (greater than). </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">? &lt; (less than). </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">? = (equals). </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">? &lt;= (less than or equal to). </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">? &gt;= (greater than or equal to). </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">? != (not equal to). </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">? &lt;&gt; (not equal to). </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">? ! &lt; (not less than). </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">? !&gt; (not greater than). </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">没什么说的</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">七</span><span style="font-family:arial;color:black;font-size:12px">.</span><span style="font-family:宋体;color:black;font-size:12px">语句块：</span><span style="font-family:arial;color:black;font-size:12px">Begin … end </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">将多条语句作为一个块，类似与</span><span style="font-family:arial;color:black;font-size:12px">C++</span><span style="font-family:宋体;color:black;font-size:12px">，</span><span style="font-family:arial;color:black;font-size:12px">C#</span><span style="font-family:宋体;color:black;font-size:12px">中的</span><span style="font-family:arial;color:black;font-size:12px">{ } </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">例如：</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Begin </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Set @ID1 = (select 1) </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Set @ID2 = (select 2) </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">End </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">八</span><span style="font-family:arial;color:black;font-size:12px">.If</span><span style="font-family:宋体;color:black;font-size:12px">，</span><span style="font-family:arial;color:black;font-size:12px"> if…else… </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">语法：</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">IF Boolean_expression </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">{sql_statement | statement_block} </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">[ELSE </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">{sql_statement | statement_block}] </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">例如：</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">If @id is not null </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Print ‘@id is not null </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">if @ID = 1 </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">begin </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Set @ID = (select 1 + 1) </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">end </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">else </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">begin </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">set @ID=(select 1+2) </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">end </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">上面的例子用到了比较操作符，语句块，和</span><span style="font-family:arial;color:black;font-size:12px">IF</span><span style="font-family:宋体;color:black;font-size:12px">的语法。</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">九</span><span style="font-family:arial;color:black;font-size:12px">.</span><span style="font-family:宋体;color:black;font-size:12px">执行其他存储过程</span><span style="font-family:arial;color:black;font-size:12px"> EXEC </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">例如</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">EXEC dbo.[Sales by Year] @Beginning_Date=’1/01/90’, @Ending_Date=’1/01/08’ </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">十</span><span style="font-family:arial;color:black;font-size:12px">.</span><span style="font-family:宋体;color:black;font-size:12px">事务</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">语法：</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">BEGIN TRAN[SACTION] [transaction_name | @tran_name_variable] </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">例如</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">BEGIN TRAN </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">-- </span><span style="font-family:宋体;color:black;font-size:12px">做某些操作，例如</span><span style="font-family:arial;color:black;font-size:12px">Insert into … </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">if @@error &lt;&gt; 0 </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">BEGIN </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">ROLLBACK TRAN </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">END </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">else </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">BEGIN </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">COMMIT TRAN </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">END </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">十一</span><span style="font-family:arial;color:black;font-size:12px">.</span><span style="font-family:宋体;color:black;font-size:12px">游标</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">我们可以在存储过程中用</span><span style="font-family:arial;color:black;font-size:12px">Select</span><span style="font-family:宋体;color:black;font-size:12px">语句取出每一行数据进行操作，这就需要用到游标。</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">语法：</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">DECLARE cursor_name CURSOR </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">[LOCAL | GLOBAL] </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">[FORWARD_ONLY | SCROLL] </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">[STATIC | KEYSET | DYNAMIC | FAST_FORWARD] </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">[READ_ONLY | SCROLL_LOCKS | OPTIMISTIC] </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">[TYPE_WARNING] </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">FOR select_statement </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">[FOR UPDATE [OF column_name [,...n]]] </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">例如：</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">DECLARE @au_id varchar(11), @au_fname varchar(20) –</span><span style="font-family:宋体;color:black;font-size:12px">申明变量</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">--</span><span style="font-family:宋体;color:black;font-size:12px">申明一个游标</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">DECLARE authors_cursor CURSOR FOR </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">SELECT au_id, au_fname FROM authors </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">--</span><span style="font-family:宋体;color:black;font-size:12px">打开游标</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">OPEN authors_cursor </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">--</span><span style="font-family:宋体;color:black;font-size:12px">取出值</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">FETCH NEXT FROM authors_cursor INTO @au_id, @au_fname </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">--</span><span style="font-family:宋体;color:black;font-size:12px">循环取出游标的值</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">WHILE @@FETCH_STATUS = 0 </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">BEGIN </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Print @au_id </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Print @au_fname </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">Print ‘ ’ </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">FETCH NEXT FROM authors_cursor </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">INTO @au_id, @au_fname </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">END </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">CLOSE authors_cursor –</span><span style="font-family:宋体;color:black;font-size:12px">关闭游标</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:arial;color:black;font-size:12px">DEALLOCATE authors_cursor --</span><span style="font-family:宋体;color:black;font-size:12px">释放游标</span><span style="font-family:arial;color:black;font-size:12px"> </span></p><p style="text-indent:32px"><span style="font-family:宋体;color:black;font-size:12px">我觉得上面的是存储过程常用的一些东东，如果要更深入的了解，更详细的帮助，请参考</span><span style="font-family:arial;color:black;font-size:12px">SQL Server</span><span style="font-family:宋体;color:black;font-size:12px">的帮助文档</span><span style="font-family:arial;color:black;font-size:12px"></span></p><p> </p><p>例子：</p><p>我自己做了一个,没有问题,你可以看一下 &nbsp; <br /> &nbsp;use &nbsp; Northwind &nbsp; <br /> &nbsp;go &nbsp; <br /> &nbsp;create &nbsp; proc &nbsp; test &nbsp; <br /> &nbsp; &nbsp; &nbsp;@StartOrderID &nbsp; int, &nbsp; <br /> &nbsp; &nbsp; &nbsp;@EndOrderID &nbsp; int, &nbsp; <br /> &nbsp; &nbsp; &nbsp;@Code &nbsp; varchar(1000) &nbsp; Out &nbsp; <br /> &nbsp;As &nbsp; <br /> &nbsp; &nbsp; &nbsp;Begin &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Declare &nbsp; @tmp &nbsp; int &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Set &nbsp; @Code=&#39;&#39; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Declare &nbsp; #cur_orders &nbsp; cursor &nbsp; &nbsp; for &nbsp; &nbsp; Select &nbsp; OrderID &nbsp; From &nbsp; Orders &nbsp; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;where &nbsp; OrderID&gt;=@startOrderID &nbsp; and &nbsp; OrderID&lt;=@EndOrderID &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;for &nbsp; read &nbsp; only &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Open &nbsp; #cur_Orders &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fetch &nbsp; next &nbsp; from &nbsp; #cur_orders &nbsp; into &nbsp; @tmp &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;while &nbsp; @@fetch_Status=0 &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Begin &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Set &nbsp; @Code=@Code+&#39;-&#39;+convert(varchar(8),@tmp) &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fetch &nbsp; next &nbsp; from &nbsp; #cur_orders &nbsp; into &nbsp; @tmp &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;End &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;close &nbsp; #cur_Orders &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Deallocate &nbsp; #cur_Orders &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br /> &nbsp; &nbsp; &nbsp;End &nbsp; <br /> &nbsp;go &nbsp; <br /></p><p>续2 &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp;String &nbsp; ret=null; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;try{ &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Class.forName(&quot;com.microsoft.jdbc.sqlserver.SQLServerDriver&quot;); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;String &nbsp; url &nbsp; <br /> &nbsp;=&quot;jdbc:microsoft:sqlserver://192.168.0.102:1433;DatabaseName=Northwind&quot;; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;String &nbsp; user=&quot;sa&quot;; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;String &nbsp; password=&quot;&quot;; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Connection &nbsp; conn= &nbsp; DriverManager.getConnection(url,user,password); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CallableStatement &nbsp; stmt=conn.prepareCall(&quot;exec &nbsp; test &nbsp; ?,?,?&quot;); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;stmt.setInt(1,10248); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;stmt.setInt(2,10284); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;stmt.registerOutParameter(3,Types.VARCHAR); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;stmt.setString(3,ret); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;stmt.execute(); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;System.out.println(stmt.getString(3)); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;stmt.close(); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;stmt=null; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;conn.close(); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}catch(ClassNotFoundException &nbsp; e){ &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;e.printStackTrace(); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}catch(SQLException &nbsp; e){ &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;e.printStackTrace(); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;} &nbsp; <br /></p><p>上面的例子没有问题,针对你的情况,我又写了一个,应该可以解决你现在的问题 &nbsp; <br /> &nbsp; &nbsp;<br /> &nbsp;-- &nbsp; 新建一个表 &nbsp; <br /> &nbsp; &nbsp; &nbsp;Create &nbsp; table &nbsp; tmpOrders &nbsp; ( &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;OrderID &nbsp; int, &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CustomerID &nbsp; nchar(5) &nbsp; <br /> &nbsp; &nbsp;) &nbsp; <br /> &nbsp; &nbsp;<br /> &nbsp;--把Orders &nbsp; 里的OrderID列全部插入,这样Orders与tmpOrders之间就是1:1关系了 &nbsp; <br /> &nbsp;insert &nbsp; into &nbsp; tmpOrders &nbsp; <br /> &nbsp;Select &nbsp; distinct &nbsp; orderID,&#39;tmp&#39; &nbsp; from &nbsp; Orders &nbsp; <br /> &nbsp; &nbsp;<br /> &nbsp;create &nbsp; proc &nbsp; test &nbsp; <br /> &nbsp; &nbsp; &nbsp;@StartOrderID &nbsp; int, &nbsp; <br /> &nbsp; &nbsp; &nbsp;@EndOrderID &nbsp; int, &nbsp; <br /> &nbsp; &nbsp; &nbsp;@Code &nbsp; varchar(1000) &nbsp; Out &nbsp; <br /> &nbsp;As &nbsp; <br /> &nbsp; &nbsp; &nbsp;Begin &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Declare &nbsp; @newOrderID &nbsp; int &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Declare &nbsp; @newCustomerID &nbsp; nchar(5) &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Declare &nbsp; @DummyInt &nbsp; int &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Declare &nbsp; @DummyChar &nbsp; nchar(5) &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Set &nbsp; @Code=&#39;&#39; &nbsp; &nbsp; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1:1 &nbsp; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;temp &nbsp; table/formal &nbsp; table &nbsp; is &nbsp; synchronized &nbsp; tmpOrders &nbsp; &nbsp; &lt;---&gt; &nbsp; Orders &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fetch &nbsp; from &nbsp; Orders, &nbsp; update &nbsp; tmpOrders &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*/ &nbsp; <br /> &nbsp; &nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-- &nbsp; for &nbsp; temp &nbsp; table &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Declare &nbsp; #cur_tmpOrders &nbsp; &nbsp; Cursor &nbsp; for &nbsp; select &nbsp; OrderID,CustomerID &nbsp; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;From &nbsp; tmpOrders &nbsp; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;where &nbsp; OrderID&gt;=@startOrderID &nbsp; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;and &nbsp; OrderID&lt;=@EndOrderID &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;for &nbsp; &nbsp; update &nbsp; <br /> &nbsp; &nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--for &nbsp; formal &nbsp; table &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Declare &nbsp; #cur_orders &nbsp; cursor &nbsp; &nbsp; for &nbsp; &nbsp; Select &nbsp; OrderID,CustomerID &nbsp; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;From &nbsp; Orders &nbsp; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;where &nbsp; OrderID&gt;=@startOrderID &nbsp; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;and &nbsp; OrderID&lt;=@EndOrderID &nbsp; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;for &nbsp; read &nbsp; only &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Open &nbsp; #cur_Orders &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Open &nbsp; #cur_tmpOrders &nbsp; <br /> &nbsp; &nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fetch &nbsp; next &nbsp; from &nbsp; #cur_tmpOrders &nbsp; into &nbsp; @DummyInt,@dummyChar &nbsp; --Important!!! &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fetch &nbsp; next &nbsp; from &nbsp; #cur_orders &nbsp; into &nbsp; @NewOrderID,@NewCustomerID &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;while &nbsp; @@fetch_Status=0 &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Begin &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--Set &nbsp; @Code=@Code+&#39;-&#39;+convert(varchar(8),@NewOrderID) &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--update &nbsp; tempOrders &nbsp; use &nbsp; corresponding &nbsp; Orders&#39; &nbsp; data &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Update &nbsp; tmpOrders &nbsp; set &nbsp; customerID=@newCustomerID &nbsp; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;where &nbsp; current &nbsp; of &nbsp; #cur_tmpOrders &nbsp; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--pay &nbsp; attention &nbsp; to &nbsp; sequence &nbsp; of &nbsp; cursor &nbsp; fetch &nbsp; action! &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fetch &nbsp; next &nbsp; from &nbsp; #cur_tmpOrders &nbsp; into &nbsp; @DummyInt,@dummyChar &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if &nbsp; @@fetch_Status&lt;&gt;0 &nbsp; &nbsp; break; &nbsp; -- &nbsp; 没有行了 &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fetch &nbsp; next &nbsp; from &nbsp; #cur_orders &nbsp; into &nbsp; @newOrderID,@NewCustomerID &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;End &nbsp; <br /> &nbsp; &nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;close &nbsp; #cur_Orders &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;close &nbsp; #cur_tmpOrders &nbsp; <br /> &nbsp; &nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Deallocate &nbsp; #cur_Orders &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Deallocate &nbsp; #cur_tmpOrders &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Set &nbsp; @Code=&#39;Ok&#39; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br /> &nbsp; &nbsp; &nbsp;End &nbsp; </p><p> </p><p>程序如下 &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;try{ &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Class.forName(&quot;com.microsoft.jdbc.sqlserver.SQLServerDriver&quot;); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;String &nbsp; url= &nbsp; <br /> &nbsp;&quot;jdbc:microsoft:sqlserver://192.168.0.102:1433;DatabaseName=Northwind&quot;; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;String &nbsp; user=&quot;sa&quot;; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;String &nbsp; password=&quot;&quot;; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Connection &nbsp; conn= &nbsp; DriverManager.getConnection(url,user,password); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CallableStatement &nbsp; stmt=conn.prepareCall(&quot;exec &nbsp; test &nbsp; &nbsp; ?,?,?&quot;); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;stmt.setInt(1,10248); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;stmt.setInt(2,10284); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;stmt.registerOutParameter(3,Types.VARCHAR,1000); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;stmt.setString(3,ret); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;stmt.executeUpdate(); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;System.out.println(stmt.getString(3)); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;stmt.close(); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;stmt=null; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;conn.close(); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;conn=null; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}catch(ClassNotFoundException &nbsp; e){ &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;e.printStackTrace(); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}catch(SQLException &nbsp; e){ &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;e.printStackTrace(); &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;} &nbsp; <br /><br /></p><p> </p>', 1, '2012-09-25 17:06:06', 84, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (29, 5, '触发器 的详解与实例', '', '<p><strong>一、创建一个简单的触发器 </strong></p><p> </p><p>触发器是一种特殊的存储过程，类似于事件函数，SQL Server™ 允许为 INSERT、UPDATE、DELETE 创建触发器，即当在表中插入、更新、删除记录时，触发一个或一系列 T-SQL语句。</p><p>触发器可以在查询分析器里创建，也可以在表名上点右键-&gt;“所有任务”-&gt;“管理触发器”来创建，不过都是要写 T-SQL 语句的，只是在查询分析器里要先确定当前操作的数据库。</p><p>创建触发器用 CREATE TRIGGER<br /><br />CREATE TRIGGER 触发器名称<br />ON 表名<br />FOR INSERT、UPDATE 或 DELETE<br />AS<br /> &nbsp; &nbsp;T-SQL 语句<br />注意：触发器名称是不加引号的。<br /><br />如下是联机丛书上的一个示例，当在 titles 表上更改记录时，发送邮件通知 MaryM。<br />CREATE TRIGGER reminder<br />ON titles<br />FOR INSERT, UPDATE, DELETE <br />AS<br /> &nbsp; EXEC master..xp_sendmail &#39;MaryM&#39;, <br /> &nbsp; &nbsp; &nbsp;&#39;Don&#39;&#39;t forget to print a report for the distributors.&#39;</p><p> </p><p><strong>二、删除触发器 </strong></p><p> </p><p>用查询分析器删除<br />在查询分析器中使用 drop trigger 触发器名称 来删除触发器。<br />也可以同时删除多个触发器：drop trigger 触发器名称,触发器名称...<br />注意：触发器名称是不加引号的。在删除触发器之前可以先看一下触发器是否存在：<br />if Exists(select name from sysobjects where name=触发器名称 and xtype=&#39;TR&#39;)<br /></p><p>用企业管理器删除<br />在企业管理器中，在表上点右键-&gt;“所有任务”-&gt;“管理触发器”，选中所要删除的触发器，然后点击“删除”。</p><p> </p><p><strong>三、重命名触发器 </strong></p><p> </p><p>用查询分析器重命名<br />exec sp_rename 原名称, 新名称<br />sp_rename 是 SQL Server™ 自带的一个存储过程，用于更改当前数据库中用户创建的对象的名称，如表名、列表、索引名等。</p><p>用企业管理器重命名<br />在表上点右键-&gt;“所有任务”-&gt;“管理触发器”，选中所要重命名的触发器，修改触发器语句中的触发器名称，点击“确定”。</p><p> </p><p><strong>四、more....</strong> </p><p> </p><p>INSTEAD OF<br />执行触发器语句，但不执行触发触发器的 SQL 语句，比如试图删除一条记录时，将执行触发器指定的语句，此时不再执行 delete 语句。例：<br />create trigger f<br />on tbl<br />instead of delete<br />as<br /> &nbsp; &nbsp;insert into Logs...</p><p>IF UPDATE(列名)<br />检查是否更新了某一列，用于 insert 或 update，不能用于 delete。例：<br />create trigger f<br />on tbl<br />for update<br />as<br /> &nbsp; &nbsp;if update(status) or update(title)<br /> &nbsp; &nbsp; &nbsp; &nbsp;sql_statement --更新了 status 或 title 列</p><p>inserted、deleted<br />这是两个虚拟表，inserted 保存的是 insert 或 update 之后所影响的记录形成的表，deleted 保存的是 delete 或 update 之前所影响的记录形成的表。例：<br />create trigger tbl_delete<br />on tbl<br />for delete<br />as<br /> &nbsp; &nbsp;declare @title varchar(200)<br /> &nbsp; &nbsp;select @title=title from deleted<br /> &nbsp; &nbsp;insert into Logs(logContent) values(&#39;删除了 title 为：&#39; + title + &#39;的记录&#39;)<br />说明：如果向 inserted 或 deleted 虚拟表中取字段类型为 text、image 的字段值时，所取得的值将会是 null。</p><p> </p><p><strong>五、查看数据库中所有的触发器 </strong></p><p> </p><p>在查询分析器中运行： </p><p>use 数据库名<br />go<br />select*fromsysobjectswhere xtype=&#39;TR&#39; </p><p>sysobjects 保存着数据库的对象，其中 xtype 为 TR 的记录即为触发器对象。在 name 一列，我们可以看到触发器名称。</p><p> </p><p><strong>六、sp_helptext 查看触发器内容 </strong></p><p> </p><p>用查询分析器查看</p><p>use 数据库名<br />go<br />execsp_helptext&#39;触发器名称&#39; </p><p>将会以表的样式显示触发器内容。 <br />除了触发器外，sp_helptext 还可以显示 规则、默认值、未加密的存储过程、用户定义函数、视图的文本 </p><p>用企业管理器查看</p><p>在表上点右键-&gt;“所有任务”-&gt;“管理触发器”，选择所要查看的触发器存储过程 </p><p> </p><p><strong>七、sp_helptrigger 用于查看触发器的属性</strong> </p><p> </p><p>sp_helptrigger 有两个参数：第一个参数为表名；第二个为触发器类型，为 char(6) 类型，可以是 INSERT、UPDATE、DELETE，如果省略则显示指定表中所有类型触发器的属性。</p><p>例：</p><p>use 数据库名<br />go<br />execsp_helptrigger tbl </p><p> </p><p><strong>八、递归、嵌套触发器</strong> </p><p> </p><p>递归分两种，间接递归和直接递归。我们举例解释如下，假如有表1、表2名称分别为 T1、T2，在 T1、T2 上分别有触发器 G1、G2。</p><p>间接递归：对 T1 操作从而触发 G1，G1 对 T2 操作从而触发 G2，G2 对 T1 操作从而再次触发 G1... 直接递归：对 T1 操作从而触发 G1，G1 对 T1 操作从而再次触发 G1... </p><p>嵌套触发器</p><p>类似于间接递归，间接递归必然要形成一个环，而嵌套触发器不一定要形成一个环，它可以 T1-&gt;T2-&gt;T3...这样一直触发下去，最多允许嵌套 32 层。</p><p>设置直接递归</p><p>默认情况下是禁止直接递归的，要设置为允许有两种方法：</p><p>T-SQL：exec sp_dboption &#39;dbName&#39;, &#39;recursive triggers&#39;, true EM：数据库上点右键-&gt;属性-&gt;选项。 </p><p>设置间接递归、嵌套</p><p>默认情况下是允许间接递归、嵌套的，要设置为禁止有两种方法：</p><p>T-SQL：exec sp_configure &#39;nested triggers&#39;, 0 --第二个参数为 1 则为允许 EM：注册上点右键-&gt;属性-&gt;服务器设置。 </p><p><br /></p><p><strong>九、触发器回滚 </strong></p><p> </p><p>我们看到许多注册系统在注册后都不能更改用户名，但这多半是由应用程序决定的， 如果直接打开数据库表进行更改，同样可以更改其用户名，在触发器中利用回滚就可以巧妙地实现无法更改用户名。</p><p>use 数据库名<br />go<br />create trigger tr<br />on 表名<br />for update<br />as<br /> &nbsp; &nbsp;if update(userName)<br /> &nbsp; &nbsp; &nbsp; &nbsp;rollback tran</p><p>关键在最后两句，其解释为：如果更新了 userName 列，就回滚事务。</p><p> </p><p><strong>十、禁用、启用触发器 </strong></p><p> </p><p>禁用：alter table 表名 disable trigger 触发器名称<br />启用：alter table 表名 enable trigger 触发器名称</p><p>如果有多个触发器，则各个触发器名称之间用英文逗号隔开。</p><p>如果把“触发器名称”换成“ALL”，则表示禁用或启用该表的全部触发器。</p><p>SQL触发器实例1<br /><br /></p>定义： 何为触发器？在SQL Server里面也就是对某一个表的一定的操作，触发某种条件，从而执行的一段程序。触发器是一个特殊的存储过程。 <br /> &nbsp; &nbsp; &nbsp;常见的触发器有三种：分别应用于Insert , Update , Delete 事件。 <br /><br /> &nbsp; &nbsp; &nbsp;我为什么要使用触发器？比如，这么两个表： <br /><br /> &nbsp; &nbsp; &nbsp;Create Table Student( &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--学生表 <br /> &nbsp; &nbsp; &nbsp; &nbsp;StudentID int primary key, &nbsp; &nbsp; &nbsp; --学号 <br /> &nbsp; &nbsp; &nbsp; &nbsp;.... <br /> &nbsp; &nbsp; &nbsp; ) <br /><br /> &nbsp; &nbsp; &nbsp;Create Table BorrowRecord( &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --学生借书记录表 <br /> &nbsp; &nbsp; &nbsp; &nbsp;BorrowRecord &nbsp; int identity(1,1), &nbsp; &nbsp; &nbsp; --流水号 &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp;StudentID &nbsp; &nbsp; &nbsp;int , &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--学号 <br /> &nbsp; &nbsp; &nbsp; &nbsp;BorrowDate &nbsp; &nbsp; datetime, &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--借出时间 <br /> &nbsp; &nbsp; &nbsp; &nbsp;ReturnDAte &nbsp; &nbsp; Datetime, &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--归还时间 <br /> &nbsp; &nbsp; &nbsp; &nbsp;... <br /> &nbsp; &nbsp; &nbsp;) <br /><br /> &nbsp; &nbsp; 用到的功能有: <br /> &nbsp; &nbsp; &nbsp; &nbsp;1.如果我更改了学生的学号,我希望他的借书记录仍然与这个学生相关(也就是同时更改借书记录表的学号); <br /> &nbsp; &nbsp; &nbsp; &nbsp;2.如果该学生已经毕业，我希望删除他的学号的同时，也删除它的借书记录。 <br /> &nbsp; &nbsp; 等等。 <br /><br /> &nbsp; &nbsp; 这时候可以用到触发器。对于1，创建一个Update触发器： <br /><br /> &nbsp; &nbsp; Create Trigger truStudent <br /> &nbsp; &nbsp; &nbsp; On Student &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --在Student表中创建触发器 <br /> &nbsp; &nbsp; &nbsp; for Update &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--为什么事件触发 <br /> &nbsp; &nbsp; As &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--事件触发后所要做的事情 <br /> &nbsp; &nbsp; &nbsp; if Update(StudentID) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br /> &nbsp; &nbsp; &nbsp; begin <br /><br /> &nbsp; &nbsp; &nbsp; &nbsp; Update BorrowRecord <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Set StudentID=i.StudentID <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; From BorrowRecord br , Deleted &nbsp; d ,Inserted i &nbsp; &nbsp; &nbsp;--Deleted和Inserted临时表 <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Where br.StudentID=d.StudentID <br /><br /> &nbsp; &nbsp; &nbsp; end &nbsp; &nbsp; &nbsp; &nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br /> &nbsp; &nbsp; 理解触发器里面的两个临时的表：Deleted , Inserted 。注意Deleted 与Inserted分别表示触发事件的表“旧的一条记录”和“新的一条记录”。 <br /> &nbsp; &nbsp; 一个数据库系统中有两个虚拟表用于存储在表中记录改动的信息，分别是： <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 虚拟表Inserted &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 虚拟表Deleted <br /><br />在表记录新增时 &nbsp; &nbsp; 存放新增的记录 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 不存储记录 <br /> &nbsp; &nbsp; &nbsp; &nbsp; 修改时 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 存放用来更新的新记录 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 存放更新前的记录 <br /> &nbsp; &nbsp; &nbsp; &nbsp; 删除时 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 不存储记录 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 存放被删除的记录 <br /><br /><br /> &nbsp; &nbsp; 一个Update 的过程可以看作为：生成新的记录到Inserted表，复制旧的记录到Deleted表，然后删除Student记录并写入新纪录。 <br /><br /> &nbsp; &nbsp; 对于2，创建一个Delete触发器 <br /> &nbsp; &nbsp; Create trigger trdStudent <br /> &nbsp; &nbsp; &nbsp; On Student <br /> &nbsp; &nbsp; &nbsp; for Delete <br /> &nbsp; &nbsp; As <br /> &nbsp; &nbsp; &nbsp; Delete BorrowRecord <br /> &nbsp; &nbsp; &nbsp; &nbsp; From BorrowRecord br , Delted d <br /> &nbsp; &nbsp; &nbsp; &nbsp; Where br.StudentID=d.StudentID <br /><br /> &nbsp; &nbsp; 从这两个例子我们可以看到了触发器的关键：A.2个临时的表；B.触发机制。 <br /><br /><strong>SQL触发器实例2</strong><br /><br /><p>/* <br />建立虚拟测试环境，包含：表[卷烟库存表]，表[卷烟销售表]。 <br />请大家注意跟踪这两个表的数据，体会触发器到底执行了什么业务逻辑，对数据有什么影响。 <br />为了能更清晰的表述触发器的作用，表结构存在数据冗余，且不符合第三范式，这里特此说明。 <br />*/ <br />USE Master <br />GO <br /><br />IF EXISTS (SELECT NAME FROM SYSOBJECTS WHERE XTYPE = ’U’ AND NAME = ’卷烟库存表’) <br />DROP TABLE 卷烟库存表 <br />GO <br />IF EXISTS (SELECT NAME FROM SYSOBJECTS WHERE XTYPE = ’U’ AND NAME = ’卷烟销售表’) <br />DROP TABLE 卷烟销售表 <br />GO <br /><br />--业务规则：销售金额 = 销售数量 * 销售单价 业务规则。 <br /><br />CREATE TABLE 卷烟销售表 <br />( <br />卷烟品牌 VARCHAR(40) PRIMARY KEY NOT NULL, <br />购货商 VARCHAR(40) NULL, <br />销售数量 INT NULL, <br />销售单价 MONEY NULL, <br />销售金额 MONEY NULL <br />) <br />GO <br /><br />--业务规则：库存金额 = 库存数量 * 库存单价 业务规则。 <br /><br />CREATE TABLE 卷烟库存表 <br />( <br />卷烟品牌 VARCHAR(40) PRIMARY KEY NOT NULL, <br />库存数量 INT NULL, <br />库存单价 MONEY NULL, <br />库存金额 MONEY NULL <br />) <br />GO <br /><br /><strong>--创建触发器，示例1 <br /></strong><br />/* <br />创建触发器[T_INSERT_卷烟库存表]，这个触发器较简单。 <br />说明： 每当[卷烟库存表]发生 INSERT 动作，则引发该触发器。 <br />触发器功能： 强制执行业务规则，保证插入的数据中，库存金额 = 库存数量 * 库存单价。 <br />注意： [INSERTED]、[DELETED]为系统表，不可创建、修改、删除，但可以调用。 <br />重要： 这两个系统表的结构同插入数据的表的结构。 <br />*/ <br />IF EXISTS (SELECT NAME FROM SYSOBJECTS WHERE XTYPE = ’TR’ AND NAME = ’T_INSERT_卷烟库存表’) <br />DROP TRIGGER T_INSERT_卷烟库存表 <br />GO <br /><br />CREATE TRIGGER T_INSERT_卷烟库存表 <br />ON 卷烟库存表 <br />FOR INSERT <br />AS <br />--提交事务处理 <br />BEGIN TRANSACTION <br />--强制执行下列语句，保证业务规则 <br />UPDATE 卷烟库存表 <br />SET 库存金额 = 库存数量 * 库存单价 <br />WHERE 卷烟品牌 IN (SELECT 卷烟品牌 from INSERTED) <br />COMMIT TRANSACTION <br />GO <br /><br />/* <br />针对[卷烟库存表]，插入测试数据： <br />注意，第一条数据（红塔山新势力）中的数据符合业务规则， <br />第二条数据（红塔山人为峰）中，[库存金额]空，不符合业务规则， <br />第三条数据（云南映像）中，[库存金额]不等于[库存数量]乘以[库存单价]，不符合业务规则。 <br />第四条数据库存数量为0。 <br />请注意在插入数据后，检查[卷烟库存表]中的数据是否 库存金额 = 库存数量 * 库存单价。 <br />*/ <br /><br />INSERT INTO 卷烟库存表(卷烟品牌,库存数量,库存单价,库存金额) <br />SELECT ’红塔山新势力’,100,12,1200 UNION ALL <br />SELECT ’红塔山人为峰’,100,22,NULL UNION ALL <br />SELECT ’云南映像’,100,60,500 UNION ALL <br />SELECT ’玉溪’,0,30,0 <br />GO <br /><br /><strong>--查询数据 <br /></strong><br />SELECT * FROM 卷烟库存表 <br />GO <br />/* <br /><br />结果集 <br /><br />RecordId 卷烟品牌 库存数量 库存单价 库存金额 <br />-------- ------------ -------- ------- --------- <br />1 红塔山新势力 100 12.0000 1200.0000 <br />2 红塔山人为峰 100 22.0000 2200.0000 <br />3 云南映像 100 60.0000 6000.0000 <br />4 玉溪 0 30.0000 .0000 <br /><br />（所影响的行数为 4 行） <br /><br />*/ <br /><br /><strong>--触发器示例2 <br /><br /></strong>/* <br />创建触发器[T_INSERT_卷烟销售表]，该触发器较复杂。 <br />说明: 每当[卷烟库存表]发生 INSERT 动作，则引发该触发器。 <br />触发器功能： 实现业务规则。 <br />业务规则: 如果销售的卷烟品牌不存在库存或者库存为零，则返回错误。 <br />否则则自动减少[卷烟库存表]中对应品牌卷烟的库存数量和库存金额。 <br />*/ <br />IF EXISTS (SELECT NAME FROM SYSOBJECTS WHERE XTYPE = ’TR’ AND NAME = ’T_INSERT_卷烟销售表’) <br />DROP TRIGGER T_INSERT_卷烟销售表 <br />GO <br /><br />CREATE TRIGGER T_INSERT_卷烟销售表 <br />ON 卷烟销售表 <br />FOR INSERT <br />AS <br />BEGIN TRANSACTION <br />--检查数据的合法性：销售的卷烟是否有库存，或者库存是否大于零 <br />IF NOT EXISTS ( <br />SELECT 库存数量 <br />FROM 卷烟库存表 <br />WHERE 卷烟品牌 IN (SELECT 卷烟品牌 FROM INSERTED) <br />) <br />BEGIN <br />--返回错误提示 <br />RAISERROR(’错误！该卷烟不存在库存，不能销售。’,16,1) <br />--回滚事务 <br />ROLLBACK <br />RETURN <br />END <br /><br />IF EXISTS ( <br />SELECT 库存数量 <br />FROM 卷烟库存表 <br />WHERE 卷烟品牌 IN (SELECT 卷烟品牌 FROM INSERTED) AND <br />库存数量 &lt;= 0 <br />) <br />BEGIN <br />--返回错误提示 <br />RAISERROR(’错误！该卷烟库存小于等于0，不能销售。’,16,1) <br />--回滚事务 <br />ROLLBACK <br />RETURN <br />END <br /><br />--对合法的数据进行处理 <br /><br />--强制执行下列语句，保证业务规则 <br />UPDATE 卷烟销售表 <br />SET 销售金额 = 销售数量 * 销售单价 <br />WHERE 卷烟品牌 IN (SELECT 卷烟品牌 FROM INSERTED) <br /><br />DECLARE @卷烟品牌 VARCHAR(40) <br />SET @卷烟品牌 = (SELECT 卷烟品牌 FROM INSERTED) <br /><br />DECLARE @销售数量 MONEY <br />SET @销售数量 = (SELECT 销售数量 FROM INSERTED) <br /><br />UPDATE 卷烟库存表 <br />SET 库存数量 = 库存数量 - @销售数量, <br />库存金额 = (库存数量 - @销售数量)*库存单价 <br />WHERE 卷烟品牌 = @卷烟品牌 <br />COMMIT TRANSACTION <br />GO <br /><br />--请大家自行跟踪[卷烟库存表]和[卷烟销售表]的数据变化。 <br />--针对[卷烟销售表]，插入第一条测试数据，该数据是正常的。 <br /><br />INSERT INTO 卷烟销售表(卷烟品牌,购货商,销售数量,销售单价,销售金额) <br />SELECT ’红塔山新势力’,’某购货商’,10,12,1200 <br />GO <br /><br />--针对[卷烟销售表]，插入第二条测试数据，该数据 销售金额 不等于 销售单价 * 销售数量。 <br />--触发器将自动更正数据，使 销售金额 等于 销售单价 * 销售数量。 <br /><br />INSERT INTO 卷烟销售表(卷烟品牌,购货商,销售数量,销售单价,销售金额) <br />SELECT ’红塔山人为峰’,’某购货商’,10,22,2000 <br />GO <br /><br />--针对[卷烟销售表]，插入第三条测试数据，该数据中的卷烟品牌在 卷烟库存表中找不到对应。 <br />--触发器将报错。 <br /><br />INSERT INTO 卷烟销售表(卷烟品牌,购货商,销售数量,销售单价,销售金额) <br />SELECT ’红河V8’,’某购货商’,10,60,600 <br />GO <br /><br />/* <br />结果集 <br />服务器: 消息 50000，级别 16，状态 1，过程 T_INSERT_卷烟销售表，行 15 <br />错误！该卷烟不存在库存，不能销售。 <br />*/ <br /><br />--针对[卷烟销售表]，插入第三条测试数据，该数据中的卷烟品牌在 卷烟库存表中库存为0。 <br />--触发器将报错。 <br /><br />INSERT INTO 卷烟销售表(卷烟品牌,购货商,销售数量,销售单价,销售金额) <br />SELECT ’玉溪’,’某购货商’,10,30,300 <br />GO <br /><br />/* <br />结果集 <br />服务器: 消息 50000，级别 16，状态 1，过程 T_INSERT_卷烟销售表，行 29 <br />错误！该卷烟库存小于等于0，不能销售。 <br />*/ <br />--查询数据 <br />SELECT * FROM 卷烟库存表 <br /><br />SELECT * FROM 卷烟销售表 <br />GO <br /><br />/* <br />补充： <br />1、本示例主要通过一个简单的业务规则实现来进行触发器使用的说明，具体的要根据需要灵活处理； <br />2、关于触发器要理解并运用好 INSERTED ，DELETED 两个系统表； <br />3、本示例创建的触发器都是 FOR INSERT ,具体的语法可参考： <br />/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////</p><p> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Trigger语法</p><p>//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////<br /><br /><br />CREATE TRIGGER trigger_name <br />ON { table | view } <br />[ WITH ENCRYPTION ] --用于加密触发器 <br />{ <br />{ { FOR | AFTER | INSTEAD OF } { [ INSERT ] [ , ] [ UPDATE ] } <br />[ WITH APPEND ] <br />[ NOT FOR REPLICATION ] <br />AS <br />[ { IF UPDATE ( column ) <br />[ { AND | OR } UPDATE ( column ) ] <br />[ ...n ] <br />| IF ( COLUMNS_UPDATED ( ) { bitwise_operator } updated_bitmask ) <br />{ comparison_operator } column_bitmask [ ...n ] <br />} ] <br />sql_statement [ ...n ] <br />} <br />} <br /><br />4、关于触发器，还应该注意 <br />(1)、DELETE 触发器不能捕获 TRUNCATE TABLE 语句。 <br />(2)、触发器中不允许以下 Transact-SQL 语句： <br />ALTER DATABASE CREATE DATABASE DISK INIT <br />DISK RESIZE DROP DATABASE LOAD DATABASE <br />LOAD LOG RECONFIGURE RESTORE DATABASE <br />RESTORE LOG <br />(3)、触发器最多可以嵌套 32 层。 <br /><br />*/ <br /><br />--修改触发器 <br />--实质上，是将 CREATE TRIGGER ... 修改为 ALTER TRIGGER ...即可。 <br /><br />--删除触发器 <br />DROP TRIGGER xxx <br />GO <br /><br />--删除测试环境 <br />DROP TABLE 卷烟库存表 <br />GO <br />DROP TABLE 卷烟销售表 <br />GO <br />DROP TRIGGER T_INSERT_卷烟库存表 <br />GO <br />DROP TRIGGER T_INSERT_卷烟销售表 <br />GO <br />################################################################## <br />触发器的基础知识和例子 <br />：create trigger tr_name <br />on table/view <br />{for | after | instead of } [update][,][insert][,][delete] <br />[with encryption] <br />as {batch | if update (col_name) [{and|or} update (col_name)] } <br /><br />说明： <br />1 tr_name ：触发器名称 <br />2 on table/view ：触发器所作用的表。一个触发器只能作用于一个表 <br />3 for 和after ：同义 <br />4 after 与instead of :sql 2000新增项目afrer 与 instead of 的区别 <br />After <br />在触发事件发生以后才被激活,只可以建立在表上 <br />Instead of <br />代替了相应的触发事件而被执行,既可以建立在表上也可以建立在视图上 <br />5 insert、update、delete：激活触发器的三种操作，可以同时执行，也可选其一 <br />6 if update (col_name)：表明所作的操作对指定列是否有影响，有影响，则激活触发器。此外，因为delete 操作只对行有影响， <br />所以如果使用delete操作就不能用这条语句了(虽然使用也不出错，但是不能激活触发器，没意义)。 <br />7 触发器执行时用到的两个特殊表：deleted ,inserted <br />deleted 和inserted 可以说是一种特殊的临时表，是在进行激活触发器时由系统自动生成的，其结构与触发器作用的表结构是一 <br />样的，只是存放 的数据有差异。 <br /><br />续 <br />下面表格说明deleted 与inserted 数据的差异 <br />deleted 与inserted 数据的差异 <br />Inserted <br />存放进行insert和update 操作后的数据 <br />Deleted <br />存放进行delete 和update操作前的数据 <br />注意：update 操作相当于先进行delete 再进行insert ,所以在进行update操作时，修改前的数据拷贝一条到deleted 表中，修改后 <br />的数据在存到触发器作用的表的同时，也同时生成一条拷贝到insered表中</p><p>/////////</p><p>CREATE TRIGGER [TRIGGER admixture_receive_log] ON dbo.chl_lydj <br />FOR UPDATE<br />AS<br />begin<br /> &nbsp; &nbsp; &nbsp; &nbsp;declare @djsfxg char(10) &nbsp; &nbsp; &nbsp;declare @wtbh char(20)<br /> &nbsp; &nbsp; &nbsp; &nbsp;select @wtbh=wtbh from inserted<br /> &nbsp; &nbsp; &nbsp; update ly_tzk set djsfxg=&#39;已修改&#39; where <br />end<br />if (select data_sfjl from t_logsetup)=&#39;是&#39;<br />begin<br />declare @oldcjmc char (100) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;declare @oldlyrq datetime<br />declare @oldbzbh char (60) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; declare @oldzl char (20)<br />declare @olddj char (10)</p><p>declare @newcjmc char (100) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;declare @newlyrq datetime<br />declare @newbzbh char (60) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; declare @newzl char (20)<br />declare @newdj char (10)</p><p> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; declare @xgr char (20)</p><p> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; select @oldcjmc=cjmc,@oldlyrq=lyrq,@oldbzbh=bzbh,@oldzl=zl,@olddj=dj from deleted<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; select @newcjmc=cjmc,@newlyrq=lyrq,@newbzbh=bzbh,@newzl=zl,@newdj=dj from inserted<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; select @xgr=xgr from t_modifyuser where @wtbh=wtbh<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; if @oldcjmc&lt;&gt;@newcjmc<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; begin<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;insert into t_modifylog (wtbh, mod_time, mod_table, mod_field, ori_value, now_value, mod_people) values<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(@wtbh,getdate(), &#39;chl_lydj&#39;,&#39;cjmc&#39;, @oldcjmc, @newcjmc, @xgr)<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; end</p><p><br />end<br />//////////修改时，直接把‘create’改为‘alter’即可</p><p>/////////////////////////</p><p>CREATE TRIGGER [TRIGGER ly_tzk_syf] ON dbo.ly_tzk <br />FOR insert <br />AS<br />begin<br /> &nbsp; &nbsp; &nbsp; &nbsp; declare @clmc char(100) &nbsp; &nbsp; declare @dwbh char(100) declare @syf char(100) &nbsp; declare @dwgcbh char(100) declare @wtbh char(50) <br /> &nbsp; &nbsp; &nbsp; &nbsp; declare @dj_1 money &nbsp; &nbsp; declare @feiyong_z money &nbsp; declare @feiyong_xf money &nbsp; declare @feiyong_sy money <br /> &nbsp; &nbsp; &nbsp; &nbsp; declare @dj char(20)<br /> &nbsp; &nbsp; &nbsp; &nbsp;select @wtbh=wtbh , @clmc=clmc , @dwbh=dwbh ,@syf=syf from inserted<br /> &nbsp; &nbsp; &nbsp; &nbsp;select &nbsp; @dj=dj from feihao_bz where <br /> &nbsp; &nbsp; &nbsp; &nbsp;select @feiyong_z=feiyong_z, @feiyong_xf=feiyong_xf, @feiyong_sy=feiyong_sy from gongchengxinxi where </p><p> &nbsp; &nbsp; &nbsp; &nbsp;set @dj_1=convert(money ,@dj)<br /> &nbsp; &nbsp; &nbsp; if @dj_1 &lt;&gt;0 <br /> &nbsp; &nbsp; &nbsp; begin<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; set @feiyong_xf=@feiyong_xf+@dj_1<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; set @feiyong_sy=@feiyong_sy-@dj_1<br /> &nbsp; &nbsp; &nbsp; &nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;update ly_tzk set where &nbsp; &nbsp; &nbsp; <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;update gongchengxinxi set , where <br /> &nbsp; &nbsp; &nbsp; end<br /> &nbsp; &nbsp; &nbsp; else &nbsp; &nbsp;update ly_tzk set syf=convert(char , 0.0) where </p><p>end</p><p>//////////////////////</p><p>CREATE TRIGGER [TRIGGER ly_tzk_syf_shanchu] ON dbo.ly_tzk <br />FOR delete <br />AS<br />begin<br /> &nbsp; &nbsp; &nbsp; &nbsp; declare @clmc char(100) &nbsp; &nbsp; declare @dwbh char(100) &nbsp; &nbsp;declare @dwgcbh char(100) declare @wtbh char(50) <br /> &nbsp; &nbsp; &nbsp; &nbsp; declare @feiyong_z money &nbsp; &nbsp;declare @feiyong_xf money &nbsp; declare @feiyong_sy money <br /> &nbsp; &nbsp; &nbsp; &nbsp; declare @syf char(100) &nbsp; &nbsp; &nbsp;declare @syf_1 money<br /> &nbsp; &nbsp; &nbsp; &nbsp; --declare @dj char(20) &nbsp; declare @dj_1 money <br /> &nbsp; &nbsp; &nbsp; &nbsp;select @wtbh=wtbh , @clmc=clmc , @dwbh=dwbh ,@syf=syf from inserted<br /> &nbsp; &nbsp; &nbsp; &nbsp;--select &nbsp; @dj=dj from feihao_bz where <br /> &nbsp; &nbsp; &nbsp; &nbsp;select @feiyong_z=feiyong_z, @feiyong_xf=feiyong_xf, @feiyong_sy=feiyong_sy from gongchengxinxi where </p><p> &nbsp; &nbsp; &nbsp; &nbsp;set @syf_1=convert(money ,@syf)<br /> &nbsp; &nbsp; &nbsp; if @syf_1 &lt;&gt;0 <br /> &nbsp; &nbsp; &nbsp; begin<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; set @feiyong_xf=@feiyong_xf-@syf_1<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; set @feiyong_sy=@feiyong_sy+@syf_1 <br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;update gongchengxinxi set , where <br /> &nbsp; &nbsp; &nbsp; end<br />end</p><p> </p>', 1, '2012-09-25 17:22:17', 105, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (30, 5, 'php二维数组的合并', '', '<p> &nbsp; &nbsp;前两天 公司里的项目用到二维数组的合并，因为需要合并的数组很多</p><p>所以总不肯能把数组一个一个的加到array_merge()里面，今天看到别人写的代码用到了</p><p>php的eval()函数,很是受用 拿出来分享下：</p><p> </p><pre class="brush:php;">&lt;?php 
$data=array( 
    ''aaa''=&gt;array(1,2,3,4,5), 
    ''bbb''=&gt;array(''a'',''b'',''c'',''d'',''e'',''f''), 
    ''ccc''=&gt;array(''中'',''国'',''好'',''声'',''音''), 
); 
$keys=array_keys($data); 
  
for($i=0;$i&lt;count($data);$i++){ 
  $Rule[]=''$data["''.$keys[$i].''"]''; 
} 
//eval(); 
eval(''$merger=array_merge(''.join('','',$Rule).'');''); 
  
echo ''&lt;pre&gt;''; 
var_dump($merger); 
echo ''&lt;/pre&gt;''; 
?&gt;</pre><p> </p>', 1, '2012-09-27 23:30:51', 95, 1, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (31, 6, 'MySql命令和语句大全 (上)', '', '<p><strong>一、连接mysql。<br /></strong>格式： mysql -h主机地址 -u用户名 －p用户密码<br />1、连接到本机上的MYSQL。<br />首先打开DOS窗口，然后进入目录mysql\bin，再键入命令mysql -u root -p，回车后提示你输密码.注意用户名前可以有空格也可以没有空格，但是密码前必须没有空格，否则让你重新输入密码.<br />如果刚安装好MYSQL，超级用户root是没有密码的，故直接回车即可进入到MYSQL中了，MYSQL的提示符是： mysql&gt;<br />2、连接到远程主机上的MYSQL。假设远程主机的IP为：110.110.110.110，用户名为root,密码为abcd123。则键入以下命令：<br /> &nbsp; mysql -h110.110.110.110 -u root -p 123;（注:u与root之间可以不用加空格，其它也一样）<br />3、退出MYSQL命令： exit （回车）</p><p><strong>二、修改密码。<br /></strong>格式：mysqladmin -u用户名 -p旧密码 password 新密码<br />1、给root加个密码ab12。首先在DOS下进入目录mysql\bin，然后键入以下命令<br /> &nbsp; mysqladmin -u root -password ab12<br /> &nbsp; 注：因为开始时root没有密码，所以-p旧密码一项就可以省略了。<br />2、再将root的密码改为djg345。<br /> &nbsp; mysqladmin -u root -p ab12 password djg345<br /><strong>三、增加新用户</strong>。<br />（注意：和上面不同，下面的因为是MYSQL环境中的命令，所以后面都带一个分号作为命令结束符）<br />格式：grant select on 数据库.* to 用户名@登录主机 identified by &quot;密码&quot;<br />1、增加一个用户test1密码为abc，让他可以在任何主机上登录，并对所有数据库有查询、插入、修改、删除的权限。首先用root用户连入MYSQL，然后键入以下命令：<br /> &nbsp; grant select,insert,update,delete on *.* to test1@&quot;%&quot; Identified by &quot;abc&quot;;<br /> &nbsp; 但增加的用户是十分危险的，你想如某个人知道test1的密码，那么他就可以在internet上的任何一台电脑上登录你的mysql数据库并对你的数据可以为所欲为了，解决办法见2。<br />2、增加一个用户test2密码为abc,让他只可以在localhost上登录，并可以对数据库mydb进行查询、插入、修改、删除的操作（localhost指本地主机，即MYSQL数据库所在的那台主机），<br /> &nbsp; 这样用户即使用知道test2的密码，他也无法从internet上直接访问数据库，只能通过MYSQL主机上的web页来访问了。<br /> &nbsp; grant select,insert,update,delete on mydb.* to test2@localhost identified by &quot;abc&quot;;<br /> &nbsp; 如果你不想test2有密码，可以再打一个命令将密码消掉。<br /> &nbsp; grant select,insert,update,delete on mydb.* to test2@localhost identified by &quot;&quot;;</p><p><br /><strong>四、显示命令</strong> <br />mysql&gt; select version(); &nbsp; &nbsp; &nbsp; &nbsp;查看MySQL的版本号<br />mysql&gt; select current_date(); &nbsp; &nbsp; &nbsp; &nbsp;查看MySQL的当前日期<br />mysql&gt; select version(),current_date(); 同时查看MySQL的版本号和当前日期<br />mysql&gt; show databases; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;显示当前存在的数据库<br />mysql&gt; USE mysql &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;选择使用数据库(USE和QUIT命令不需要分号结束)<br />Database changed<br />mysql&gt; select database(); &nbsp; &nbsp; &nbsp; &nbsp;显示当前选择的数据库<br />mysql&gt; show tables; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;显示当前数据库中存在的表<br />mysql&gt; select * from db; &nbsp; &nbsp; &nbsp; &nbsp;显示表(db)的内容 &nbsp; &nbsp;<br />mysql&gt; describe mytable; &nbsp; &nbsp; &nbsp; &nbsp;显示表的结构</p><p>1、显示当前数据库服务器中的数据库列表：<br />mysql&gt; SHOW DATABASES;<br />注意：mysql库里面有MYSQL的系统信息，我们改密码和新增用户，实际上就是用这个库进行操作。<br />2、显示数据库中的数据表：<br />mysql&gt; USE 库名； <br />mysql&gt; SHOW TABLES;<br />3、显示数据表的结构：<br />mysql&gt; DESCRIBE 表名;<br />4、建立数据库：<br />mysql&gt; CREATE DATABASE 库名;<br />5、建立数据表：<br />mysql&gt; USE 库名;<br />mysql&gt; CREATE TABLE 表名 (字段名 VARCHAR(20), 字段名 CHAR(1));<br />6、删除数据库：<br />mysql&gt; DROP DATABASE 库名;<br />7、删除数据表：<br />mysql&gt; DROP TABLE 表名；<br />8、将表中记录清空：<br />mysql&gt; DELETE FROM 表名;<br />9、显示表中的记录：<br />mysql&gt; SELECT * FROM 表名;<br />10、往表中插入记录：<br />mysql&gt; INSERT INTO 表名 VALUES (&quot;hyq&quot;,&quot;M&quot;);<br />11、更新表中数据：<br />mysql-&gt; UPDATE 表名 SET 字段名1=&#39;a&#39;,字段名2=&#39;b&#39; WHERE 字段名3=&#39;c&#39;;<br />12、用文本方式将数据装入数据表中：<br />mysql&gt; LOAD DATA LOCAL INFILE &quot;D:/mysql.txt&quot; INTO TABLE 表名;<br />13、导入.sql文件命令：<br />mysql&gt; USE 数据库名;<br />mysql&gt; SOURCE d:/mysql.sql;<br />14、命令行修改root密码：<br />mysql&gt; UPDATE mysql.user SET password=PASSWORD(&#39;新密码&#39;) WHERE User=&#39;root&#39;;<br />mysql&gt; FLUSH PRIVILEGES;<br />注意用此种方法修改密码时别忘了 password=password(&#39;新密码&#39;) 如果直接用 password=&#39;新密码&#39;，下次登录时会出现问题以至于登录不进去，因为此密码没用经过password()函数处理，这样写入到user表中的密码系统不能识别就会显示用户名和密码错误的信息。<br />如果在修改密码的过程中出现问题以至于没有一个用户可以进入mysql则可以用以下的方法重新修改用户名和密码：<br />bin&gt;mysqld --skip-grant-tables;然后再在 另外一个bin&gt;mysql 便可直接进入mysql ,进入后便修改相关数据。<br />15、显示use的数据库名：<br />mysql&gt; SELECT DATABASE();<br />16、显示当前的user：<br />mysql&gt; SELECT USER();<br /><strong>五、一个建库和建表以及插入数据的实例<br /></strong>drop database if exists school; //如果存在SCHOOL则删除<br />create database school; //建立库SCHOOL<br />use school; //打开库SCHOOL<br />create table teacher //建立表TEACHER<br />(<br />id int(3) auto_increment not null primary key,<br />name char(10) not null,<br />address varchar(50) default &#39;深圳&#39;,<br />year date<br />); //建表结束<br />//以下为插入字段<br />insert into teacher values(&#39;&#39;,&#39;allen&#39;,&#39;大连一中&#39;,&#39;1976-10-10&#39;);<br />insert into teacher values(&#39;&#39;,&#39;jack&#39;,&#39;大连二中&#39;,&#39;1975-12-23&#39;);<br />如果你在mysql提示符键入上面的命令也可以，但不方便调试。<br />（1）你可以将以上命令原样写入一个文本文件中，假设为school.sql，然后复制到c:\\下，并在DOS状态进入目录，然后键入以下命令：<br /> &nbsp; &nbsp; mysql -uroot -p密码 &lt; c:\\school.sql<br /> &nbsp; &nbsp; 如果成功，空出一行无任何显示；如有错误，会有提示。（以上命令已经调试，你只要将//的注释去掉即可使用）。<br />（2）或者进入命令行后使用 mysql&gt; source c:\\school.sql; 也可以将school.sql文件导入数据库中。</p><p><strong>六、将文本数据转到数据库中<br /></strong>1、文本数据应符合的格式：字段数据之间用tab键隔开，null值用来代替.例：<br /> &nbsp; 3 rose 大连二中 1976-10-10<br /> &nbsp; 4 mike 大连一中 1975-12-23<br /> &nbsp; 假设你把这两组数据存为school.txt文件，放在c盘根目录下。<br />2、数据传入命令 load data local infile &quot;c:\\school.txt&quot; into table 表名;<br /> &nbsp; 注意：你最好将文件复制到目录下，并且要先用use命令打表所在的库。</p><p><strong>七、备份数据库：（</strong>命令在DOS的目录下执行）<br />1.导出整个数据库<br />导出文件默认是存在mysql\bin目录下<br />mysqldump -u 用户名 -p 数据库名 &gt; 导出的文件名<br />mysqldump -u user_name -p123456 database_name &gt; outfile_name.sql<br />2.导出一个表<br />mysqldump -u 用户名 -p 数据库名 表名&gt; 导出的文件名<br />mysqldump -u user_name -p database_name table_name &gt; outfile_name.sql<br />3.导出一个数据库结构<br />mysqldump -u user_name -p -d --add-drop-table database_name &gt; outfile_name.sql<br />-d 没有数据 --add-drop-table 在每个create语句之前增加一个drop table<br />4.带语言参数导出<br />mysqldump -uroot -p --default-character-set=latin1 --set-charset=gbk --skip-opt database_name &gt; outfile_name.sql<br /></p><p> </p>', 1, '2012-09-30 00:27:28', 78, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (32, 6, 'MySql命令和语句大全 (下)', '', '<p> </p><table border="0" cellspacing="0" cellpadding="0"><tbody><tr><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql plain">1、说明：创建数据库 </code></div><div class="line number2 index1 alt1"><code class="sql keyword">CREATE</code><code class="sql keyword">DATABASE</code><code class="sql keyword">database</code><code class="sql plain">-</code><code class="sql keyword">name</code></div><div class="line number3 index2 alt2"><code class="sql plain">2、说明：删除数据库 </code></div><div class="line number4 index3 alt1"><code class="sql keyword">drop</code><code class="sql keyword">database</code><code class="sql plain">dbname </code></div><div class="line number5 index4 alt2"><code class="sql plain">3、说明：备份sql server </code></div><div class="line number6 index5 alt1"><code class="sql comments">--- 创建 备份数据的 device </code></div><div class="line number7 index6 alt2"><code class="sql plain">USE master </code></div><div class="line number8 index7 alt1"><code class="sql keyword">EXEC</code><code class="sql plain">sp_addumpdevice </code><code class="sql string">&#39;disk&#39;</code><code class="sql plain">, </code><code class="sql string">&#39;testBack&#39;</code><code class="sql plain">, </code><code class="sql string">&#39;c:\mssql7backup\MyNwind_1.dat&#39;</code></div><div class="line number9 index8 alt2"><code class="sql comments">--- 开始 备份 </code></div><div class="line number10 index9 alt1"><code class="sql plain">BACKUP </code><code class="sql keyword">DATABASE</code><code class="sql plain">pubs </code><code class="sql keyword">TO</code><code class="sql plain">testBack </code></div><div class="line number11 index10 alt2"><code class="sql plain">4、说明：创建新表 </code></div><div class="line number12 index11 alt1"><code class="sql keyword">create</code><code class="sql keyword">table</code><code class="sql plain">tabname(col1 type1 [</code><code class="sql color1">not</code><code class="sql color1">null</code><code class="sql plain">] [</code><code class="sql keyword">primary</code><code class="sql keyword">key</code><code class="sql plain">],col2 type2 [</code><code class="sql color1">not</code><code class="sql color1">null</code><code class="sql plain">],..) </code></div><div class="line number13 index12 alt2"><code class="sql plain">根据已有的表创建新表： </code></div><div class="line number14 index13 alt1"><code class="sql plain">A：</code><code class="sql keyword">create</code><code class="sql keyword">table</code><code class="sql plain">tab_new </code><code class="sql color1">like</code><code class="sql plain">tab_old (使用旧表创建新表) </code></div><div class="line number15 index14 alt2"><code class="sql plain">B：</code><code class="sql keyword">create</code><code class="sql keyword">table</code><code class="sql plain">tab_new </code><code class="sql keyword">as</code><code class="sql keyword">select</code><code class="sql plain">col1,col2… </code><code class="sql keyword">from</code><code class="sql plain">tab_old definition </code><code class="sql keyword">only</code></div><div class="line number16 index15 alt1"><code class="sql plain">5、说明：删除新表 </code></div><div class="line number17 index16 alt2"><code class="sql keyword">drop</code><code class="sql keyword">table</code><code class="sql plain">tabname </code></div><div class="line number18 index17 alt1"><code class="sql plain">6、说明：增加一个列 </code></div><div class="line number19 index18 alt2"><code class="sql keyword">Alter</code><code class="sql keyword">table</code><code class="sql plain">tabname </code><code class="sql keyword">add</code><code class="sql keyword">column</code><code class="sql plain">col type </code></div><div class="line number20 index19 alt1"><code class="sql plain">注：列增加后将不能删除。DB2中列加上后数据类型也不能改变，唯一能改变的是增加</code><code class="sql keyword">varchar</code><code class="sql plain">类型的长度。 </code></div><div class="line number21 index20 alt2"><code class="sql plain">7、说明：添加主键： </code><code class="sql keyword">Alter</code><code class="sql keyword">table</code><code class="sql plain">tabname </code><code class="sql keyword">add</code><code class="sql keyword">primary</code><code class="sql keyword">key</code><code class="sql plain">(col) </code></div><div class="line number22 index21 alt1"><code class="sql plain">说明：删除主键： </code><code class="sql keyword">Alter</code><code class="sql keyword">table</code><code class="sql plain">tabname </code><code class="sql keyword">drop</code><code class="sql keyword">primary</code><code class="sql keyword">key</code><code class="sql plain">(col) </code></div><div class="line number23 index22 alt2"><code class="sql plain">8、说明：创建索引：</code><code class="sql keyword">create</code><code class="sql plain">[</code><code class="sql keyword">unique</code><code class="sql plain">] </code><code class="sql keyword">index</code><code class="sql plain">idxname </code><code class="sql keyword">on</code><code class="sql plain">tabname(col….) </code></div><div class="line number24 index23 alt1"><code class="sql plain">删除索引：</code><code class="sql keyword">drop</code><code class="sql keyword">index</code><code class="sql plain">idxname </code></div><div class="line number25 index24 alt2"><code class="sql plain">注：索引是不可更改的，想更改必须删除重新建。 </code></div><div class="line number26 index25 alt1"><code class="sql plain">9、说明：创建视图：</code><code class="sql keyword">create</code><code class="sql keyword">view</code><code class="sql plain">viewname </code><code class="sql keyword">as</code><code class="sql keyword">select</code><code class="sql plain">statement </code></div><div class="line number27 index26 alt2"><code class="sql plain">删除视图：</code><code class="sql keyword">drop</code><code class="sql keyword">view</code><code class="sql plain">viewname </code></div><div class="line number28 index27 alt1"><code class="sql plain">10、说明：几个简单的基本的sql语句 </code></div><div class="line number29 index28 alt2"><code class="sql plain">选择：</code><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql plain">table1 </code><code class="sql keyword">where</code><code class="sql plain">范围 </code></div><div class="line number30 index29 alt1"><code class="sql plain">插入：</code><code class="sql keyword">insert</code><code class="sql keyword">into</code><code class="sql plain">table1(field1,field2) </code><code class="sql keyword">values</code><code class="sql plain">(value1,value2) </code></div><div class="line number31 index30 alt2"><code class="sql plain">删除：</code><code class="sql keyword">delete</code><code class="sql keyword">from</code><code class="sql plain">table1 </code><code class="sql keyword">where</code><code class="sql plain">范围 </code></div><div class="line number32 index31 alt1"><code class="sql plain">更新：</code><code class="sql keyword">update</code><code class="sql plain">table1 </code><code class="sql keyword">set</code><code class="sql plain">field1=value1 </code><code class="sql keyword">where</code><code class="sql plain">范围 </code></div><div class="line number33 index32 alt2"><code class="sql plain">查找：</code><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql plain">table1 </code><code class="sql keyword">where</code><code class="sql plain">field1 </code><code class="sql color1">like</code><code class="sql plain">’%value1%’ </code><code class="sql comments">---like的语法很精妙，查资料! </code></div><div class="line number34 index33 alt1"><code class="sql plain">排序：</code><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql plain">table1 </code><code class="sql keyword">order</code><code class="sql keyword">by</code><code class="sql plain">field1,field2 [</code><code class="sql keyword">desc</code><code class="sql plain">] </code></div><div class="line number35 index34 alt2"><code class="sql plain">总数：</code><code class="sql keyword">select</code><code class="sql color2">count</code><code class="sql keyword">as</code><code class="sql plain">totalcount </code><code class="sql keyword">from</code><code class="sql plain">table1 </code></div><div class="line number36 index35 alt1"><code class="sql plain">求和：</code><code class="sql keyword">select</code><code class="sql color2">sum</code><code class="sql plain">(field1) </code><code class="sql keyword">as</code><code class="sql plain">sumvalue </code><code class="sql keyword">from</code><code class="sql plain">table1 </code></div><div class="line number37 index36 alt2"><code class="sql plain">平均：</code><code class="sql keyword">select</code><code class="sql color2">avg</code><code class="sql plain">(field1) </code><code class="sql keyword">as</code><code class="sql plain">avgvalue </code><code class="sql keyword">from</code><code class="sql plain">table1 </code></div><div class="line number38 index37 alt1"><code class="sql plain">最大：</code><code class="sql keyword">select</code><code class="sql keyword">max</code><code class="sql plain">(field1) </code><code class="sql keyword">as</code><code class="sql plain">maxvalue </code><code class="sql keyword">from</code><code class="sql plain">table1 </code></div><div class="line number39 index38 alt2"><code class="sql plain">最小：</code><code class="sql keyword">select</code><code class="sql keyword">min</code><code class="sql plain">(field1) </code><code class="sql keyword">as</code><code class="sql plain">minvalue </code><code class="sql keyword">from</code><code class="sql plain">table1 </code></div><div class="line number40 index39 alt1"><code class="sql plain">11、说明：几个高级查询运算词 </code></div><div class="line number41 index40 alt2"><code class="sql plain">A： </code><code class="sql keyword">UNION</code><code class="sql plain">运算符 </code></div><div class="line number42 index41 alt1"><code class="sql keyword">UNION</code><code class="sql plain">运算符通过组合其他两个结果表（例如 TABLE1 和 TABLE2）并消去表中任何重复行而派生出一个结果表。当 </code><code class="sql color1">ALL</code><code class="sql plain">随 </code><code class="sql keyword">UNION</code><code class="sql plain">一起使用时（即 </code><code class="sql keyword">UNION</code><code class="sql color1">ALL</code><code class="sql plain">），不消除重复行。两种情况下，派生表的每一行不是来自 TABLE1 就是来自 TABLE2。 </code></div><div class="line number43 index42 alt2"><code class="sql plain">B： </code><code class="sql keyword">EXCEPT</code><code class="sql plain">运算符 </code></div><div class="line number44 index43 alt1"><code class="sql keyword">EXCEPT</code><code class="sql plain">运算符通过包括所有在 TABLE1 中但不在 TABLE2 中的行并消除所有重复行而派生出一个结果表。当 </code><code class="sql color1">ALL</code><code class="sql plain">随 </code><code class="sql keyword">EXCEPT</code><code class="sql plain">一起使用时 (</code><code class="sql keyword">EXCEPT</code><code class="sql color1">ALL</code><code class="sql plain">)，不消除重复行。 </code></div><div class="line number45 index44 alt2"><code class="sql plain">C： </code><code class="sql keyword">INTERSECT</code><code class="sql plain">运算符 </code></div><div class="line number46 index45 alt1"><code class="sql keyword">INTERSECT</code><code class="sql plain">运算符通过只包括 TABLE1 和 TABLE2 中都有的行并消除所有重复行而派生出一个结果表。当 </code><code class="sql color1">ALL</code><code class="sql plain">随 </code><code class="sql keyword">INTERSECT</code><code class="sql plain">一起使用时 (</code><code class="sql keyword">INTERSECT</code><code class="sql color1">ALL</code><code class="sql plain">)，不消除重复行。 </code></div><div class="line number47 index46 alt2"><code class="sql plain">注：使用运算词的几个查询结果行必须是一致的。 </code></div><div class="line number48 index47 alt1"><code class="sql plain">12、说明：使用外连接 </code></div><div class="line number49 index48 alt2"><code class="sql plain">A、</code><code class="sql color2">left</code><code class="sql plain">（</code><code class="sql color1">outer</code><code class="sql plain">） </code><code class="sql color1">join</code><code class="sql plain">： </code></div><div class="line number50 index49 alt1"><code class="sql plain">左外连接（左连接）：结果集几包括连接表的匹配行，也包括左连接表的所有行。 </code></div><div class="line number51 index50 alt2"><code class="sql plain">SQL: </code><code class="sql keyword">select</code><code class="sql plain">a.a, a.b, a.c, b.c, b.d, b.f </code><code class="sql keyword">from</code><code class="sql plain">a </code><code class="sql color2">LEFT</code><code class="sql keyword">OUT</code><code class="sql color1">JOIN</code><code class="sql plain">b </code><code class="sql keyword">ON</code><code class="sql plain">a.a = b.c </code></div><div class="line number52 index51 alt1"><code class="sql plain">B：</code><code class="sql color2">right</code><code class="sql plain">（</code><code class="sql color1">outer</code><code class="sql plain">） </code><code class="sql color1">join</code><code class="sql plain">: </code></div><div class="line number53 index52 alt2"><code class="sql plain">右外连接(右连接)：结果集既包括连接表的匹配连接行，也包括右连接表的所有行。 </code></div><div class="line number54 index53 alt1"><code class="sql plain">C：</code><code class="sql keyword">full</code><code class="sql plain">/</code><code class="sql color1">cross</code><code class="sql plain">（</code><code class="sql color1">outer</code><code class="sql plain">） </code><code class="sql color1">join</code><code class="sql plain">： </code></div><div class="line number55 index54 alt2"><code class="sql plain">全外连接：不仅包括符号连接表的匹配行，还包括两个连接表中的所有记录。 </code></div><div class="line number56 index55 alt1"><code class="sql plain">12、分组:</code><code class="sql keyword">Group</code><code class="sql keyword">by</code><code class="sql plain">: </code></div><div class="line number57 index56 alt2"><code class="sql spaces"> &nbsp;</code><code class="sql plain">一张表，一旦分组完成后，查询后只能得到组相关的信息。 </code></div><div class="line number58 index57 alt1"><code class="sql spaces"> </code><code class="sql plain">组相关的信息：（统计信息） </code><code class="sql color2">count</code><code class="sql plain">,</code><code class="sql color2">sum</code><code class="sql plain">,</code><code class="sql keyword">max</code><code class="sql plain">,</code><code class="sql keyword">min</code><code class="sql plain">,</code><code class="sql color2">avg</code> &nbsp;<code class="sql plain">分组的标准) </code></div><div class="line number59 index58 alt2"><code class="sql spaces"> &nbsp; &nbsp;</code><code class="sql plain">在SQLServer中分组时：不能以text,ntext,image类型的字段作为分组依据 </code></div><div class="line number60 index59 alt1"><code class="sql spaces"> </code><code class="sql plain">在selecte统计函数中的字段，不能和普通的字段放在一起； </code></div><div class="line number61 index60 alt2"><code class="sql plain">13、对数据库进行操作： </code></div><div class="line number62 index61 alt1"><code class="sql spaces"> </code><code class="sql plain">分离数据库： sp_detach_db; 附加数据库：sp_attach_db 后接表明，附加需要完整的路径名 </code></div><div class="line number63 index62 alt2"><code class="sql plain">14.如何修改数据库的名称: </code></div><div class="line number64 index63 alt1"><code class="sql plain">sp_renamedb </code><code class="sql string">&#39;old_name&#39;</code><code class="sql plain">, </code><code class="sql string">&#39;new_name&#39;</code></div><div class="line number65 index64 alt2"><code class="sql spaces"> </code> </div><div class="line number66 index65 alt1"><code class="sql plain">二、提升 </code></div><div class="line number67 index66 alt2"><code class="sql plain">1、说明：复制表(只复制结构,源表名：a 新表名：b) (Access可用) </code></div><div class="line number68 index67 alt1"><code class="sql plain">法一：</code><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">into</code><code class="sql plain">b </code><code class="sql keyword">from</code><code class="sql plain">a </code><code class="sql keyword">where</code><code class="sql plain">1&lt;&gt;1（仅用于SQlServer） </code></div><div class="line number69 index68 alt2"><code class="sql plain">法二：</code><code class="sql keyword">select</code><code class="sql keyword">top</code><code class="sql plain">0 * </code><code class="sql keyword">into</code><code class="sql plain">b </code><code class="sql keyword">from</code><code class="sql plain">a </code></div><div class="line number70 index69 alt1"><code class="sql plain">2、说明：拷贝表(拷贝数据,源表名：a 目标表名：b) (Access可用) </code></div><div class="line number71 index70 alt2"><code class="sql keyword">insert</code><code class="sql keyword">into</code><code class="sql plain">b(a, b, c) </code><code class="sql keyword">select</code><code class="sql plain">d,e,f </code><code class="sql keyword">from</code><code class="sql plain">b; </code></div><div class="line number72 index71 alt1"><code class="sql plain">3、说明：跨数据库之间表的拷贝(具体数据使用绝对路径) (Access可用) </code></div><div class="line number73 index72 alt2"><code class="sql keyword">insert</code><code class="sql keyword">into</code><code class="sql plain">b(a, b, c) </code><code class="sql keyword">select</code><code class="sql plain">d,e,f </code><code class="sql keyword">from</code><code class="sql plain">b </code><code class="sql color1">in</code><code class="sql plain">‘具体数据库’ </code><code class="sql keyword">where</code><code class="sql plain">条件 </code></div><div class="line number74 index73 alt1"><code class="sql plain">例子：..</code><code class="sql keyword">from</code><code class="sql plain">b </code><code class="sql color1">in</code><code class="sql string">&#39;&quot;&amp;Server.MapPath(&quot;.&quot;)&amp;&quot;\data.mdb&quot; &amp;&quot;&#39;</code><code class="sql keyword">where</code><code class="sql plain">.. </code></div><div class="line number75 index74 alt2"><code class="sql plain">4、说明：子查询(表名1：a 表名2：b) </code></div><div class="line number76 index75 alt1"><code class="sql keyword">select</code><code class="sql plain">a,b,c </code><code class="sql keyword">from</code><code class="sql plain">a </code><code class="sql keyword">where</code><code class="sql plain">a </code><code class="sql color1">IN</code><code class="sql plain">(</code><code class="sql keyword">select</code><code class="sql plain">d </code><code class="sql keyword">from</code><code class="sql plain">b ) 或者: </code><code class="sql keyword">select</code><code class="sql plain">a,b,c </code><code class="sql keyword">from</code><code class="sql plain">a </code><code class="sql keyword">where</code><code class="sql plain">a </code><code class="sql color1">IN</code><code class="sql plain">(1,2,3) </code></div><div class="line number77 index76 alt2"><code class="sql plain">5、说明：显示文章、提交人和最后回复时间 </code></div><div class="line number78 index77 alt1"><code class="sql keyword">select</code><code class="sql plain">a.title,a.username,b.adddate </code><code class="sql keyword">from</code><code class="sql keyword">table</code><code class="sql plain">a,(</code><code class="sql keyword">select</code><code class="sql keyword">max</code><code class="sql plain">(adddate) adddate </code><code class="sql keyword">from</code><code class="sql keyword">table</code><code class="sql keyword">where</code><code class="sql keyword">table</code><code class="sql plain">.title=a.title) b </code></div><div class="line number79 index78 alt2"><code class="sql plain">6、说明：外连接查询(表名1：a 表名2：b) </code></div><div class="line number80 index79 alt1"><code class="sql keyword">select</code><code class="sql plain">a.a, a.b, a.c, b.c, b.d, b.f </code><code class="sql keyword">from</code><code class="sql plain">a </code><code class="sql color2">LEFT</code><code class="sql keyword">OUT</code><code class="sql color1">JOIN</code><code class="sql plain">b </code><code class="sql keyword">ON</code><code class="sql plain">a.a = b.c </code></div><div class="line number81 index80 alt2"><code class="sql plain">7、说明：在线视图查询(表名1：a ) </code></div><div class="line number82 index81 alt1"><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql plain">(</code><code class="sql keyword">SELECT</code><code class="sql plain">a,b,c </code><code class="sql keyword">FROM</code><code class="sql plain">a) T </code><code class="sql keyword">where</code><code class="sql plain">t.a &gt; 1; </code></div><div class="line number83 index82 alt2"><code class="sql plain">8、说明：</code><code class="sql color1">between</code><code class="sql plain">的用法,</code><code class="sql color1">between</code><code class="sql plain">限制查询数据范围时包括了边界值,</code><code class="sql color1">not</code><code class="sql color1">between</code><code class="sql plain">不包括 </code></div><div class="line number84 index83 alt1"><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql plain">table1 </code><code class="sql keyword">where</code><code class="sql keyword">time</code><code class="sql color1">between</code><code class="sql plain">time1 </code><code class="sql color1">and</code><code class="sql plain">time2 </code></div><div class="line number85 index84 alt2"><code class="sql keyword">select</code><code class="sql plain">a,b,c, </code><code class="sql keyword">from</code><code class="sql plain">table1 </code><code class="sql keyword">where</code><code class="sql plain">a </code><code class="sql color1">not</code><code class="sql color1">between</code><code class="sql plain">数值1 </code><code class="sql color1">and</code><code class="sql plain">数值2 </code></div><div class="line number86 index85 alt1"><code class="sql plain">9、说明：</code><code class="sql color1">in</code><code class="sql plain">的使用方法 </code></div><div class="line number87 index86 alt2"><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql plain">table1 </code><code class="sql keyword">where</code><code class="sql plain">a [</code><code class="sql color1">not</code><code class="sql plain">] </code><code class="sql color1">in</code><code class="sql plain">(‘值1’,’值2’,’值4’,’值6’) </code></div><div class="line number88 index87 alt1"><code class="sql plain">10、说明：两张关联表，删除主表中已经在副表中没有的信息 </code></div><div class="line number89 index88 alt2"><code class="sql keyword">delete</code><code class="sql keyword">from</code><code class="sql plain">table1 </code><code class="sql keyword">where</code><code class="sql color1">not</code><code class="sql plain">exists ( </code><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql plain">table2 </code><code class="sql keyword">where</code><code class="sql plain">table1.field1=table2.field1 ) </code></div><div class="line number90 index89 alt1"><code class="sql plain">11、说明：四表联查问题： </code></div><div class="line number91 index90 alt2"><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql plain">a </code><code class="sql color2">left</code><code class="sql keyword">inner</code><code class="sql color1">join</code><code class="sql plain">b </code><code class="sql keyword">on</code><code class="sql plain">a.a=b.b </code><code class="sql color2">right</code><code class="sql keyword">inner</code><code class="sql color1">join</code><code class="sql plain">c </code><code class="sql keyword">on</code><code class="sql plain">a.a=c.c </code><code class="sql keyword">inner</code><code class="sql color1">join</code><code class="sql plain">d </code><code class="sql keyword">on</code><code class="sql plain">a.a=d.d </code><code class="sql keyword">where</code><code class="sql plain">..... </code></div><div class="line number92 index91 alt1"><code class="sql plain">12、说明：日程安排提前五分钟提醒 </code></div><div class="line number93 index92 alt2"><code class="sql plain">SQL: </code><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql plain">日程安排 </code><code class="sql keyword">where</code><code class="sql plain">datediff(</code><code class="sql string">&#39;minute&#39;</code><code class="sql plain">,f开始时间,getdate())&gt;5 </code></div><div class="line number94 index93 alt1"><code class="sql plain">13、说明：一条sql 语句搞定数据库分页 </code></div><div class="line number95 index94 alt2"><code class="sql keyword">select</code><code class="sql keyword">top</code><code class="sql plain">10 b.* </code><code class="sql keyword">from</code><code class="sql plain">(</code><code class="sql keyword">select</code><code class="sql keyword">top</code><code class="sql plain">20 主键字段,排序字段 </code><code class="sql keyword">from</code><code class="sql plain">表名 </code><code class="sql keyword">order</code><code class="sql keyword">by</code><code class="sql plain">排序字段 </code><code class="sql keyword">desc</code><code class="sql plain">) a,表名 b </code><code class="sql keyword">where</code><code class="sql plain">b.主键字段 = a.主键字段 </code><code class="sql keyword">order</code><code class="sql keyword">by</code><code class="sql plain">a.排序字段 </code></div><div class="line number96 index95 alt1"><code class="sql plain">具体实现： </code></div><div class="line number97 index96 alt2"><code class="sql plain">关于数据库分页： </code></div><div class="line number98 index97 alt1"><code class="sql spaces"> &nbsp;</code><code class="sql keyword">declare</code><code class="sql plain">@start </code><code class="sql keyword">int</code><code class="sql plain">,@</code><code class="sql keyword">end</code><code class="sql keyword">int</code></div><div class="line number99 index98 alt2"><code class="sql spaces"> &nbsp;</code><code class="sql plain">@sql &nbsp;nvarchar(600) </code></div><div class="line number100 index99 alt1"><code class="sql spaces"> &nbsp;</code><code class="sql keyword">set</code><code class="sql plain">@sql=’</code><code class="sql keyword">select</code><code class="sql keyword">top</code><code class="sql plain">’+str(@</code><code class="sql keyword">end</code><code class="sql plain">-@start+1)+’+</code><code class="sql keyword">from</code><code class="sql plain">T </code><code class="sql keyword">where</code><code class="sql plain">rid </code><code class="sql color1">not</code><code class="sql color1">in</code><code class="sql plain">(</code><code class="sql keyword">select</code><code class="sql keyword">top</code><code class="sql plain">’+str(@str-1)+’Rid </code><code class="sql keyword">from</code><code class="sql plain">T </code><code class="sql keyword">where</code><code class="sql plain">Rid&gt;-1)’ </code></div><div class="line number101 index100 alt2"><code class="sql spaces"> &nbsp;</code><code class="sql keyword">exec</code><code class="sql plain">sp_executesql @sql </code></div><div class="line number102 index101 alt1"><code class="sql spaces"> </code> </div><div class="line number103 index102 alt2"><code class="sql plain">注意：在</code><code class="sql keyword">top</code><code class="sql plain">后不能直接跟一个变量，所以在实际应用中只有这样的进行特殊的处理。Rid为一个标识列，如果</code><code class="sql keyword">top</code><code class="sql plain">后还有具体的字段，这样做是非常有好处的。因为这样可以避免 </code><code class="sql keyword">top</code><code class="sql plain">的字段如果是逻辑索引的，查询的结果后实际表中的不一致（逻辑索引中的数据有可能和数据表中的不一致，而查询时如果处在索引则首先查询索引） </code></div><div class="line number104 index103 alt1"><code class="sql plain">14、说明：前10条记录 </code></div><div class="line number105 index104 alt2"><code class="sql keyword">select</code><code class="sql keyword">top</code><code class="sql plain">10 * form table1 </code><code class="sql keyword">where</code><code class="sql plain">范围 </code></div><div class="line number106 index105 alt1"><code class="sql plain">15、说明：选择在每一组b值相同的数据中对应的a最大的记录的所有信息(类似这样的用法可以用于论坛每月排行榜,每月热销产品分析,按科目成绩排名,等等.) </code></div><div class="line number107 index106 alt2"><code class="sql keyword">select</code><code class="sql plain">a,b,c </code><code class="sql keyword">from</code><code class="sql plain">tablename ta </code><code class="sql keyword">where</code><code class="sql plain">a=(</code><code class="sql keyword">select</code><code class="sql keyword">max</code><code class="sql plain">(a) </code><code class="sql keyword">from</code><code class="sql plain">tablename tb </code><code class="sql keyword">where</code><code class="sql plain">tb.b=ta.b) </code></div><div class="line number108 index107 alt1"><code class="sql plain">16、说明：包括所有在 TableA 中但不在 TableB和TableC 中的行并消除所有重复行而派生出一个结果表 </code></div><div class="line number109 index108 alt2"><code class="sql plain">(</code><code class="sql keyword">select</code><code class="sql plain">a </code><code class="sql keyword">from</code><code class="sql plain">tableA ) </code><code class="sql keyword">except</code><code class="sql plain">(</code><code class="sql keyword">select</code><code class="sql plain">a </code><code class="sql keyword">from</code><code class="sql plain">tableB) </code><code class="sql keyword">except</code><code class="sql plain">(</code><code class="sql keyword">select</code><code class="sql plain">a </code><code class="sql keyword">from</code><code class="sql plain">tableC) </code></div><div class="line number110 index109 alt1"><code class="sql plain">17、说明：随机取出10条数据 </code></div><div class="line number111 index110 alt2"><code class="sql keyword">select</code><code class="sql keyword">top</code><code class="sql plain">10 * </code><code class="sql keyword">from</code><code class="sql plain">tablename </code><code class="sql keyword">order</code><code class="sql keyword">by</code><code class="sql plain">newid() </code></div><div class="line number112 index111 alt1"><code class="sql plain">18、说明：随机选择记录 </code></div><div class="line number113 index112 alt2"><code class="sql keyword">select</code><code class="sql plain">newid() </code></div><div class="line number114 index113 alt1"><code class="sql plain">19、说明：删除重复记录 </code></div><div class="line number115 index114 alt2"><code class="sql plain">1),</code><code class="sql keyword">delete</code><code class="sql keyword">from</code><code class="sql plain">tablename </code><code class="sql keyword">where</code><code class="sql plain">id </code><code class="sql color1">not</code><code class="sql color1">in</code><code class="sql plain">(</code><code class="sql keyword">select</code><code class="sql keyword">max</code><code class="sql plain">(id) </code><code class="sql keyword">from</code><code class="sql plain">tablename </code><code class="sql keyword">group</code><code class="sql keyword">by</code><code class="sql plain">col1,col2,...) </code></div><div class="line number116 index115 alt1"><code class="sql plain">2),</code><code class="sql keyword">select</code><code class="sql keyword">distinct</code><code class="sql plain">* </code><code class="sql keyword">into</code><code class="sql keyword">temp</code><code class="sql keyword">from</code><code class="sql plain">tablename </code></div><div class="line number117 index116 alt2"><code class="sql spaces"> &nbsp;</code><code class="sql keyword">delete</code><code class="sql keyword">from</code><code class="sql plain">tablename </code></div><div class="line number118 index117 alt1"><code class="sql spaces"> &nbsp;</code><code class="sql keyword">insert</code><code class="sql keyword">into</code><code class="sql plain">tablename </code><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql keyword">temp</code></div><div class="line number119 index118 alt2"><code class="sql plain">评价： 这种操作牵连大量的数据的移动，这种做法不适合大容量但数据操作 </code></div><div class="line number120 index119 alt1"><code class="sql plain">3),例如：在一个外部表中导入数据，由于某些原因第一次只导入了一部分，但很难判断具体位置，这样只有在下一次全部导入，这样也就产生好多重复的字段，怎样删除重复字段 </code></div><div class="line number121 index120 alt2"><code class="sql keyword">alter</code><code class="sql keyword">table</code><code class="sql plain">tablename </code></div><div class="line number122 index121 alt1"><code class="sql comments">--添加一个自增列 </code></div><div class="line number123 index122 alt2"><code class="sql keyword">add</code> &nbsp;<code class="sql plain">column_b </code><code class="sql keyword">int</code><code class="sql plain">identity(1,1) </code></div><div class="line number124 index123 alt1"><code class="sql spaces"> </code><code class="sql keyword">delete</code><code class="sql keyword">from</code><code class="sql plain">tablename </code><code class="sql keyword">where</code><code class="sql plain">column_b </code><code class="sql color1">not</code><code class="sql color1">in</code><code class="sql plain">( </code></div><div class="line number125 index124 alt2"><code class="sql keyword">select</code><code class="sql keyword">max</code><code class="sql plain">(column_b) &nbsp;</code><code class="sql keyword">from</code><code class="sql plain">tablename </code><code class="sql keyword">group</code><code class="sql keyword">by</code><code class="sql plain">column1,column2,...) </code></div><div class="line number126 index125 alt1"><code class="sql keyword">alter</code><code class="sql keyword">table</code><code class="sql plain">tablename </code><code class="sql keyword">drop</code><code class="sql keyword">column</code><code class="sql plain">column_b </code></div><div class="line number127 index126 alt2"><code class="sql plain">20、说明：列出数据库里所有的表名 </code></div><div class="line number128 index127 alt1"><code class="sql keyword">select</code><code class="sql keyword">name</code><code class="sql keyword">from</code><code class="sql plain">sysobjects </code><code class="sql keyword">where</code><code class="sql plain">type=</code><code class="sql string">&#39;U&#39;</code><code class="sql plain">// U代表用户 </code></div><div class="line number129 index128 alt2"><code class="sql plain">21、说明：列出表里的所有的列名 </code></div><div class="line number130 index129 alt1"><code class="sql keyword">select</code><code class="sql keyword">name</code><code class="sql keyword">from</code><code class="sql plain">syscolumns </code><code class="sql keyword">where</code><code class="sql plain">id=object_id(</code><code class="sql string">&#39;TableName&#39;</code><code class="sql plain">) </code></div><div class="line number131 index130 alt2"><code class="sql plain">22、说明：列示type、vender、pcs字段，以type字段排列，</code><code class="sql color2">case</code><code class="sql plain">可以方便地实现多重选择，类似</code><code class="sql keyword">select</code><code class="sql plain">中的</code><code class="sql color2">case</code><code class="sql plain">。 </code></div><div class="line number132 index131 alt1"><code class="sql keyword">select</code><code class="sql plain">type,</code><code class="sql color2">sum</code><code class="sql plain">(</code><code class="sql color2">case</code><code class="sql plain">vender </code><code class="sql keyword">when</code><code class="sql string">&#39;A&#39;</code><code class="sql keyword">then</code><code class="sql plain">pcs </code><code class="sql keyword">else</code><code class="sql plain">0 </code><code class="sql keyword">end</code><code class="sql plain">),</code><code class="sql color2">sum</code><code class="sql plain">(</code><code class="sql color2">case</code><code class="sql plain">vender </code><code class="sql keyword">when</code><code class="sql string">&#39;C&#39;</code><code class="sql keyword">then</code><code class="sql plain">pcs </code><code class="sql keyword">else</code><code class="sql plain">0 </code><code class="sql keyword">end</code><code class="sql plain">),</code><code class="sql color2">sum</code><code class="sql plain">(</code><code class="sql color2">case</code><code class="sql plain">vender </code><code class="sql keyword">when</code><code class="sql string">&#39;B&#39;</code><code class="sql keyword">then</code><code class="sql plain">pcs </code><code class="sql keyword">else</code><code class="sql plain">0 </code><code class="sql keyword">end</code><code class="sql plain">) </code><code class="sql keyword">FROM</code><code class="sql plain">tablename </code><code class="sql keyword">group</code><code class="sql keyword">by</code><code class="sql plain">type </code></div><div class="line number133 index132 alt2"><code class="sql plain">显示结果： </code></div><div class="line number134 index133 alt1"><code class="sql plain">type vender pcs </code></div><div class="line number135 index134 alt2"><code class="sql plain">电脑 A 1 </code></div><div class="line number136 index135 alt1"><code class="sql plain">电脑 A 1 </code></div><div class="line number137 index136 alt2"><code class="sql plain">光盘 B 2 </code></div><div class="line number138 index137 alt1"><code class="sql plain">光盘 A 2 </code></div><div class="line number139 index138 alt2"><code class="sql plain">手机 B 3 </code></div><div class="line number140 index139 alt1"><code class="sql plain">手机 C 3 </code></div><div class="line number141 index140 alt2"><code class="sql plain">23、说明：初始化表table1 </code></div><div class="line number142 index141 alt1"><code class="sql keyword">TRUNCATE</code><code class="sql keyword">TABLE</code><code class="sql plain">table1 </code></div><div class="line number143 index142 alt2"><code class="sql plain">24、说明：选择从10到15的记录 </code></div><div class="line number144 index143 alt1"><code class="sql keyword">select</code><code class="sql keyword">top</code><code class="sql plain">5 * </code><code class="sql keyword">from</code><code class="sql plain">(</code><code class="sql keyword">select</code><code class="sql keyword">top</code><code class="sql plain">15 * </code><code class="sql keyword">from</code><code class="sql keyword">table</code><code class="sql keyword">order</code><code class="sql keyword">by</code><code class="sql plain">id </code><code class="sql keyword">asc</code><code class="sql plain">) table_别名 </code><code class="sql keyword">order</code><code class="sql keyword">by</code><code class="sql plain">id </code><code class="sql keyword">desc</code></div><div class="line number145 index144 alt2"><code class="sql plain">三、技巧 </code></div><div class="line number146 index145 alt1"><code class="sql plain">1、1=1，1=2的使用，在SQL语句组合时用的较多 </code></div><div class="line number147 index146 alt2"><code class="sql plain">“</code><code class="sql keyword">where</code><code class="sql plain">1=1” 是表示选择全部 &nbsp; &nbsp;“</code><code class="sql keyword">where</code><code class="sql plain">1=2”全部不选， </code></div><div class="line number148 index147 alt1"><code class="sql plain">如： </code></div><div class="line number149 index148 alt2"><code class="sql plain">if @strWhere !=</code><code class="sql string">&#39;&#39;</code></div><div class="line number150 index149 alt1"><code class="sql keyword">begin</code></div><div class="line number151 index150 alt2"><code class="sql keyword">set</code><code class="sql plain">@strSQL = </code><code class="sql string">&#39;select count(*) as Total from [&#39;</code><code class="sql plain">+ @tblName + </code><code class="sql string">&#39;] where &#39;</code><code class="sql plain">+ @strWhere </code></div><div class="line number152 index151 alt1"><code class="sql keyword">end</code></div><div class="line number153 index152 alt2"><code class="sql keyword">else</code></div><div class="line number154 index153 alt1"><code class="sql keyword">begin</code></div><div class="line number155 index154 alt2"><code class="sql keyword">set</code><code class="sql plain">@strSQL = </code><code class="sql string">&#39;select count(*) as Total from [&#39;</code><code class="sql plain">+ @tblName + </code><code class="sql string">&#39;]&#39;</code></div><div class="line number156 index155 alt1"><code class="sql keyword">end</code></div><div class="line number157 index156 alt2"><code class="sql plain">我们可以直接写成 </code></div><div class="line number158 index157 alt1"><code class="sql plain">错误！未找到目录项。 </code></div><div class="line number159 index158 alt2"><code class="sql keyword">set</code><code class="sql plain">@strSQL = </code><code class="sql string">&#39;select count(*) as Total from [&#39;</code><code class="sql plain">+ @tblName + </code><code class="sql string">&#39;] where 1=1 安定 &#39;</code><code class="sql plain">+ @strWhere 2、收缩数据库 </code></div><div class="line number160 index159 alt1"><code class="sql comments">--重建索引 </code></div><div class="line number161 index160 alt2"><code class="sql plain">DBCC REINDEX </code></div><div class="line number162 index161 alt1"><code class="sql plain">DBCC INDEXDEFRAG </code></div><div class="line number163 index162 alt2"><code class="sql comments">--收缩数据和日志 </code></div><div class="line number164 index163 alt1"><code class="sql plain">DBCC SHRINKDB </code></div><div class="line number165 index164 alt2"><code class="sql plain">DBCC SHRINKFILE </code></div><div class="line number166 index165 alt1"><code class="sql plain">3、压缩数据库 </code></div><div class="line number167 index166 alt2"><code class="sql plain">dbcc shrinkdatabase(dbname) </code></div><div class="line number168 index167 alt1"><code class="sql plain">4、转移数据库给新用户以已存在用户权限 </code></div><div class="line number169 index168 alt2"><code class="sql keyword">exec</code><code class="sql plain">sp_change_users_login </code><code class="sql string">&#39;update_one&#39;</code><code class="sql plain">,</code><code class="sql string">&#39;newname&#39;</code><code class="sql plain">,</code><code class="sql string">&#39;oldname&#39;</code></div><div class="line number170 index169 alt1"><code class="sql plain">go </code></div><div class="line number171 index170 alt2"><code class="sql plain">5、检查备份集 </code></div><div class="line number172 index171 alt1"><code class="sql plain">RESTORE VERIFYONLY </code><code class="sql keyword">from</code><code class="sql plain">disk=</code><code class="sql string">&#39;E:\dvbbs.bak&#39;</code></div><div class="line number173 index172 alt2"><code class="sql plain">6、修复数据库 </code></div><div class="line number174 index173 alt1"><code class="sql keyword">ALTER</code><code class="sql keyword">DATABASE</code><code class="sql plain">[dvbbs] </code><code class="sql keyword">SET</code><code class="sql plain">SINGLE_USER </code></div><div class="line number175 index174 alt2"><code class="sql plain">GO </code></div><div class="line number176 index175 alt1"><code class="sql plain">DBCC CHECKDB(</code><code class="sql string">&#39;dvbbs&#39;</code><code class="sql plain">,repair_allow_data_loss) </code><code class="sql keyword">WITH</code><code class="sql plain">TABLOCK </code></div><div class="line number177 index176 alt2"><code class="sql plain">GO </code></div><div class="line number178 index177 alt1"><code class="sql keyword">ALTER</code><code class="sql keyword">DATABASE</code><code class="sql plain">[dvbbs] </code><code class="sql keyword">SET</code><code class="sql plain">MULTI_USER </code></div><div class="line number179 index178 alt2"><code class="sql plain">GO </code></div><div class="line number180 index179 alt1"><code class="sql plain">7、日志清除 </code></div><div class="line number181 index180 alt2"><code class="sql keyword">SET</code><code class="sql plain">NOCOUNT </code><code class="sql keyword">ON</code></div><div class="line number182 index181 alt1"><code class="sql keyword">DECLARE</code><code class="sql plain">@LogicalFileName sysname, </code></div><div class="line number183 index182 alt2"><code class="sql spaces"> </code><code class="sql plain">@MaxMinutes </code><code class="sql keyword">INT</code><code class="sql plain">, </code></div><div class="line number184 index183 alt1"><code class="sql spaces"> </code><code class="sql plain">@NewSize </code><code class="sql keyword">INT</code></div><div class="line number185 index184 alt2"><code class="sql spaces"> </code> </div><div class="line number186 index185 alt1"><code class="sql plain">USE tablename </code><code class="sql comments">-- 要操作的数据库名 </code></div><div class="line number187 index186 alt2"><code class="sql keyword">SELECT</code> &nbsp;<code class="sql plain">@LogicalFileName = </code><code class="sql string">&#39;tablename_log&#39;</code><code class="sql plain">, </code><code class="sql comments">-- 日志文件名 </code></div><div class="line number188 index187 alt1"><code class="sql plain">@MaxMinutes = 10, </code><code class="sql comments">-- Limit on time allowed to wrap log. </code></div><div class="line number189 index188 alt2"><code class="sql spaces"> </code><code class="sql plain">@NewSize = 1 &nbsp;</code><code class="sql comments">-- 你想设定的日志文件的大小(M) </code></div><div class="line number190 index189 alt1"><code class="sql plain">Setup / initialize </code></div><div class="line number191 index190 alt2"><code class="sql keyword">DECLARE</code><code class="sql plain">@OriginalSize </code><code class="sql keyword">int</code></div><div class="line number192 index191 alt1"><code class="sql keyword">SELECT</code><code class="sql plain">@OriginalSize = </code><code class="sql keyword">size</code></div><div class="line number193 index192 alt2"><code class="sql spaces"> </code><code class="sql keyword">FROM</code><code class="sql plain">sysfiles </code></div><div class="line number194 index193 alt1"><code class="sql spaces"> </code><code class="sql keyword">WHERE</code><code class="sql keyword">name</code><code class="sql plain">= @LogicalFileName </code></div><div class="line number195 index194 alt2"><code class="sql keyword">SELECT</code><code class="sql string">&#39;Original Size of &#39;</code><code class="sql plain">+ db_name() + </code><code class="sql string">&#39; LOG is &#39;</code><code class="sql plain">+ </code></div><div class="line number196 index195 alt1"><code class="sql spaces"> </code><code class="sql color2">CONVERT</code><code class="sql plain">(</code><code class="sql keyword">VARCHAR</code><code class="sql plain">(30),@OriginalSize) + </code><code class="sql string">&#39; 8K pages or &#39;</code><code class="sql plain">+ </code></div><div class="line number197 index196 alt2"><code class="sql spaces"> </code><code class="sql color2">CONVERT</code><code class="sql plain">(</code><code class="sql keyword">VARCHAR</code><code class="sql plain">(30),(@OriginalSize*8/1024)) + </code><code class="sql string">&#39;MB&#39;</code></div><div class="line number198 index197 alt1"><code class="sql spaces"> </code><code class="sql keyword">FROM</code><code class="sql plain">sysfiles </code></div><div class="line number199 index198 alt2"><code class="sql spaces"> </code><code class="sql keyword">WHERE</code><code class="sql keyword">name</code><code class="sql plain">= @LogicalFileName </code></div><div class="line number200 index199 alt1"><code class="sql keyword">CREATE</code><code class="sql keyword">TABLE</code><code class="sql plain">DummyTrans </code></div><div class="line number201 index200 alt2"><code class="sql spaces"> </code><code class="sql plain">(DummyColumn </code><code class="sql keyword">char</code><code class="sql plain">(8000) </code><code class="sql color1">not</code><code class="sql color1">null</code><code class="sql plain">) </code></div><div class="line number202 index201 alt1"><code class="sql spaces"> </code> </div><div class="line number203 index202 alt2"><code class="sql keyword">DECLARE</code><code class="sql plain">@Counter &nbsp; &nbsp;</code><code class="sql keyword">INT</code><code class="sql plain">, </code></div><div class="line number204 index203 alt1"><code class="sql spaces"> </code><code class="sql plain">@StartTime DATETIME, </code></div><div class="line number205 index204 alt2"><code class="sql spaces"> </code><code class="sql plain">@TruncLog &nbsp; </code><code class="sql keyword">VARCHAR</code><code class="sql plain">(255) </code></div><div class="line number206 index205 alt1"><code class="sql keyword">SELECT</code><code class="sql plain">@StartTime = GETDATE(), </code></div><div class="line number207 index206 alt2"><code class="sql spaces"> </code><code class="sql plain">@TruncLog = </code><code class="sql string">&#39;BACKUP LOG &#39;</code><code class="sql plain">+ db_name() + </code><code class="sql string">&#39; WITH TRUNCATE_ONLY&#39;</code></div><div class="line number208 index207 alt1"><code class="sql plain">DBCC SHRINKFILE (@LogicalFileName, @NewSize) </code></div><div class="line number209 index208 alt2"><code class="sql keyword">EXEC</code><code class="sql plain">(@TruncLog) </code></div><div class="line number210 index209 alt1"><code class="sql comments">-- Wrap the log if necessary. </code></div><div class="line number211 index210 alt2"><code class="sql plain">WHILE @MaxMinutes &gt; DATEDIFF (mi, @StartTime, GETDATE()) </code><code class="sql comments">-- time has not expired </code></div><div class="line number212 index211 alt1"><code class="sql spaces"> </code><code class="sql color1">AND</code><code class="sql plain">@OriginalSize = (</code><code class="sql keyword">SELECT</code><code class="sql keyword">size</code><code class="sql keyword">FROM</code><code class="sql plain">sysfiles </code><code class="sql keyword">WHERE</code><code class="sql keyword">name</code><code class="sql plain">= @LogicalFileName) &nbsp;</code></div><div class="line number213 index212 alt2"><code class="sql spaces"> </code><code class="sql color1">AND</code><code class="sql plain">(@OriginalSize * 8 /1024) &gt; @NewSize &nbsp;</code></div><div class="line number214 index213 alt1"><code class="sql spaces"> </code><code class="sql keyword">BEGIN</code><code class="sql comments">-- Outer loop. </code></div><div class="line number215 index214 alt2"><code class="sql keyword">SELECT</code><code class="sql plain">@Counter = 0 </code></div><div class="line number216 index215 alt1"><code class="sql spaces"> </code><code class="sql plain">WHILE &nbsp; ((@Counter &lt; @OriginalSize / 16) </code><code class="sql color1">AND</code><code class="sql plain">(@Counter &lt; 50000)) </code></div><div class="line number217 index216 alt2"><code class="sql spaces"> </code><code class="sql keyword">BEGIN</code><code class="sql comments">-- update </code></div><div class="line number218 index217 alt1"><code class="sql spaces"> </code><code class="sql keyword">INSERT</code><code class="sql plain">DummyTrans </code><code class="sql keyword">VALUES</code><code class="sql plain">(</code><code class="sql string">&#39;Fill Log&#39;</code><code class="sql plain">) </code><code class="sql keyword">DELETE</code><code class="sql plain">DummyTrans </code></div><div class="line number219 index218 alt2"><code class="sql spaces"> </code><code class="sql keyword">SELECT</code><code class="sql plain">@Counter = @Counter + 1 </code></div><div class="line number220 index219 alt1"><code class="sql spaces"> </code><code class="sql keyword">END</code></div><div class="line number221 index220 alt2"><code class="sql spaces"> </code><code class="sql keyword">EXEC</code><code class="sql plain">(@TruncLog) &nbsp;</code></div><div class="line number222 index221 alt1"><code class="sql spaces"> </code><code class="sql keyword">END</code></div><div class="line number223 index222 alt2"><code class="sql keyword">SELECT</code><code class="sql string">&#39;Final Size of &#39;</code><code class="sql plain">+ db_name() + </code><code class="sql string">&#39; LOG is &#39;</code><code class="sql plain">+ </code></div><div class="line number224 index223 alt1"><code class="sql spaces"> </code><code class="sql color2">CONVERT</code><code class="sql plain">(</code><code class="sql keyword">VARCHAR</code><code class="sql plain">(30),</code><code class="sql keyword">size</code><code class="sql plain">) + </code><code class="sql string">&#39; 8K pages or &#39;</code><code class="sql plain">+ </code></div><div class="line number225 index224 alt2"><code class="sql spaces"> </code><code class="sql color2">CONVERT</code><code class="sql plain">(</code><code class="sql keyword">VARCHAR</code><code class="sql plain">(30),(</code><code class="sql keyword">size</code><code class="sql plain">*8/1024)) + </code><code class="sql string">&#39;MB&#39;</code></div><div class="line number226 index225 alt1"><code class="sql spaces"> </code><code class="sql keyword">FROM</code><code class="sql plain">sysfiles </code></div><div class="line number227 index226 alt2"><code class="sql spaces"> </code><code class="sql keyword">WHERE</code><code class="sql keyword">name</code><code class="sql plain">= @LogicalFileName </code></div><div class="line number228 index227 alt1"><code class="sql keyword">DROP</code><code class="sql keyword">TABLE</code><code class="sql plain">DummyTrans </code></div><div class="line number229 index228 alt2"><code class="sql keyword">SET</code><code class="sql plain">NOCOUNT </code><code class="sql keyword">OFF</code></div><div class="line number230 index229 alt1"><code class="sql plain">8、说明：更改某个表 </code></div><div class="line number231 index230 alt2"><code class="sql keyword">exec</code><code class="sql plain">sp_changeobjectowner </code><code class="sql string">&#39;tablename&#39;</code><code class="sql plain">,</code><code class="sql string">&#39;dbo&#39;</code></div><div class="line number232 index231 alt1"><code class="sql plain">9、存储更改全部表 </code></div><div class="line number233 index232 alt2"><code class="sql keyword">CREATE</code><code class="sql keyword">PROCEDURE</code><code class="sql plain">dbo.User_ChangeObjectOwnerBatch </code></div><div class="line number234 index233 alt1"><code class="sql plain">@OldOwner </code><code class="sql keyword">as</code><code class="sql plain">NVARCHAR(128), </code></div><div class="line number235 index234 alt2"><code class="sql plain">@NewOwner </code><code class="sql keyword">as</code><code class="sql plain">NVARCHAR(128) </code></div><div class="line number236 index235 alt1"><code class="sql keyword">AS</code></div><div class="line number237 index236 alt2"><code class="sql keyword">DECLARE</code><code class="sql plain">@</code><code class="sql keyword">Name</code> &nbsp; &nbsp;<code class="sql keyword">as</code><code class="sql plain">NVARCHAR(128) </code></div><div class="line number238 index237 alt1"><code class="sql keyword">DECLARE</code><code class="sql plain">@Owner &nbsp; </code><code class="sql keyword">as</code><code class="sql plain">NVARCHAR(128) </code></div><div class="line number239 index238 alt2"><code class="sql keyword">DECLARE</code><code class="sql plain">@OwnerName &nbsp; </code><code class="sql keyword">as</code><code class="sql plain">NVARCHAR(128) </code></div><div class="line number240 index239 alt1"><code class="sql keyword">DECLARE</code><code class="sql plain">curObject </code><code class="sql keyword">CURSOR</code><code class="sql keyword">FOR</code></div><div class="line number241 index240 alt2"><code class="sql keyword">select</code><code class="sql string">&#39;Name&#39;</code> &nbsp; &nbsp;<code class="sql plain">= </code><code class="sql keyword">name</code><code class="sql plain">, </code></div><div class="line number242 index241 alt1"><code class="sql spaces"> &nbsp; </code><code class="sql string">&#39;Owner&#39;</code> &nbsp; &nbsp;<code class="sql plain">= user_name(uid) </code></div><div class="line number243 index242 alt2"><code class="sql keyword">from</code><code class="sql plain">sysobjects </code></div><div class="line number244 index243 alt1"><code class="sql keyword">where</code><code class="sql plain">user_name(uid)=@OldOwner </code></div><div class="line number245 index244 alt2"><code class="sql keyword">order</code><code class="sql keyword">by</code><code class="sql keyword">name</code></div><div class="line number246 index245 alt1"><code class="sql keyword">OPEN</code> &nbsp; <code class="sql plain">curObject </code></div><div class="line number247 index246 alt2"><code class="sql keyword">FETCH</code><code class="sql keyword">NEXT</code><code class="sql keyword">FROM</code><code class="sql plain">curObject </code><code class="sql keyword">INTO</code><code class="sql plain">@</code><code class="sql keyword">Name</code><code class="sql plain">, @Owner </code></div><div class="line number248 index247 alt1"><code class="sql plain">WHILE(@@FETCH_STATUS=0) </code></div><div class="line number249 index248 alt2"><code class="sql keyword">BEGIN</code> &nbsp; &nbsp;</div><div class="line number250 index249 alt1"><code class="sql plain">if @Owner=@OldOwner </code></div><div class="line number251 index250 alt2"><code class="sql keyword">begin</code></div><div class="line number252 index251 alt1"><code class="sql spaces"> &nbsp; </code><code class="sql keyword">set</code><code class="sql plain">@OwnerName = @OldOwner + </code><code class="sql string">&#39;.&#39;</code><code class="sql plain">+ rtrim(@</code><code class="sql keyword">Name</code><code class="sql plain">) </code></div><div class="line number253 index252 alt2"><code class="sql spaces"> &nbsp; </code><code class="sql keyword">exec</code><code class="sql plain">sp_changeobjectowner @OwnerName, @NewOwner </code></div><div class="line number254 index253 alt1"><code class="sql keyword">end</code></div><div class="line number255 index254 alt2"><code class="sql comments">-- select @name,@NewOwner,@OldOwner </code></div><div class="line number256 index255 alt1"><code class="sql keyword">FETCH</code><code class="sql keyword">NEXT</code><code class="sql keyword">FROM</code><code class="sql plain">curObject </code><code class="sql keyword">INTO</code><code class="sql plain">@</code><code class="sql keyword">Name</code><code class="sql plain">, @Owner </code></div><div class="line number257 index256 alt2"><code class="sql keyword">END</code></div><div class="line number258 index257 alt1"><code class="sql keyword">close</code><code class="sql plain">curObject </code></div><div class="line number259 index258 alt2"><code class="sql keyword">deallocate</code><code class="sql plain">curObject </code></div><div class="line number260 index259 alt1"><code class="sql plain">GO </code></div><div class="line number261 index260 alt2"><code class="sql spaces"> </code> </div><div class="line number262 index261 alt1"><code class="sql plain">10、SQL SERVER中直接循环写入数据 </code></div><div class="line number263 index262 alt2"><code class="sql keyword">declare</code><code class="sql plain">@i </code><code class="sql keyword">int</code></div><div class="line number264 index263 alt1"><code class="sql keyword">set</code><code class="sql plain">@i=1 </code></div><div class="line number265 index264 alt2"><code class="sql plain">while @i&lt;30 </code></div><div class="line number266 index265 alt1"><code class="sql keyword">begin</code></div><div class="line number267 index266 alt2"><code class="sql spaces"> &nbsp; &nbsp;</code><code class="sql keyword">insert</code><code class="sql keyword">into</code><code class="sql plain">test (userid) </code><code class="sql keyword">values</code><code class="sql plain">(@i) </code></div><div class="line number268 index267 alt1"><code class="sql spaces"> &nbsp; &nbsp;</code><code class="sql keyword">set</code><code class="sql plain">@i=@i+1 </code></div><div class="line number269 index268 alt2"><code class="sql keyword">end</code></div><div class="line number270 index269 alt1"><code class="sql plain">案例： </code></div><div class="line number271 index270 alt2"><code class="sql plain">有如下表，要求就裱中所有沒有及格的成績，在每次增長0.1的基礎上，使他們剛好及格: </code></div><div class="line number272 index271 alt1"><code class="sql spaces"> </code><code class="sql keyword">Name</code> &nbsp; &nbsp; <code class="sql plain">score </code></div><div class="line number273 index272 alt2"><code class="sql spaces"> </code><code class="sql plain">Zhangshan 80 </code></div><div class="line number274 index273 alt1"><code class="sql spaces"> </code><code class="sql plain">Lishi &nbsp; &nbsp; &nbsp; 59 </code></div><div class="line number275 index274 alt2"><code class="sql spaces"> </code><code class="sql plain">Wangwu &nbsp; &nbsp; &nbsp;50 </code></div><div class="line number276 index275 alt1"><code class="sql spaces"> </code><code class="sql plain">Songquan 69 </code></div><div class="line number277 index276 alt2"><code class="sql plain">while((</code><code class="sql keyword">select</code><code class="sql keyword">min</code><code class="sql plain">(score) </code><code class="sql keyword">from</code><code class="sql plain">tb_table)&lt;60) </code></div><div class="line number278 index277 alt1"><code class="sql keyword">begin</code></div><div class="line number279 index278 alt2"><code class="sql keyword">update</code><code class="sql plain">tb_table </code><code class="sql keyword">set</code><code class="sql plain">score =score*1.01 </code></div><div class="line number280 index279 alt1"><code class="sql keyword">where</code><code class="sql plain">score&lt;60 </code></div><div class="line number281 index280 alt2"><code class="sql plain">if &nbsp;(</code><code class="sql keyword">select</code><code class="sql keyword">min</code><code class="sql plain">(score) </code><code class="sql keyword">from</code><code class="sql plain">tb_table)&gt;60 </code></div><div class="line number282 index281 alt1"><code class="sql spaces"> &nbsp;</code><code class="sql plain">break </code></div><div class="line number283 index282 alt2"><code class="sql spaces"> </code><code class="sql keyword">else</code></div><div class="line number284 index283 alt1"><code class="sql spaces"> &nbsp; &nbsp;</code><code class="sql keyword">continue</code></div><div class="line number285 index284 alt2"><code class="sql keyword">end</code></div><div class="line number286 index285 alt1"><code class="sql spaces"> </code> </div><div class="line number287 index286 alt2"><code class="sql plain">数据开发-经典 </code></div><div class="line number288 index287 alt1"><code class="sql spaces"> </code> </div><div class="line number289 index288 alt2"><code class="sql plain">1.按姓氏笔画排序: </code></div><div class="line number290 index289 alt1"><code class="sql keyword">Select</code><code class="sql plain">* </code><code class="sql keyword">From</code><code class="sql plain">TableName </code><code class="sql keyword">Order</code><code class="sql keyword">By</code><code class="sql plain">CustomerName </code><code class="sql keyword">Collate</code><code class="sql plain">Chinese_PRC_Stroke_ci_as //从少到多 </code></div><div class="line number291 index290 alt2"><code class="sql plain">2.数据库加密: </code></div><div class="line number292 index291 alt1"><code class="sql keyword">select</code><code class="sql plain">encrypt(</code><code class="sql string">&#39;原始密码&#39;</code><code class="sql plain">) </code></div><div class="line number293 index292 alt2"><code class="sql keyword">select</code><code class="sql plain">pwdencrypt(</code><code class="sql string">&#39;原始密码&#39;</code><code class="sql plain">) </code></div><div class="line number294 index293 alt1"><code class="sql keyword">select</code><code class="sql plain">pwdcompare(</code><code class="sql string">&#39;原始密码&#39;</code><code class="sql plain">,</code><code class="sql string">&#39;加密后密码&#39;</code><code class="sql plain">) = 1</code><code class="sql comments">--相同；否则不相同 encrypt(&#39;原始密码&#39;) </code></div><div class="line number295 index294 alt2"><code class="sql keyword">select</code><code class="sql plain">pwdencrypt(</code><code class="sql string">&#39;原始密码&#39;</code><code class="sql plain">) </code></div><div class="line number296 index295 alt1"><code class="sql keyword">select</code><code class="sql plain">pwdcompare(</code><code class="sql string">&#39;原始密码&#39;</code><code class="sql plain">,</code><code class="sql string">&#39;加密后密码&#39;</code><code class="sql plain">) = 1</code><code class="sql comments">--相同；否则不相同 </code></div><div class="line number297 index296 alt2"><code class="sql plain">3.取回表中字段: </code></div><div class="line number298 index297 alt1"><code class="sql keyword">declare</code><code class="sql plain">@list </code><code class="sql keyword">varchar</code><code class="sql plain">(1000), </code></div><div class="line number299 index298 alt2"><code class="sql plain">@sql nvarchar(1000) </code></div><div class="line number300 index299 alt1"><code class="sql keyword">select</code><code class="sql plain">@list=@list+</code><code class="sql string">&#39;,&#39;</code><code class="sql plain">+b.</code><code class="sql keyword">name</code><code class="sql keyword">from</code><code class="sql plain">sysobjects a,syscolumns b </code><code class="sql keyword">where</code><code class="sql plain">a.id=b.id </code><code class="sql color1">and</code><code class="sql plain">a.</code><code class="sql keyword">name</code><code class="sql plain">=</code><code class="sql string">&#39;表A&#39;</code></div><div class="line number301 index300 alt2"><code class="sql keyword">set</code><code class="sql plain">@sql=</code><code class="sql string">&#39;select &#39;</code><code class="sql plain">+</code><code class="sql color2">right</code><code class="sql plain">(@list,len(@list)-1)+</code><code class="sql string">&#39; from 表A&#39;</code></div><div class="line number302 index301 alt1"><code class="sql keyword">exec</code><code class="sql plain">(@sql) </code></div><div class="line number303 index302 alt2"><code class="sql plain">4.查看硬盘分区: </code></div><div class="line number304 index303 alt1"><code class="sql keyword">EXEC</code><code class="sql plain">master..xp_fixeddrives </code></div><div class="line number305 index304 alt2"><code class="sql plain">5.比较A,B表是否相等: </code></div><div class="line number306 index305 alt1"><code class="sql plain">if (</code><code class="sql keyword">select</code><code class="sql plain">checksum_agg(binary_checksum(*)) </code><code class="sql keyword">from</code><code class="sql plain">A) </code></div><div class="line number307 index306 alt2"><code class="sql spaces"> &nbsp; &nbsp; </code><code class="sql plain">= </code></div><div class="line number308 index307 alt1"><code class="sql spaces"> &nbsp; &nbsp;</code><code class="sql plain">(</code><code class="sql keyword">select</code><code class="sql plain">checksum_agg(binary_checksum(*)) </code><code class="sql keyword">from</code><code class="sql plain">B) </code></div><div class="line number309 index308 alt2"><code class="sql plain">print </code><code class="sql string">&#39;相等&#39;</code></div><div class="line number310 index309 alt1"><code class="sql keyword">else</code></div><div class="line number311 index310 alt2"><code class="sql plain">print </code><code class="sql string">&#39;不相等&#39;</code></div><div class="line number312 index311 alt1"><code class="sql plain">6.杀掉所有的事件探察器进程: </code></div><div class="line number313 index312 alt2"><code class="sql keyword">DECLARE</code><code class="sql plain">hcforeach </code><code class="sql keyword">CURSOR</code><code class="sql keyword">GLOBAL</code><code class="sql keyword">FOR</code><code class="sql keyword">SELECT</code><code class="sql string">&#39;kill &#39;</code><code class="sql plain">+RTRIM(spid) </code><code class="sql keyword">FROM</code><code class="sql plain">master.dbo.sysprocesses </code></div><div class="line number314 index313 alt1"><code class="sql keyword">WHERE</code><code class="sql plain">program_name </code><code class="sql color1">IN</code><code class="sql plain">(</code><code class="sql string">&#39;SQL profiler&#39;</code><code class="sql plain">,N</code><code class="sql string">&#39;SQL 事件探查器&#39;</code><code class="sql plain">) </code></div><div class="line number315 index314 alt2"><code class="sql keyword">EXEC</code><code class="sql plain">sp_msforeach_worker </code><code class="sql string">&#39;?&#39;</code></div><div class="line number316 index315 alt1"><code class="sql plain">7.记录搜索: </code></div><div class="line number317 index316 alt2"><code class="sql plain">开头到N条记录 </code></div><div class="line number318 index317 alt1"><code class="sql keyword">Select</code><code class="sql keyword">Top</code><code class="sql plain">N * </code><code class="sql keyword">From</code><code class="sql plain">表 </code></div><div class="line number319 index318 alt2"><code class="sql comments">------------------------------- </code></div><div class="line number320 index319 alt1"><code class="sql plain">N到M条记录(要有主索引ID) </code></div><div class="line number321 index320 alt2"><code class="sql keyword">Select</code><code class="sql keyword">Top</code><code class="sql plain">M-N * </code><code class="sql keyword">From</code><code class="sql plain">表 </code><code class="sql keyword">Where</code><code class="sql plain">ID </code><code class="sql color1">in</code><code class="sql plain">(</code><code class="sql keyword">Select</code><code class="sql keyword">Top</code><code class="sql plain">M ID </code><code class="sql keyword">From</code><code class="sql plain">表) </code><code class="sql keyword">Order</code><code class="sql keyword">by</code><code class="sql plain">ID &nbsp; </code><code class="sql keyword">Desc</code></div><div class="line number322 index321 alt1"><code class="sql comments">---------------------------------- </code></div><div class="line number323 index322 alt2"><code class="sql plain">N到结尾记录 </code></div><div class="line number324 index323 alt1"><code class="sql keyword">Select</code><code class="sql keyword">Top</code><code class="sql plain">N * </code><code class="sql keyword">From</code><code class="sql plain">表 </code><code class="sql keyword">Order</code><code class="sql keyword">by</code><code class="sql plain">ID </code><code class="sql keyword">Desc</code></div><div class="line number325 index324 alt2"><code class="sql plain">案例 </code></div><div class="line number326 index325 alt1"><code class="sql plain">例如1：一张表有一万多条记录，表的第一个字段 RecID 是自增长字段， 写一个SQL语句，找出表的第31到第40个记录。 </code></div><div class="line number327 index326 alt2"><code class="sql spaces"> </code><code class="sql keyword">select</code><code class="sql keyword">top</code><code class="sql plain">10 recid </code><code class="sql keyword">from</code><code class="sql plain">A </code><code class="sql keyword">where</code><code class="sql plain">recid </code><code class="sql color1">not</code> &nbsp;<code class="sql color1">in</code><code class="sql plain">(</code><code class="sql keyword">select</code><code class="sql keyword">top</code><code class="sql plain">30 recid </code><code class="sql keyword">from</code><code class="sql plain">A) </code></div><div class="line number328 index327 alt1"><code class="sql plain">分析：如果这样写会产生某些问题，如果recid在表中存在逻辑索引。 </code></div><div class="line number329 index328 alt2"><code class="sql spaces"> </code><code class="sql keyword">select</code><code class="sql keyword">top</code><code class="sql plain">10 recid </code><code class="sql keyword">from</code><code class="sql plain">A </code><code class="sql keyword">where</code><code class="sql plain">……是从索引中查找，而后面的</code><code class="sql keyword">select</code><code class="sql keyword">top</code><code class="sql plain">30 recid </code><code class="sql keyword">from</code><code class="sql plain">A则在数据表中查找，这样由于索引中的顺序有可能和数据表中的不一致，这样就导致查询到的不是本来的欲得到的数据。 </code></div><div class="line number330 index329 alt1"><code class="sql plain">解决方案 </code></div><div class="line number331 index330 alt2"><code class="sql plain">1， 用</code><code class="sql keyword">order</code><code class="sql keyword">by</code><code class="sql keyword">select</code><code class="sql keyword">top</code><code class="sql plain">30 recid </code><code class="sql keyword">from</code><code class="sql plain">A </code><code class="sql keyword">order</code><code class="sql keyword">by</code><code class="sql plain">ricid 如果该字段不是自增长，就会出现问题 </code></div><div class="line number332 index331 alt1"><code class="sql plain">2， 在那个子查询中也加条件：</code><code class="sql keyword">select</code><code class="sql keyword">top</code><code class="sql plain">30 recid </code><code class="sql keyword">from</code><code class="sql plain">A </code><code class="sql keyword">where</code><code class="sql plain">recid&gt;-1 </code></div><div class="line number333 index332 alt2"><code class="sql plain">例2：查询表中的最后以条记录，并不知道这个表共有多少数据,以及表结构。 </code></div><div class="line number334 index333 alt1"><code class="sql keyword">set</code><code class="sql plain">@s = </code><code class="sql string">&#39;select top 1 * from T &nbsp; where pid not in (select top &#39;</code><code class="sql plain">+ str(@</code><code class="sql color2">count</code><code class="sql plain">-1) + </code><code class="sql string">&#39; pid &nbsp;from &nbsp;T)&#39;</code></div><div class="line number335 index334 alt2"><code class="sql plain">print @s &nbsp; &nbsp; &nbsp;</code><code class="sql keyword">exec</code> &nbsp;<code class="sql plain">sp_executesql &nbsp;@s </code></div><div class="line number336 index335 alt1"><code class="sql plain">9：获取当前数据库中的所有用户表 </code></div><div class="line number337 index336 alt2"><code class="sql keyword">select</code><code class="sql keyword">Name</code><code class="sql keyword">from</code><code class="sql plain">sysobjects </code><code class="sql keyword">where</code><code class="sql plain">xtype=</code><code class="sql string">&#39;u&#39;</code><code class="sql color1">and</code><code class="sql plain">status&gt;=0 </code></div><div class="line number338 index337 alt1"><code class="sql plain">10：获取某一个表的所有字段 </code></div><div class="line number339 index338 alt2"><code class="sql keyword">select</code><code class="sql keyword">name</code><code class="sql keyword">from</code><code class="sql plain">syscolumns </code><code class="sql keyword">where</code><code class="sql plain">id=object_id(</code><code class="sql string">&#39;表名&#39;</code><code class="sql plain">) </code></div><div class="line number340 index339 alt1"><code class="sql keyword">select</code><code class="sql keyword">name</code><code class="sql keyword">from</code><code class="sql plain">syscolumns </code><code class="sql keyword">where</code><code class="sql plain">id </code><code class="sql color1">in</code><code class="sql plain">(</code><code class="sql keyword">select</code><code class="sql plain">id </code><code class="sql keyword">from</code><code class="sql plain">sysobjects </code><code class="sql keyword">where</code><code class="sql plain">type = </code><code class="sql string">&#39;u&#39;</code><code class="sql color1">and</code><code class="sql keyword">name</code><code class="sql plain">= </code><code class="sql string">&#39;表名&#39;</code><code class="sql plain">) </code></div><div class="line number341 index340 alt2"><code class="sql plain">两种方式的效果相同 </code></div><div class="line number342 index341 alt1"><code class="sql plain">11：查看与某一个表相关的视图、存储过程、函数 </code></div><div class="line number343 index342 alt2"><code class="sql keyword">select</code><code class="sql plain">a.* </code><code class="sql keyword">from</code><code class="sql plain">sysobjects a, syscomments b </code><code class="sql keyword">where</code><code class="sql plain">a.id = b.id </code><code class="sql color1">and</code><code class="sql plain">b.text </code><code class="sql color1">like</code><code class="sql string">&#39;%表名%&#39;</code></div><div class="line number344 index343 alt1"><code class="sql plain">12：查看当前数据库中所有存储过程 </code></div><div class="line number345 index344 alt2"><code class="sql keyword">select</code><code class="sql keyword">name</code><code class="sql keyword">as</code><code class="sql plain">存储过程名称 </code><code class="sql keyword">from</code><code class="sql plain">sysobjects </code><code class="sql keyword">where</code><code class="sql plain">xtype=</code><code class="sql string">&#39;P&#39;</code></div><div class="line number346 index345 alt1"><code class="sql plain">13：查询用户创建的所有数据库 </code></div><div class="line number347 index346 alt2"><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql plain">master..sysdatabases D </code><code class="sql keyword">where</code><code class="sql plain">sid </code><code class="sql color1">not</code><code class="sql color1">in</code><code class="sql plain">(</code><code class="sql keyword">select</code><code class="sql plain">sid </code><code class="sql keyword">from</code><code class="sql plain">master..syslogins </code><code class="sql keyword">where</code><code class="sql keyword">name</code><code class="sql plain">=</code><code class="sql string">&#39;sa&#39;</code><code class="sql plain">) </code></div><div class="line number348 index347 alt1"><code class="sql plain">或者 </code></div><div class="line number349 index348 alt2"><code class="sql keyword">select</code><code class="sql plain">dbid, </code><code class="sql keyword">name</code><code class="sql keyword">AS</code><code class="sql plain">DB_NAME </code><code class="sql keyword">from</code><code class="sql plain">master..sysdatabases </code><code class="sql keyword">where</code><code class="sql plain">sid &lt;&gt; 0x01 </code></div><div class="line number350 index349 alt1"><code class="sql plain">14：查询某一个表的字段和数据类型 </code></div><div class="line number351 index350 alt2"><code class="sql keyword">select</code><code class="sql plain">column_name,data_type </code><code class="sql keyword">from</code><code class="sql plain">information_schema.columns </code></div><div class="line number352 index351 alt1"><code class="sql keyword">where</code><code class="sql plain">table_name = </code><code class="sql string">&#39;表名&#39;</code></div><div class="line number353 index352 alt2"><code class="sql plain">15：不同服务器数据库之间的数据操作 </code></div><div class="line number354 index353 alt1"><code class="sql comments">--创建链接服务器 </code></div><div class="line number355 index354 alt2"><code class="sql keyword">exec</code><code class="sql plain">sp_addlinkedserver &nbsp; </code><code class="sql string">&#39;ITSV &#39;</code><code class="sql plain">, </code><code class="sql string">&#39; &#39;</code><code class="sql plain">, </code><code class="sql string">&#39;SQLOLEDB &#39;</code><code class="sql plain">, </code><code class="sql string">&#39;远程服务器名或ip地址 &#39;</code></div><div class="line number356 index355 alt1"><code class="sql keyword">exec</code><code class="sql plain">sp_addlinkedsrvlogin &nbsp;</code><code class="sql string">&#39;ITSV &#39;</code><code class="sql plain">, </code><code class="sql string">&#39;false &#39;</code><code class="sql plain">,</code><code class="sql color1">null</code><code class="sql plain">, </code><code class="sql string">&#39;用户名 &#39;</code><code class="sql plain">, </code><code class="sql string">&#39;密码 &#39;</code></div><div class="line number357 index356 alt2"><code class="sql comments">--查询示例 </code></div><div class="line number358 index357 alt1"><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql plain">ITSV.数据库名.dbo.表名 </code></div><div class="line number359 index358 alt2"><code class="sql comments">--导入示例 </code></div><div class="line number360 index359 alt1"><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">into</code><code class="sql plain">表 </code><code class="sql keyword">from</code><code class="sql plain">ITSV.数据库名.dbo.表名 </code></div><div class="line number361 index360 alt2"><code class="sql comments">--以后不再使用时删除链接服务器 </code></div><div class="line number362 index361 alt1"><code class="sql keyword">exec</code><code class="sql plain">sp_dropserver &nbsp;</code><code class="sql string">&#39;ITSV &#39;</code><code class="sql plain">, </code><code class="sql string">&#39;droplogins &#39;</code></div><div class="line number363 index362 alt2"><code class="sql spaces"> </code> </div><div class="line number364 index363 alt1"><code class="sql comments">--连接远程/局域网数据(openrowset/openquery/opendatasource) </code></div><div class="line number365 index364 alt2"><code class="sql comments">--1、openrowset </code></div><div class="line number366 index365 alt1"><code class="sql comments">--查询示例 </code></div><div class="line number367 index366 alt2"><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql plain">openrowset( </code><code class="sql string">&#39;SQLOLEDB &#39;</code><code class="sql plain">, </code><code class="sql string">&#39;sql服务器名 &#39;</code><code class="sql plain">; </code><code class="sql string">&#39;用户名 &#39;</code><code class="sql plain">; </code><code class="sql string">&#39;密码 &#39;</code><code class="sql plain">,数据库名.dbo.表名) </code></div><div class="line number368 index367 alt1"><code class="sql comments">--生成本地表 </code></div><div class="line number369 index368 alt2"><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">into</code><code class="sql plain">表 </code><code class="sql keyword">from</code><code class="sql plain">openrowset( </code><code class="sql string">&#39;SQLOLEDB &#39;</code><code class="sql plain">, </code><code class="sql string">&#39;sql服务器名 &#39;</code><code class="sql plain">; </code><code class="sql string">&#39;用户名 &#39;</code><code class="sql plain">; </code><code class="sql string">&#39;密码 &#39;</code><code class="sql plain">,数据库名.dbo.表名) </code></div><div class="line number370 index369 alt1"><code class="sql spaces"> </code> </div><div class="line number371 index370 alt2"><code class="sql comments">--把本地表导入远程表 </code></div><div class="line number372 index371 alt1"><code class="sql keyword">insert</code><code class="sql plain">openrowset( </code><code class="sql string">&#39;SQLOLEDB &#39;</code><code class="sql plain">, </code><code class="sql string">&#39;sql服务器名 &#39;</code><code class="sql plain">; </code><code class="sql string">&#39;用户名 &#39;</code><code class="sql plain">; </code><code class="sql string">&#39;密码 &#39;</code><code class="sql plain">,数据库名.dbo.表名) </code></div><div class="line number373 index372 alt2"><code class="sql keyword">select</code><code class="sql plain">*</code><code class="sql keyword">from</code><code class="sql plain">本地表 </code></div><div class="line number374 index373 alt1"><code class="sql comments">--更新本地表 </code></div><div class="line number375 index374 alt2"><code class="sql keyword">update</code><code class="sql plain">b </code></div><div class="line number376 index375 alt1"><code class="sql keyword">set</code><code class="sql plain">b.列A=a.列A </code></div><div class="line number377 index376 alt2"><code class="sql spaces"> </code><code class="sql keyword">from</code><code class="sql plain">openrowset( </code><code class="sql string">&#39;SQLOLEDB &#39;</code><code class="sql plain">, </code><code class="sql string">&#39;sql服务器名 &#39;</code><code class="sql plain">; </code><code class="sql string">&#39;用户名 &#39;</code><code class="sql plain">; </code><code class="sql string">&#39;密码 &#39;</code><code class="sql plain">,数据库名.dbo.表名)</code><code class="sql keyword">as</code><code class="sql plain">a </code><code class="sql keyword">inner</code><code class="sql color1">join</code><code class="sql plain">本地表 b </code></div><div class="line number378 index377 alt1"><code class="sql keyword">on</code><code class="sql plain">a.column1=b.column1 </code></div><div class="line number379 index378 alt2"><code class="sql comments">--openquery用法需要创建一个连接 </code></div><div class="line number380 index379 alt1"><code class="sql comments">--首先创建一个连接创建链接服务器 </code></div><div class="line number381 index380 alt2"><code class="sql keyword">exec</code><code class="sql plain">sp_addlinkedserver &nbsp; </code><code class="sql string">&#39;ITSV &#39;</code><code class="sql plain">, </code><code class="sql string">&#39; &#39;</code><code class="sql plain">, </code><code class="sql string">&#39;SQLOLEDB &#39;</code><code class="sql plain">, </code><code class="sql string">&#39;远程服务器名或ip地址 &#39;</code></div><div class="line number382 index381 alt1"><code class="sql comments">--查询 </code></div><div class="line number383 index382 alt2"><code class="sql keyword">select</code><code class="sql plain">* </code></div><div class="line number384 index383 alt1"><code class="sql keyword">FROM</code><code class="sql plain">openquery(ITSV, &nbsp;</code><code class="sql string">&#39;SELECT * &nbsp;FROM 数据库.dbo.表名 &#39;</code><code class="sql plain">) </code></div><div class="line number385 index384 alt2"><code class="sql comments">--把本地表导入远程表 </code></div><div class="line number386 index385 alt1"><code class="sql keyword">insert</code><code class="sql plain">openquery(ITSV, &nbsp;</code><code class="sql string">&#39;SELECT * &nbsp;FROM 数据库.dbo.表名 &#39;</code><code class="sql plain">) </code></div><div class="line number387 index386 alt2"><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql plain">本地表 </code></div><div class="line number388 index387 alt1"><code class="sql comments">--更新本地表 </code></div><div class="line number389 index388 alt2"><code class="sql keyword">update</code><code class="sql plain">b </code></div><div class="line number390 index389 alt1"><code class="sql keyword">set</code><code class="sql plain">b.列B=a.列B </code></div><div class="line number391 index390 alt2"><code class="sql keyword">FROM</code><code class="sql plain">openquery(ITSV, &nbsp;</code><code class="sql string">&#39;SELECT * FROM 数据库.dbo.表名 &#39;</code><code class="sql plain">) </code><code class="sql keyword">as</code><code class="sql plain">a &nbsp;</code></div><div class="line number392 index391 alt1"><code class="sql keyword">inner</code><code class="sql color1">join</code><code class="sql plain">本地表 b </code><code class="sql keyword">on</code><code class="sql plain">a.列A=b.列A </code></div><div class="line number393 index392 alt2"><code class="sql spaces"> </code> </div><div class="line number394 index393 alt1"><code class="sql comments">--3、opendatasource/openrowset </code></div><div class="line number395 index394 alt2"><code class="sql keyword">SELECT</code> &nbsp; <code class="sql plain">* </code></div><div class="line number396 index395 alt1"><code class="sql keyword">FROM</code> &nbsp; <code class="sql plain">opendatasource( </code><code class="sql string">&#39;SQLOLEDB &#39;</code><code class="sql plain">, &nbsp;</code><code class="sql string">&#39;Data Source=ip/ServerName;User ID=登陆名;Password=密码 &#39;</code><code class="sql plain">).test.dbo.roy_ta </code></div><div class="line number397 index396 alt2"><code class="sql comments">--把本地表导入远程表 </code></div><div class="line number398 index397 alt1"><code class="sql keyword">insert</code><code class="sql plain">opendatasource( </code><code class="sql string">&#39;SQLOLEDB &#39;</code><code class="sql plain">, &nbsp;</code><code class="sql string">&#39;Data Source=ip/ServerName;User ID=登陆名;Password=密码 &#39;</code><code class="sql plain">).数据库.dbo.表名 </code></div><div class="line number399 index398 alt2"><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql plain">本地表 &nbsp;</code></div><div class="line number400 index399 alt1"><code class="sql plain">SQL Server基本函数 </code></div><div class="line number401 index400 alt2"><code class="sql plain">SQL Server基本函数 </code></div><div class="line number402 index401 alt1"><code class="sql plain">1.字符串函数 长度与分析用 </code></div><div class="line number403 index402 alt2"><code class="sql plain">1,datalength(Char_expr) 返回字符串包含字符数,但不包含后面的空格 </code></div><div class="line number404 index403 alt1"><code class="sql plain">2,</code><code class="sql color2">substring</code><code class="sql plain">(expression,start,length) 取子串，字符串的下标是从“1”，start为起始位置，length为字符串长度，实际应用中以len(expression)取得其长度 </code></div><div class="line number405 index404 alt2"><code class="sql plain">3,</code><code class="sql color2">right</code><code class="sql plain">(char_expr,int_expr) 返回字符串右边第int_expr个字符，还用</code><code class="sql color2">left</code><code class="sql plain">于之相反 </code></div><div class="line number406 index405 alt1"><code class="sql plain">4,</code><code class="sql color2">isnull</code><code class="sql plain">( check_expression , replacement_value )如果check_expression為空，則返回replacement_value的值，不為空，就返回check_expression字符操作类 </code></div><div class="line number407 index406 alt2"><code class="sql plain">5,Sp_addtype 自定義數據類型 </code></div><div class="line number408 index407 alt1"><code class="sql plain">例如：</code><code class="sql keyword">EXEC</code><code class="sql plain">sp_addtype birthday, datetime, </code><code class="sql string">&#39;NULL&#39;</code></div><div class="line number409 index408 alt2"><code class="sql plain">6,</code><code class="sql keyword">set</code><code class="sql plain">nocount {</code><code class="sql keyword">on</code><code class="sql plain">|</code><code class="sql keyword">off</code><code class="sql plain">} </code></div><div class="line number410 index409 alt1"><code class="sql plain">使返回的结果中不包含有关受 Transact-SQL 语句影响的行数的信息。如果存储过程中包含的一些语句并不返回许多实际的数据，则该设置由于大量减少了网络流量，因此可显著提高性能。</code><code class="sql keyword">SET</code><code class="sql plain">NOCOUNT 设置是在执行或运行时设置，而不是在分析时设置。 </code></div><div class="line number411 index410 alt2"><code class="sql keyword">SET</code><code class="sql plain">NOCOUNT 为 </code><code class="sql keyword">ON</code><code class="sql plain">时，不返回计数（表示受 Transact-SQL 语句影响的行数）。 </code></div><div class="line number412 index411 alt1"><code class="sql keyword">SET</code><code class="sql plain">NOCOUNT 为 </code><code class="sql keyword">OFF</code><code class="sql plain">时，返回计数 </code></div><div class="line number413 index412 alt2"><code class="sql plain">常识 </code></div><div class="line number414 index413 alt1"><code class="sql spaces"> </code> </div><div class="line number415 index414 alt2"><code class="sql plain">在SQL查询中：</code><code class="sql keyword">from</code><code class="sql plain">后最多可以跟多少张表或视图：256 </code></div><div class="line number416 index415 alt1"><code class="sql plain">在SQL语句中出现 </code><code class="sql keyword">Order</code><code class="sql keyword">by</code><code class="sql plain">,查询时，先排序，后取 </code></div><div class="line number417 index416 alt2"><code class="sql plain">在SQL中，一个字段的最大容量是8000，而对于nvarchar(4000),由于nvarchar是Unicode码。 &nbsp;</code></div><div class="line number418 index417 alt1"><code class="sql spaces"> &nbsp;</code> </div><div class="line number419 index418 alt2"><code class="sql plain">SQLServer2000同步复制技术实现步骤 </code></div><div class="line number420 index419 alt1"><code class="sql plain">一、 预备工作 </code></div><div class="line number421 index420 alt2"><code class="sql plain">1.发布服务器,订阅服务器都创建一个同名的windows用户,并设置相同的密码,做为发布快照文件夹的有效访问用户 </code></div><div class="line number422 index421 alt1"><code class="sql comments">--管理工具 </code></div><div class="line number423 index422 alt2"><code class="sql comments">--计算机管理 </code></div><div class="line number424 index423 alt1"><code class="sql comments">--用户和组 </code></div><div class="line number425 index424 alt2"><code class="sql comments">--右键用户 </code></div><div class="line number426 index425 alt1"><code class="sql comments">--新建用户 </code></div><div class="line number427 index426 alt2"><code class="sql comments">--建立一个隶属于administrator组的登陆windows的用户（SynUser） </code></div><div class="line number428 index427 alt1"><code class="sql plain">2.在发布服务器上,新建一个共享目录,做为发布的快照文件的存放目录,操作: </code></div><div class="line number429 index428 alt2"><code class="sql plain">我的电脑</code><code class="sql comments">--D:\ 新建一个目录,名为: PUB </code></div><div class="line number430 index429 alt1"><code class="sql comments">--右键这个新建的目录 </code></div><div class="line number431 index430 alt2"><code class="sql comments">--属性--共享 </code></div><div class="line number432 index431 alt1"><code class="sql comments">--选择&quot;共享该文件夹&quot; </code></div><div class="line number433 index432 alt2"><code class="sql comments">--通过&quot;权限&quot;按纽来设置具体的用户权限,保证第一步中创建的用户(SynUser) 具有对该文件夹的所有权限 </code></div><div class="line number434 index433 alt1"><code class="sql spaces"> </code> </div><div class="line number435 index434 alt2"><code class="sql comments">--确定 </code></div><div class="line number436 index435 alt1"><code class="sql plain">3.设置SQL代理(SQLSERVERAGENT)服务的启动用户(发布/订阅服务器均做此设置) </code></div><div class="line number437 index436 alt2"><code class="sql plain">开始</code><code class="sql comments">--程序--管理工具--服务 </code></div><div class="line number438 index437 alt1"><code class="sql comments">--右键SQLSERVERAGENT </code></div><div class="line number439 index438 alt2"><code class="sql comments">--属性--登陆--选择&quot;此账户&quot; </code></div><div class="line number440 index439 alt1"><code class="sql comments">--输入或者选择第一步中创建的windows登录用户名（SynUser） </code></div><div class="line number441 index440 alt2"><code class="sql comments">--&quot;密码&quot;中输入该用户的密码 </code></div><div class="line number442 index441 alt1"><code class="sql plain">4.设置SQL Server身份验证模式,解决连接时的权限问题(发布/订阅服务器均做此设置) </code></div><div class="line number443 index442 alt2"><code class="sql plain">企业管理器 </code></div><div class="line number444 index443 alt1"><code class="sql comments">--右键SQL实例--属性 </code></div><div class="line number445 index444 alt2"><code class="sql comments">--安全性--身份验证 </code></div><div class="line number446 index445 alt1"><code class="sql comments">--选择&quot;SQL Server 和 Windows&quot; </code></div><div class="line number447 index446 alt2"><code class="sql comments">--确定 </code></div><div class="line number448 index447 alt1"><code class="sql plain">5.在发布服务器和订阅服务器上互相注册 </code></div><div class="line number449 index448 alt2"><code class="sql plain">企业管理器 </code></div><div class="line number450 index449 alt1"><code class="sql comments">--右键SQL Server组 </code></div><div class="line number451 index450 alt2"><code class="sql comments">--新建SQL Server注册... </code></div><div class="line number452 index451 alt1"><code class="sql comments">--下一步--可用的服务器中,输入你要注册的远程服务器名 --添加 </code></div><div class="line number453 index452 alt2"><code class="sql comments">--下一步--连接使用,选择第二个&quot;SQL Server身份验证&quot; </code></div><div class="line number454 index453 alt1"><code class="sql comments">--下一步--输入用户名和密码（SynUser） </code></div><div class="line number455 index454 alt2"><code class="sql comments">--下一步--选择SQL Server组,也可以创建一个新组 </code></div><div class="line number456 index455 alt1"><code class="sql comments">--下一步--完成 </code></div><div class="line number457 index456 alt2"><code class="sql plain">6.对于只能用IP,不能用计算机名的,为其注册服务器别名（此步在实施中没用到） </code></div><div class="line number458 index457 alt1"><code class="sql spaces"> </code><code class="sql plain">(在连接端配置,比如,在订阅服务器上配置的话,服务器名称中输入的是发布服务器的IP) </code></div><div class="line number459 index458 alt2"><code class="sql plain">开始</code><code class="sql comments">--程序--Microsoft SQL Server--客户端网络实用工具 </code></div><div class="line number460 index459 alt1"><code class="sql comments">--别名--添加 </code></div><div class="line number461 index460 alt2"><code class="sql comments">--网络库选择&quot;tcp/ip&quot;--服务器别名输入SQL服务器名 </code></div><div class="line number462 index461 alt1"><code class="sql comments">--连接参数--服务器名称中输入SQL服务器ip地址 </code></div><div class="line number463 index462 alt2"><code class="sql comments">--如果你修改了SQL的端口,取消选择&quot;动态决定端口&quot;,并输入对应的端口号 </code></div><div class="line number464 index463 alt1"><code class="sql plain">二、 正式配置 </code></div><div class="line number465 index464 alt2"><code class="sql plain">1、配置发布服务器 </code></div><div class="line number466 index465 alt1"><code class="sql plain">打开企业管理器，在发布服务器（B、C、D）上执行以下步骤: </code></div><div class="line number467 index466 alt2"><code class="sql plain">(1) 从[工具]下拉菜单的[复制]子菜单中选择[配置发布、订阅服务器和分发]出现配置发布和分发向导 </code></div><div class="line number468 index467 alt1"><code class="sql plain">(2) [下一步] 选择分发服务器 可以选择把发布服务器自己作为分发服务器或者其他sql的服务器（选择自己） </code></div><div class="line number469 index468 alt2"><code class="sql plain">(3) [下一步] 设置快照文件夹 </code></div><div class="line number470 index469 alt1"><code class="sql plain">采用默认\\servername\Pub </code></div><div class="line number471 index470 alt2"><code class="sql plain">(4) [下一步] 自定义配置 </code></div><div class="line number472 index471 alt1"><code class="sql plain">可以选择:是,让我设置分发数据库属性启用发布服务器或设置发布设置 </code></div><div class="line number473 index472 alt2"><code class="sql plain">否,使用下列默认设置（推荐） </code></div><div class="line number474 index473 alt1"><code class="sql plain">(5) [下一步] 设置分发数据库名称和位置 采用默认值 </code></div><div class="line number475 index474 alt2"><code class="sql plain">(6) [下一步] 启用发布服务器 选择作为发布的服务器 </code></div><div class="line number476 index475 alt1"><code class="sql plain">(7) [下一步] 选择需要发布的数据库和发布类型 </code></div><div class="line number477 index476 alt2"><code class="sql plain">(8) [下一步] 选择注册订阅服务器 </code></div><div class="line number478 index477 alt1"><code class="sql plain">(9) [下一步] 完成配置 </code></div><div class="line number479 index478 alt2"><code class="sql plain">2、创建出版物 </code></div><div class="line number480 index479 alt1"><code class="sql plain">发布服务器B、C、D上 </code></div><div class="line number481 index480 alt2"><code class="sql plain">(1)从[工具]菜单的[复制]子菜单中选择[创建和管理发布]命令 </code></div><div class="line number482 index481 alt1"><code class="sql plain">(2)选择要创建出版物的数据库，然后单击[创建发布] </code></div><div class="line number483 index482 alt2"><code class="sql plain">(3)在[创建发布向导]的提示对话框中单击[下一步]系统就会弹出一个对话框。对话框上的内容是复制的三个类型。我们现在选第一个也就是默认的快照发布(其他两个大家可以去看看帮助) </code></div><div class="line number484 index483 alt1"><code class="sql plain">(4)单击[下一步]系统要求指定可以订阅该发布的数据库服务器类型, </code></div><div class="line number485 index484 alt2"><code class="sql plain">SQLSERVER允许在不同的数据库如 orACLE或ACCESS之间进行数据复制。 </code></div><div class="line number486 index485 alt1"><code class="sql plain">但是在这里我们选择运行</code><code class="sql string">&quot;SQL SERVER 2000&quot;</code><code class="sql plain">的数据库服务器 </code></div><div class="line number487 index486 alt2"><code class="sql plain">(5)单击[下一步]系统就弹出一个定义文章的对话框也就是选择要出版的表 </code></div><div class="line number488 index487 alt1"><code class="sql plain">注意: 如果前面选择了事务发布 则再这一步中只能选择带有主键的表 </code></div><div class="line number489 index488 alt2"><code class="sql plain">(6)选择发布名称和描述 </code></div><div class="line number490 index489 alt1"><code class="sql plain">(7)自定义发布属性 向导提供的选择: </code></div><div class="line number491 index490 alt2"><code class="sql plain">是 我将自定义数据筛选,启用匿名订阅和或其他自定义属性 </code></div><div class="line number492 index491 alt1"><code class="sql plain">否 根据指定方式创建发布 （建议采用自定义的方式） </code></div><div class="line number493 index492 alt2"><code class="sql plain">(8)[下一步] 选择筛选发布的方式 </code></div><div class="line number494 index493 alt1"><code class="sql plain">(9)[下一步] 可以选择是否允许匿名订阅 </code></div><div class="line number495 index494 alt2"><code class="sql plain">1)如果选择署名订阅,则需要在发布服务器上添加订阅服务器 </code></div><div class="line number496 index495 alt1"><code class="sql plain">方法: [工具]-&gt;[复制]-&gt;[配置发布、订阅服务器和分发的属性]-&gt;[订阅服务器] 中添加 </code></div><div class="line number497 index496 alt2"><code class="sql plain">否则在订阅服务器上请求订阅时会出现的提示:改发布不允许匿名订阅 </code></div><div class="line number498 index497 alt1"><code class="sql plain">如果仍然需要匿名订阅则用以下解决办法 </code></div><div class="line number499 index498 alt2"><code class="sql plain">[企业管理器]-&gt;[复制]-&gt;[发布内容]-&gt;[属性]-&gt;[订阅选项] 选择允许匿名请求订阅 </code></div><div class="line number500 index499 alt1"><code class="sql plain">2)如果选择匿名订阅,则配置订阅服务器时不会出现以上提示 </code></div><div class="line number501 index500 alt2"><code class="sql plain">(10)[下一步] 设置快照 代理程序调度 </code></div><div class="line number502 index501 alt1"><code class="sql plain">(11)[下一步] 完成配置 </code></div><div class="line number503 index502 alt2"><code class="sql plain">当完成出版物的创建后创建出版物的数据库也就变成了一个共享数据库 </code></div><div class="line number504 index503 alt1"><code class="sql plain">有数据 </code></div><div class="line number505 index504 alt2"><code class="sql plain">srv1.库名..author有字段:id,</code><code class="sql keyword">name</code><code class="sql plain">,phone, </code></div><div class="line number506 index505 alt1"><code class="sql plain">srv2.库名..author有字段:id,</code><code class="sql keyword">name</code><code class="sql plain">,telphone,adress </code></div><div class="line number507 index506 alt2"><code class="sql spaces"> </code> </div><div class="line number508 index507 alt1"><code class="sql plain">要求： </code></div><div class="line number509 index508 alt2"><code class="sql plain">srv1.库名..author增加记录则srv1.库名..author记录增加 </code></div><div class="line number510 index509 alt1"><code class="sql plain">srv1.库名..author的phone字段更新，则srv1.库名..author对应字段telphone更新 </code></div><div class="line number511 index510 alt2"><code class="sql comments">--*/ </code></div><div class="line number512 index511 alt1"><code class="sql spaces"> </code> </div><div class="line number513 index512 alt2"><code class="sql comments">--大致的处理步骤 </code></div><div class="line number514 index513 alt1"><code class="sql comments">--1.在 srv1 上创建连接服务器,以便在 srv1 中操作 srv2,实现同步 </code></div><div class="line number515 index514 alt2"><code class="sql keyword">exec</code><code class="sql plain">sp_addlinkedserver </code><code class="sql string">&#39;srv2&#39;</code><code class="sql plain">,</code><code class="sql string">&#39;&#39;</code><code class="sql plain">,</code><code class="sql string">&#39;SQLOLEDB&#39;</code><code class="sql plain">,</code><code class="sql string">&#39;srv2的sql实例名或ip&#39;</code></div><div class="line number516 index515 alt1"><code class="sql keyword">exec</code><code class="sql plain">sp_addlinkedsrvlogin </code><code class="sql string">&#39;srv2&#39;</code><code class="sql plain">,</code><code class="sql string">&#39;false&#39;</code><code class="sql plain">,</code><code class="sql color1">null</code><code class="sql plain">,</code><code class="sql string">&#39;用户名&#39;</code><code class="sql plain">,</code><code class="sql string">&#39;密码&#39;</code></div><div class="line number517 index516 alt2"><code class="sql plain">go </code></div><div class="line number518 index517 alt1"><code class="sql comments">--2.在 srv1 和 srv2 这两台电脑中,启动 msdtc(分布式事务处理服务),并且设置为自动启动 </code></div><div class="line number519 index518 alt2"><code class="sql plain">。我的电脑</code><code class="sql comments">--控制面板--管理工具--服务--右键 Distributed Transaction Coordinator--属性--启动--并将启动类型设置为自动启动 </code></div><div class="line number520 index519 alt1"><code class="sql plain">go </code></div><div class="line number521 index520 alt2"><code class="sql spaces"> </code> </div><div class="line number522 index521 alt1"><code class="sql spaces"> </code> </div><div class="line number523 index522 alt2"><code class="sql comments">--然后创建一个作业定时调用上面的同步处理存储过程就行了 </code></div><div class="line number524 index523 alt1"><code class="sql spaces"> </code> </div><div class="line number525 index524 alt2"><code class="sql plain">企业管理器 </code></div><div class="line number526 index525 alt1"><code class="sql comments">--管理 </code></div><div class="line number527 index526 alt2"><code class="sql comments">--SQL Server代理 </code></div><div class="line number528 index527 alt1"><code class="sql comments">--右键作业 </code></div><div class="line number529 index528 alt2"><code class="sql comments">--新建作业 </code></div><div class="line number530 index529 alt1"><code class="sql comments">--&quot;常规&quot;项中输入作业名称 </code></div><div class="line number531 index530 alt2"><code class="sql comments">--&quot;步骤&quot;项 </code></div><div class="line number532 index531 alt1"><code class="sql comments">--新建 </code></div><div class="line number533 index532 alt2"><code class="sql comments">--&quot;步骤名&quot;中输入步骤名 </code></div><div class="line number534 index533 alt1"><code class="sql comments">--&quot;类型&quot;中选择&quot;Transact-SQL 脚本(TSQL)&quot; </code></div><div class="line number535 index534 alt2"><code class="sql comments">--&quot;数据库&quot;选择执行命令的数据库 </code></div><div class="line number536 index535 alt1"><code class="sql comments">--&quot;命令&quot;中输入要执行的语句: exec p_process </code></div><div class="line number537 index536 alt2"><code class="sql comments">--确定 </code></div><div class="line number538 index537 alt1"><code class="sql comments">--&quot;调度&quot;项 </code></div><div class="line number539 index538 alt2"><code class="sql comments">--新建调度 </code></div><div class="line number540 index539 alt1"><code class="sql comments">--&quot;名称&quot;中输入调度名称 </code></div><div class="line number541 index540 alt2"><code class="sql comments">--&quot;调度类型&quot;中选择你的作业执行安排 </code></div><div class="line number542 index541 alt1"><code class="sql comments">--如果选择&quot;反复出现&quot; </code></div><div class="line number543 index542 alt2"><code class="sql comments">--点&quot;更改&quot;来设置你的时间安排 </code></div><div class="line number544 index543 alt1"><code class="sql spaces"> </code> </div><div class="line number545 index544 alt2"><code class="sql spaces"> </code> </div><div class="line number546 index545 alt1"><code class="sql plain">然后将SQL Agent服务启动,并设置为自动启动,否则你的作业不会被执行 </code></div><div class="line number547 index546 alt2"><code class="sql spaces"> </code> </div><div class="line number548 index547 alt1"><code class="sql plain">设置方法: </code></div><div class="line number549 index548 alt2"><code class="sql plain">我的电脑</code><code class="sql comments">--控制面板--管理工具--服务--右键 SQLSERVERAGENT--属性--启动类型--选择&quot;自动启动&quot;--确定. </code></div><div class="line number550 index549 alt1"><code class="sql spaces"> </code> </div><div class="line number551 index550 alt2"><code class="sql spaces"> </code> </div><div class="line number552 index551 alt1"><code class="sql comments">--3.实现同步处理的方法2,定时同步 </code></div><div class="line number553 index552 alt2"><code class="sql spaces"> </code> </div><div class="line number554 index553 alt1"><code class="sql comments">--在srv1中创建如下的同步处理存储过程 </code></div><div class="line number555 index554 alt2"><code class="sql keyword">create</code><code class="sql plain">proc p_process </code></div><div class="line number556 index555 alt1"><code class="sql keyword">as</code></div><div class="line number557 index556 alt2"><code class="sql comments">--更新修改过的数据 </code></div><div class="line number558 index557 alt1"><code class="sql keyword">update</code><code class="sql plain">b </code><code class="sql keyword">set</code><code class="sql keyword">name</code><code class="sql plain">=i.</code><code class="sql keyword">name</code><code class="sql plain">,telphone=i.telphone </code></div><div class="line number559 index558 alt2"><code class="sql keyword">from</code><code class="sql plain">srv2.库名.dbo.author b,author i </code></div><div class="line number560 index559 alt1"><code class="sql keyword">where</code><code class="sql plain">b.id=i.id </code><code class="sql color1">and</code></div><div class="line number561 index560 alt2"><code class="sql plain">(b.</code><code class="sql keyword">name</code><code class="sql plain">&lt;&gt; i.</code><code class="sql keyword">name</code><code class="sql color1">or</code><code class="sql plain">b.telphone &lt;&gt; i.telphone) </code></div><div class="line number562 index561 alt1"><code class="sql spaces"> </code> </div><div class="line number563 index562 alt2"><code class="sql comments">--插入新增的数据 </code></div><div class="line number564 index563 alt1"><code class="sql keyword">insert</code><code class="sql plain">srv2.库名.dbo.author(id,</code><code class="sql keyword">name</code><code class="sql plain">,telphone) </code></div><div class="line number565 index564 alt2"><code class="sql keyword">select</code><code class="sql plain">id,</code><code class="sql keyword">name</code><code class="sql plain">,telphone </code><code class="sql keyword">from</code><code class="sql plain">author i </code></div><div class="line number566 index565 alt1"><code class="sql keyword">where</code><code class="sql color1">not</code><code class="sql plain">exists( </code></div><div class="line number567 index566 alt2"><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql plain">srv2.库名.dbo.author </code><code class="sql keyword">where</code><code class="sql plain">id=i.id) </code></div><div class="line number568 index567 alt1"><code class="sql spaces"> </code> </div><div class="line number569 index568 alt2"><code class="sql comments">--删除已经删除的数据(如果需要的话) </code></div><div class="line number570 index569 alt1"><code class="sql keyword">delete</code><code class="sql plain">b </code></div><div class="line number571 index570 alt2"><code class="sql keyword">from</code><code class="sql plain">srv2.库名.dbo.author b </code></div><div class="line number572 index571 alt1"><code class="sql keyword">where</code><code class="sql color1">not</code><code class="sql plain">exists( </code></div><div class="line number573 index572 alt2"><code class="sql keyword">select</code><code class="sql plain">* </code><code class="sql keyword">from</code><code class="sql plain">author </code><code class="sql keyword">where</code><code class="sql plain">id=b.id) </code></div><div class="line number574 index573 alt1"><code class="sql plain">go</code></div></div></td></tr></tbody></table><br /><p> </p>', 1, '2012-09-30 00:34:26', 85, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (33, 6, '如何提高网站的访问速度', '', '<div class="ans_con"><p>一、使用良好的结构<br />可扩展 HTML (XHTML) 具有许多优势，但是其缺点也很明显。XHTML 可能使您的页面更加符合标准，但是它大量使用标记（强制性的 &lt;start&gt; 和 &lt;end&gt; 标记），这意味着浏览器要下载更多代码。所以，事情都有两面性，尝试在您的网页中使用较少的 XHTML 代码，以减小页面大小。如果您确实不得不使用 XHTML，试着尽可能对它进行优化。</p><p>二、不要使布局超载<br />坚持简约原则：少即是多。页面中充斥着各种类型的图像、视频、广告等，这大大违背实用性原则。</p><p>三、不要使用图像来表示文本<br />使用图像表示文本的最常见示例就是在导航栏中。美观的按钮更加具有吸引力，但是它们的加载速度很慢。此外，图像仍然不能由搜索引擎直接索引，因此，使用图像进行导航不利于搜索引擎优化（search engine optimization，SEO）。当无需图像就可以通过大量 CSS 技巧创建漂亮的按钮时，绝不使用图像来表示文本。</p><p>四、检查cookie使用情况<br />设置一个较早的 expire 日期或者根本不设置 expire 日期，会缩短响应时间。要在 PHP 语言中设置 cookie 的 expire 日期，使用以下代码：</p><p>&lt;?php<br />$expire = 2592000 + time();<br />// Add 30 day’s to the current time<br />setcookie(userid, “123rrw3”, $expire);<br />?&gt;</p><p>这段代码设置 cookie userid，并将 expire 日期设置为自当前日期之后 30 天。</p><p>五、不要包含不必要的 JavaScript 代码，尽可能将其外部化<br />应该明智地使用 JavaScript（仅在真正必要时才使用）并优化脚本的大小和速度。缩短 JavaScript 下载时间的另一种方式是使用外部文件，而不是包含脚本内联。这种方法也适用于 CSS，因为浏览器会缓存外部化的文本，而（在 HTML 页面自身中）以内联方式编码的 CSS 或 JavaScript 每次都会随 HTML 一起加载。</p><p>六、尽可能避免使用表格<br />表格被用作网页的主要构建块，但是作为页面布局元素，使用表格现在被认为是糟糕的做法。有时候，您必须使用表格（并且它们被认为是显示表格数据的出色实践）。如果是这样，明确地指定表格单元格、行和列的宽度和高度，否则，浏览器必须执行许多操作来计算如何显示它们，这会降低页面加载速度。</p><p>七、删除任何不必要的元素<br />可能这是所有技巧中最显而易见的一个，但是它也是最容易忘记的一个技巧。如果您真正需要在网页上放置许多内容，考虑将网页分为 2 个、3 个或更多的独立页面。</p><p>八、一些优化网页的技巧<br />可以使用许多方法来优化您的网页，包括压缩 JavaScript 文件，使用超文本传输协议（Hypertext Transfer Protocol，HTTP）压缩，以及设置图像大小。</p><p>九、压缩和缩小 JavaScript 文件<br />您可以使用 GNU zip (gzip) 来完成此任务，因为许多浏览器都支持这种压缩算法。另一种替代方法是缩小文件。这种方法删除代码中所有不必要的字符，比如制表符（tab）、新行和空格。它删除代码中的注释和空白，进一步缩小文件大小。外部和内部样式表都可以缩小。两种最流行的缩小工具是 JSMin 和 YUI Compressor。</p><p>十、使用 HTTP 压缩，并始终使用小写的 div 和类名<br />可以使用 HTTP 压缩来减少服务器与浏览器之间的通信量。可以在 Apache 中配置 HTTP 压缩（.htaccess 文件），或者可以将其包含到页面中（对于 PHP，可以使用一个 HTTP_ACCEPT_ENCODING 选项）。但是请注意：不是所有浏览器都支持压缩。即使是支持压缩的浏览器，压缩和解压缩都会加重处理器的负载。要在 Apache 中启用地毯式（blanket）压缩（即压缩所有文本和 HTML），使用以下命令：<br />AddOutputFilterByType DEFLATE text/html text/plain text/xml</p><p>另外，考虑一下您想要压缩的内容。图像、音乐和视频在创建时已经进行了压缩，因此您可以将压缩对象限制为 HTML、CSS 和 JavaScript 文件。另一种减少压缩工作的技巧是使用小写形式的 &lt;div&gt; 元素和类名。由于大小写敏感性，并且使用的是无损压缩，&lt;header&gt; 与 &lt;Header&gt; 不同，它们被压缩为两个不同的标记。</p><p>十一、设置图像大小<br />与表格单元格、行和列一样，当您未明确设置图像大小时，浏览器需要执行计算来显示图像，这会降低处理速度。</p><p>十二、将 CSS 图像映射用于装饰功能<br />使用图像映射代替多个图像，这是另一种缩短加载时间的方式，因为同时下载图像的各个独立部分能够加快整个页面的下载进度。或者，您可以使用某种名为 CSS sprites 的工具。CSS sprites 可帮助减少 HTTP 请求的数量。一个图像可以包含装饰或布置页面所需的所有图像元素。您使用 CSS 来选择（通过调用某些位置和维度）用于特定元素的映射。</p><p>十三、尽可能延迟脚本加载<br />一种提升页面下载速度的潜在方式是将脚本放在页面的底部，使页面加载更迅速。通常，浏览器只能（从同一个域）下载不超过两个并行对象，如果一个对象是一段 JavaScript 代码，那么在该脚本下载完之前，其他页面组件的下载将会暂停。如果将 JavaScript 代码放在页面底部，（在大多数情况下）它将在最后下载，这时所有其他组件都已下载完。</p><p>十四、按需加载 JavaScript 文件<br />要按需加载 JavaScript，使用 import() 函数。<br />import() 函数：<br />function $import(src){<br />var scriptElem = document.createElement(&#39;script&#39;);<br />scriptElem.setAttribute(&#39;src&#39;,src);<br />scriptElem.setAttribute(&#39;type&#39;,&#39;text/javascript&#39;);<br />document.getElementsByTagName(&#39;head&#39;)[0].appendChild(scriptElem);<br />}</p><p>// import with a random query parameter to avoid caching<br />function $importNoCache(src){<br />var ms = new Date().getTime().toString();<br />var seed = &quot;?&quot; + ms;<br />$import(src + seed);<br />}</p><p>十五、验证函数加载<br />也可以验证一个函数是否被加载，如果没有，加载 JavaScript 文件。<br />验证函数是否被加载：<br />if (myfunction){<br />// The function has been loaded<br />}<br />else{ // Function has not been loaded yet, so load the javascript.<br />$import(&#39;http://www.yourfastsite.com/myfile.js&#39;);<br />}</p><p>注意：可以使用 defer 属性，但不是所有浏览器（包括 Firefox）都支持它。</p><p>十六、优化 CSS 文件<br />如果经过适当优化和维护，CSS 文件不一定很大。例如，具有很多独立类的 CSS 文件会影响下载速度。与 JavaScript 文件一样，您需要优化 CSS 文件，使其包含所需的所有内容，同时保持合理的大小。另外，使用外部文件代替内联定义来适应浏览器的缓存机制。</p><p>十七、使用内容分布网络<br />内容分布网络（Content-distribution network，CDN）是另一种缩短下载时间的好方法。当您将静态图像放在 Internet 上的许多服务器上时，用户能够从离他们最近的服务器下载这些图像。此外，大多数 CDN 都在快速服务器上运行，因此无论服务器的加载速度如何，其响应速度都比小型的超载服务器快。</p><p>十八、对资产使用多个域来增加连接<br />CDN 的另一个优势是它们是独立的域。因为您的浏览器将并发连接的数量限制到一个单一的域，因此无论何时加载一个页面，都很容易占满所有线程。因此，到其他资产的连接被延迟了。然而，您的浏览器能够打开新线程或到其他域的连接，这样，从另一个域加载的任何资产都可以与其他所有资产同时加载。</p><p>十九、在合适的时候使用 Google Gears<br />使用 Google Gears（参见 参考资料）是避免用户反复下载同一内容的另一种好方法。Gears 允许用户离线访问 Web 应用程序，但是也允许将页面元素持久化到用户的计算机上。因此，频繁加载但未进行更新的内容可以存储在 Gears 数据库中，该数据库是一个 SQLite3 关系数据库管理系统。对同一内容的所有 next 请求都可以从数据库（而不是服务器）直接加载。</p><p>二十、使用 PNG 格式的图像</p><p>Graphic Interchange Format (GIF) 和 Joint Photographic Experts Group (JPEG) 图像格式都已过时了：Portable Network Graphic (PNG) 是未来流行的格式。当然，您可以说 GIF 和 JPEG 已经消亡，或者 PNG 没有任何缺陷，但是所有事物都有各自的优缺点，PNG 以最佳的文件大小提供了出色的质量。因此，如果进行选择的话，应该尽可能使用 PNG 图像。</p><p>二十一、保持 Ajax 调用简短、准确<br />当统称为 Asynchronous JavaScript + XML (Ajax) 的技术在两年前出现时，这些技术为处理页面请求和响应提供了一种革命性方法。然而，拨号用户可能从来没机会体验其真正的优势，因为在许多情形下，Ajax 需要在浏览器与服务器之间大量通信。因此，如果您能够保持 Ajax 调用简短和准确，可以避免用户花费无止尽的时间来等待元素刷新或响应。</p><p>二十二、进行一次较大的 Ajax 调用并在本地处理客户机数据</p><p>如果不能进行简短的 Ajax 调用，或者如果这些调用不能提供期望的结果，可以考虑一种替代方法：进行一次大的 Ajax 调用来获取所需的一切内容，然后让客户机在本地处理数据。通过这种方式，客户机只需等待一次（获取传入的数据），但是在此之后（当浏览器与服务器之间没有必要通信时），处理速度将更快。当然，还有大量 Ajax 优化技术，本教程无法一一列出。</p><p>二十三、在沙箱中测试代码</p><p>还有一个经常被遗忘的常用技巧。尽管清醒的 Web 开发人员通常会在启动应用程序之前对其进行测试，但是有时候测试会使他们不那么重视维护任务，或者新功能添加得太快，并且未经过充分考虑或测试。结果，余下的脚本减缓了应用程序的速度。如果您添加一项新功能，可以首先在沙箱里（完全脱离了应用程序的其余部分）进行测试，查看它作为单个函数的行为。通过这种方式，您可以反复检查，并分析性能和响应时间，无需考虑 Web 应用程序的其余部分。然后，当新功能的行为符合预期时，可以将其引入到应用程序的其余部分中，运行其他测试，保证功能本身的行为符合预期。</p><p>二十四、分析站点代码<br />在许多场景中，自我反省是一个不错的建议。幸运的是，在开发过程中，我们可以使用工具来帮助反省，并尽可能客观地进行实践。像 JSLint（参见 参考资源）这样的工具的价值是无法衡量的，尽管其站点宣称它 “可能令您备受挫折”，因为它向您提供了所有的潜在代码缺陷，这些缺陷不但使调试更加困难，而且可能导致更长的响应时间。</p><p>二十五、检查孤立的文件和丢失的图像<br />检查孤立的文件和丢失的图像是一种明智之举。大部分 Web 开发人员都会检查错误的文件引用，但是这里仍然需要说明一下。丢失的文件容易引起各种问题，因为它们会导致 “The image/page cannot be displayed” 之类的错误消息。但是在网页速度优化方面，它们具有更大的缺陷：当浏览器寻找丢失的或孤立的文件时，它会消耗资源，这不可避免地会导致页面处理速度变慢。因此，请检查孤立或丢失的文件，包括拼写错误的文件名。</p><p>浏览器构造页面的原理，当浏览器从服务器接收到了HTML文档，并把HTML在内存中转换成DOM树，在转换的过程中如果发现某个节点(node)上引用了CSS或者 IMAGE，就会再发1个request去请求CSS或image,然后继续执行下面的转换，而不需要等待request的返回，当request返回 后，只需要把返回的内容放入到DOM树中对应的位置就OK。但当引用了JS的时候，浏览器发送1个js request就会一直等待该request的返回。因为浏览器需要1个稳定的DOM树结构，而JS中很有可能有代码直接改变了DOM树结构，比如使用 document.write 或 appendChild,甚至是直接使用的location.href进行跳转，浏览器为了防止出现JS修改DOM树，需要重新构建DOM树的情况，所以 就会阻塞其他的下载和呈现.</p><p>并行、分段加载外部 script<br />Parallel script loading （并行加载）是加速网站页面加载最有效的方法之一。因为古代的浏览器（aka IE）很多都不支援 parallel scripting loading，它们加载外部 script 时是一个完成后才开始下载另一个，而不是像图片一样同时下载多个文件，即出现上图情况：所有在该 script 之后的文件下载都被挡在后面了 (blocking)。因此出现了 n 多个小技巧解决这个问题。</p><div class="code_block" jquery1640875875612861384="111"><a style="position:absolute;visibility:hidden;left:480px" id="copy_code_0" class="copy_code" title="复制代码" href="javascript:void(0)"> </a><a style="position:absolute;visibility:hidden;top:3px;left:550px" class="tool" title="新窗口代码预览" href="javascript:void(0)" jquery1640875875612861384="114"> </a><pre lang="other" class="prettyprint  linenums:1" index="0"><ol class="linenums"><li class="L0"><p><span class="pun">*</span><span class="pln"></span><span class="typ">Script</span><span class="pln"> DOM </span><span class="typ">Element</span><span class="pln"></span> <br /></p></li><li class="L1"><p><span class="pln"></span><span class="pun">*</span><span class="pln"> XHR </span><span class="typ">Eval</span><span class="pln"></span> <br /></p></li><li class="L2"><p><span class="pln"></span><span class="pun">*</span><span class="pln"> XHR </span><span class="typ">Injection</span><span class="pln"></span> <br /></p></li><li class="L3"><p><span class="pln"></span><span class="pun">*</span><span class="pln"></span><span class="typ">Script</span><span class="pln"></span><span class="kwd">in</span><span class="pln"> frame</span> <br /></p></li><li class="L4"><p><span class="pln"></span><span class="pun">*</span><span class="pln"></span><span class="typ">Script</span><span class="pln"></span><span class="typ">Defer</span><span class="pln"></span> <br /></p></li><li class="L5"><p><span class="pln"></span><span class="pun">*</span><span class="pln"></span><span class="typ">Document</span><span class="pun">.</span><span class="pln">write </span><span class="typ">Script</span><span class="pln"> tag </span><span class="pun">（</span><span class="pln">IE only</span><span class="pun">）</span></p></li></ol></pre><div style="z-index:99;position:absolute;width:16px;height:15px;top:8px;left:529px" class="swf" title="复制代码"></div></div><p>不同方法有不同特征，如对跨域名的支援、执行顺序、浏览器状态等。当中 Script DOM Element 是最流行的的方法，亦都支援最多的 browsers。各种方法的优劣可参考 Loading Scripts Without Blocking 一文。当中 Script DOM Element 是最流行的做法，唯在 IE 下并不保证可按次序执行。顺带一提，jQuery 的 getScript() 貌似也是用此方法。</p><p>新推出的 browsers 已经开始支援 parallel script loading，包括 IE8, FF3.5, Safari 4, Chrome 2 等。但 parallel scripting loading 除了可以解决 blocking 问题外，应用得宜还可以有 progressive enhancement 的作用，developer 可决定各档案下载的时机。</p><p>例如 Google docs 会在工具列未完全下载完之前，会先显示一个 view only 的版本。直至工具列完全加载后，才转成编辑状态。</p><p>外部JS会阻塞所有内容的呈现<br />嵌入式的JS会阻止其后内容的显示<br />当CSS后面跟着嵌入的JS的时候，该CSS就会出现阻塞后面资源下载的情况</p></div><p> </p>', 1, '2012-10-09 17:01:25', 86, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (34, 6, 'PHP算法学习', '', '<pre class="brush:php;">&lt;?php 
     class Sort{ 
         /** 
          * 简单的交换排序 
          * 冒泡排序初级版 
          * 这个不算是标准的冒泡排序算法，因为不满足“两两比较相邻记录”的冒泡排序思想，她更应该是最最简单的交换排序而已 
          * 思路：让每一个关键字和她后面的“每一个”关键字比较，如果大则交换 
          * 缺点：效率很低 
          */
         public function bubbleSort1(&amp;$arr){ 
             $len=count($arr); 
             for ($i=0;$i&lt;$len;$i++) { 
                 for ($j=$i+1;$j&lt;$len;$j++){ 
                     if ($arr[$i]&gt;$arr[$j]) {///这里让每一个关键字和她后面的“每一个”关键字都进行比较 
                         $this-&gt;swap(&amp;$arr[$i],&amp;$arr[$j]);     
                     } 
                 } 
             } 
         } 
         /** 
          * 正宗的冒泡排序算法 
          * 思路：通过“两两比较相邻记录”，从而将最小的值排到最顶端 
          */
         public function bubbleSort2(&amp;$arr){ 
             $len=count($arr); 
             for ($i=0;$i&lt;$len;$i++){ 
                 for($j=$len-1;$j&gt;$i;$j--) {//$j是从后往前循环 
                     if($arr[$j]&lt;$arr[$j-1]) {//注意：这里是“两两比较相邻记录”，以bubbleSort1不同 
                         $this-&gt;swap(&amp;$arr[$j],&amp;$arr[$j-1]);//这里使用“引用”操作符 
                     } 
                 } 
             } 
         } 
         /** 
          * 冒泡排序算法的改进 
          * 如果要排序的数组是：[2,1,3,4,5,6,7,8,9]的话，其实只需要将1和2进行比较交换即可，后面的循环中的第二个for循环无需执行，但是如果使用bubbleSort2的话 
          * 照样会将$i=2到9及后面的for循环都执行一遍，这些比较明显是多余的 
          * 改进思路：在i变量的for循环中，增加了对flag是否为true的判断 
          */
         public function bubbleSort3(&amp;$arr){ 
             $len=count($arr); 
             $flag=true; 
             for ($i=0;$i&lt;$len &amp;&amp; $flag;$i++){//如果之前的一次循环判断中，都没有进行数据交换，则表明目前的数据已经是有序的了，从而跳出循环 
                 $flag=false; 
                 for($j=$len-1;$j&gt;$i;$j--) {//$j是从后往前循环 
                     if($arr[$j]&lt;$arr[$j-1]) {//注意：这里是“两两比较相邻记录”，以bubbleSort1不同 
                         $this-&gt;swap(&amp;$arr[$j],&amp;$arr[$j-1]);//这里使用“引用”操作符 
                         $flag=true; //如果有数据交换，则将$flag设为true 
                     } 
                 } 
             } 
         } 
         /** 
          * 将$a和$b两个值进行位置交换 
          */
         public function swap($a,$b) { 
             $temp=$a; 
             $a=$b; 
             $b=$temp; 
         } 
     } 
     $arr=array(4,6,1,2,9,8,7,3,5); 
     $test=new Sort(); 
 //    $test-&gt;bubbleSort1($arr);//简单的交换排序 
 //    $test-&gt;bubbleSort2($arr);//冒泡排序 
     $test-&gt;bubbleSort3($arr);//改进后的冒泡排序 
 ?&gt;</pre><p>分析一下它的时间复杂度。</p><p>　　当最好的情况，也就是要排序的表本身就是有序的，那么我们比较次数，根据最后改进的代码，可以推断出就是n‐1次的比较，没有数据交换，时间复杂度为O(n)。</p><p>　　当最坏的情况，即待排序表是逆序的情况，此时需要比较<img src="http://pic002.cnblogs.com/images/2012/350329/2012070815323628.png" />次，并作等数量级的记录移动。因此，总的时间复杂度为O(n^2)。</p><p> </p>', 1, '2012-10-18 00:45:58', 86, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (35, 6, 'php 获取客户端的ip、地理信息、浏览器信息、本地真实ip ', '', '<pre class="brush:php;">&lt;?php
 // 作用取得客户端的ip、地理信息、浏览器、本地真实IP
 class get_gust_info { 
   
  ////获得访客浏览器类型
  function GetBrowser(){
   if(!empty($_SERVER[''HTTP_USER_AGENT''])){
    $br = $_SERVER[''HTTP_USER_AGENT''];
    if (preg_match(''/MSIE/i'',$br)) {    
               $br = ''MSIE'';
             }elseif (preg_match(''/Firefox/i'',$br)) {
     $br = ''Firefox'';
    }elseif (preg_match(''/Chrome/i'',$br)) {
     $br = ''Chrome'';
       }elseif (preg_match(''/Safari/i'',$br)) {
     $br = ''Safari'';
    }elseif (preg_match(''/Opera/i'',$br)) {
        $br = ''Opera'';
    }else {
        $br = ''Other'';
    }
    return $br;
   }else{return "获取浏览器信息失败！";} 
  }
   
  ////获得访客浏览器语言
  function GetLang(){
   if(!empty($_SERVER[''HTTP_ACCEPT_LANGUAGE''])){
    $lang = $_SERVER[''HTTP_ACCEPT_LANGUAGE''];
    $lang = substr($lang,0,5);
    if(preg_match("/zh-cn/i",$lang)){
     $lang = "简体中文";
    }elseif(preg_match("/zh/i",$lang)){
     $lang = "繁体中文";
    }else{
        $lang = "English";
    }
    return $lang;
     
   }else{return "获取浏览器语言失败！";}
  }
   
   ////获取访客操作系统
  function GetOs(){
   if(!empty($_SERVER[''HTTP_USER_AGENT''])){
    $OS = $_SERVER[''HTTP_USER_AGENT''];
      if (preg_match(''/win/i'',$OS)) {
     $OS = ''Windows'';
    }elseif (preg_match(''/mac/i'',$OS)) {
     $OS = ''MAC'';
    }elseif (preg_match(''/linux/i'',$OS)) {
     $OS = ''Linux'';
    }elseif (preg_match(''/unix/i'',$OS)) {
     $OS = ''Unix'';
    }elseif (preg_match(''/bsd/i'',$OS)) {
     $OS = ''BSD'';
    }else {
     $OS = ''Other'';
    }
          return $OS;  
   }else{return "获取访客操作系统信息失败！";}   
  }
   
  ////获得访客真实ip
  function Getip(){
   if(!empty($_SERVER["HTTP_CLIENT_IP"])){   
      $ip = $_SERVER["HTTP_CLIENT_IP"];
   }
   if(!empty($_SERVER[''HTTP_X_FORWARDED_FOR''])){ //获取代理ip
    $ips = explode('','',$_SERVER[''HTTP_X_FORWARDED_FOR'']);
   }
   if($ip){
      $ips = array_unshift($ips,$ip); 
   }
    
   $count = count($ips);
   for($i=0;$i&lt;$count;$i++){   
     if(!preg_match("/^(10|172\.16|192\.168)\./i",$ips[$i])){//排除局域网ip
      $ip = $ips[$i];
      break;    
      }  
   }  
   $tip = empty($_SERVER[''REMOTE_ADDR'']) ? $ip : $_SERVER[''REMOTE_ADDR'']; 
   if($tip=="127.0.0.1"){ //获得本地真实IP
      return $this-&gt;get_onlineip();   
   }else{
      return $tip; 
   }
  }
   
  ////获得本地真实IP
  function get_onlineip() {
      $mip = file_get_contents("http://city.ip138.com/city0.asp");
       if($mip){
           preg_match("/\[.*\]/",$mip,$sip);
           $p = array("/\[/","/\]/");
           return preg_replace($p,"",$sip[0]);
       }else{return "获取本地IP失败！";}
   }
   
  ////根据ip获得访客所在地地名
  function Getaddress($ip=''''){
   if(empty($ip)){
       $ip = $this-&gt;Getip();    
   }
   $ipadd = file_get_contents("http://int.dpool.sina.com.cn/iplookup/iplookup.php?ip=".$ip);//根据新浪api接口获取
   if($ipadd){
    $charset = iconv("gbk","utf-8",$ipadd);   
    preg_match_all("/[\x{4e00}-\x{9fa5}]+/u",$charset,$ipadds);
     
    return $ipadds;   //返回一个二维数组
   }else{return "addree is none";}  
  } 
 }
 $gifo = new get_gust_info();
 echo "你的ip:".$gifo-&gt;Getip();
 echo "&lt;br/&gt;所在地：";
 $ipadds = $gifo-&gt;Getaddress();
 foreach($ipadds[0] as $value){
     echo "\r\n    ".iconv("utf-8","gbk",$value);    
 }
  
 echo "&lt;br/&gt;浏览器类型：".$gifo-&gt;GetBrowser();
 echo "&lt;br/&gt;浏览器语言：".$gifo-&gt;GetLang();
 echo "&lt;br/&gt;操作系统：".$gifo-&gt;GetOs();
   
  
 ?&gt;</pre><p><br /></p>', 1, '2012-10-21 02:23:16', 78, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (36, 6, 'PHP中的两种常用排序方法', '', '<p>一、冒泡排序法(bubbleMethod)</p><pre class="brush:php;">function bubbleMethod($array){ 
  $n=count($array); 
  if($n&lt;=1){ 
    return $array; 
  } 
  for($i=0;$i&lt;$n;$i++){ 
    for($j=$n-2;$j&gt;=$i;$j--){ 
      if($array[$j]&gt;$array[$j+1]){ 
    $temp=$array[$j]; 
    $array[$j]=$array[$j+1]; 
    $array[$j+1]=$temp; 
      } 
    } 
  } 
  return $array; 
}</pre><p>二、快速排序法(fastMethod)</p><p><br /></p><pre class="brush:php;">function fastMethod($array){ 
  $n=count($array); 
  if($n&lt;=1){ 
    return$array; 
  } 
  $key=$array[0]; 
  $left=array(); 
  $right=array(); 
  for($i=1;$i&lt;$n;$i++){ 
    if($array[$i]&lt;=$key){ 
      $left[]=$array[$i]; 
    }else{ 
      $right[]=$array[$i]; 
    } 
  } 
  $left=fastMethod($left); 
  $right=fastMethod($right); 
  return array_merge($left,array($key),$right); 
}</pre><p>结果：</p><pre class="brush:php;">$array=array(10,3,20,40,5,9,301,13,85,50,99,60,80,70,90,100); 
$arr1=bubbleMethod($array); 
$arr2=fastMethod($array);</pre><p><br /></p>', 1, '2012-10-26 22:46:44', 84, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (37, 6, '基于jQuery的控制左右滚动及自动滚动效果', '', '<p><strong>思路:<br />点击滚动模式</strong>下,是为点击(向前/向后/数字)添加<em>click</em>事件,通过控制展示区块<em>left</em>值实现切换.<br />1.向前(左):当在第一个版面时,滚动到最后一个页面,否则,累加<em>left</em>值,向前滚动;<br />2.向后(右):当在最后一个版面时,滚动到第一个页面,否则,累减<em>left</em>值,向后滚动;<br />3.数字点击:利用<em>index(…)</em>获取当前点击在数字列表中的索引值, 然后索引值为倍数为外围宽度负值.即可达到切换.</p><p> </p><pre class="brush:js;">//***向前滚动 
    $pre.click(function(){ 
        if (!$showbox.is('':animated'')) {  //判断展示区是否动画 
            if ($cur == 1) {   //在第一个版面时,再向前滚动到最后一个版面 
                $showbox.animate({ 
                    left: ''-='' + $w * ($pages - 1) 
                }, 500); //改变left值,切换显示版面,500(ms)为滚动时间,下同 
                $cur = $pages; //初始化版面为最后一个版面 
            } 
            else { 
                $showbox.animate({ 
                    left: ''+='' + $w 
                }, 500); //改变left值,切换显示版面 
                $cur--; //版面累减 
            } 
            $num.eq($cur - 1).addClass(''numcur'').siblings().removeClass(''numcur''); //为对应的版面数字加上高亮样式,并移除同级元素的高亮样式 
        } 
    }); 
    //***向后滚动 
    $next.click(function(){ 
        if (!$showbox.is('':animated'')) { //判断展示区是否动画 
            if ($cur == $pages) {  //在最后一个版面时,再向后滚动到第一个版面 
                $showbox.animate({ 
                    left: 0 
                }, 500); //改变left值,切换显示版面,500(ms)为滚动时间,下同 
                $cur = 1; //初始化版面为第一个版面 
            } 
            else { 
                $showbox.animate({ 
                    left: ''-='' + $w 
                }, 500);//改变left值,切换显示版面 
                $cur++; //版面数累加 
            } 
            $num.eq($cur - 1).addClass(''numcur'').siblings().removeClass(''numcur''); //为对应的版面数字加上高亮样式,并移除同级元素的高亮样式 
        } 
    }); 
    //***数字点击事件 
    $num.click(function(){ 
        if (!$showbox.is('':animated'')) { //判断展示区是否动画 
            var $index = $num.index(this); //索引出当前点击在列表中的位置值 
            $showbox.animate({ 
                left: ''-'' + ($w * $index) 
            }, 500); //改变left值,切换显示版面,500(ms)为滚动时间 
            $cur = $index + 1; //初始化版面值,这一句可避免当滚动到第三版时,点击向后按钮,出面空白版.index()取值是从0开始的,故加1 
            $(this).addClass(''numcur'').siblings().removeClass(''numcur''); //为当前点击加上高亮样式,并移除同级元素的高亮样式 
        } 
    });</pre><p><strong>自动滚动模式</strong>是基于点击滚动模式加强的,无非是添加了自动滚动事件,以及当鼠标划上时清除动画事件.<br />这里要说明一点.DEMO演示中,为向前/向后/数字/区域都添加了当鼠标划过时都添加了清除动画事件.但是,如果你的页面中,这几个需要添加清除动画事件的都在同一个区域内,完全可以用<em>trigger(…)</em>模拟实现自动滚动.<br />还有一点,自动滚动中是用<em>setTimeout(“fun”,interval)</em>实现,而不用<em>setInterval(“fun”,interval)</em>实现. 原因在于,<em>setInterval</em>是在间隔时间后重复执行传入的函数,而<em>setTimeout</em>只在间隔时间后执行一次函数传入函数,这样即可避免第二次鼠标划入停止动画区域时不能清除动画.<br /></p><pre class="brush:js;">...... 
//***调用自动滚动 
autoSlide(); 
...... 
 //***停止滚动 
 clearFun($showbox); 
 clearFun($pre); 
 clearFun($next); 
 clearFun($num); 
 //***事件划入时停止自动滚动 
 function clearFun(elem){ 
     elem.hover(function(){ 
         clearAuto(); 
     }, function(){ 
         autoSlide(); 
     }); 
 } 
 //***自动滚动 
 function autoSlide(){ 
     $next.trigger(''click''); 
     $autoFun = setTimeout(autoSlide, 3000);//此处不可使用setInterval,setInterval是重复执行传入函数,这会引起第二次划入时停止失效 
 } 
 //***清除自动滚动 
 function clearAuto(){ 
     clearTimeout($autoFun); 
 }</pre><p> </p>', 1, '2012-11-26 20:31:09', 58, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (38, 6, 'css省略号实现...', '', '<p>firefox7.0开始兼容text-overflow:ellipsis;这样的话，以后的省略号就可以做到浏览器兼容了，代码片段为：</p><p><br /></p><p><br/></p><pre class="brush:css;">width:200px;/*设置宽度*/
white-space:nowrap;/*设置不折行*/
text-overflow:ellipsis;/*这就是省略号喽*/
-o-text-overflow:ellipsis;/*兼容opera*/
overflow: hidden;/*设置超过的隐藏*/</pre><p><br/></p>', 1, '2012-11-27 19:45:26', 67, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (39, 6, 'CSS布局——左定宽度右自适应宽度并且等高布局', '', '<p><strong>CSS布局——左定宽度右自适应宽度并且等高布局</strong></p><p><br /></p><pre class="brush:css;">方法一：
&lt;div id="container"&gt;
    &lt;div id="wrapper"&gt;
        &lt;div id="sidebar"&gt;Left Sidebar&lt;/div&gt;
        &lt;div id="app_honoer"&gt;Main Content&lt;/div&gt;
    &lt;/div&gt;
&lt;/div&gt;
 
&lt;style type="text/css"&gt;
    * {
        margin: 0;
        padding: 0;
    }
    html {
        height: auto;
    }
 
    body {
        margin: 0;
        padding: 0;
 
    }
 
    #container {
        background: #ffe3a6;
    }
 
    #wrapper {
        display: inline-block;
        border-left: 200px solid #d4c376;/*==此值等于左边栏的宽度值==*/
        position: relative;
        vertical-align: bottom;
    }
 
    #sidebar {
        float: left;
        width: 200px;
        margin-left: -200px;/*==此值等于左边栏的宽度值==*/
        position: relative;         
    }
 
    #main {
        float: left;
    }   
 
    #maing,
    #sidebar{
        min-height: 200px;
        height: auto !important;
        height: 200px;
    }
&lt;/style&gt;
 
 
方法二：
 
&lt;div id="container"&gt;
    &lt;div id="left" class="aside"&gt;Left Sidebar&lt;/div&gt;
    &lt;div id="content" class="section"&gt;Main Content&lt;/div&gt;
&lt;/div&gt;
 
&lt;style type="text/css"&gt;
    *{margin: 0;padding: 0;}
    #container {
        overflow: hidden;
    }
 
    #left {
        background: #ccc;
        float: left;
        width: 200px;
        margin-bottom: -99999px;
        padding-bottom: 99999px;
 
    }
 
    #content {
        background: #eee;
        margin-left: 200px;/*==此值等于左边栏的宽度值==*/
        margin-bottom: -99999px;
        padding-bottom: 99999px;
    }
    #left,
    #content {
        min-height: 200px;
        height: auto !important;
        height: 200px;
    }
&lt;/style&gt;
方法三：
&lt;div id="container"&gt;
    &lt;div id="content"&gt;Main Content&lt;/div&gt;
    &lt;div id="sidebar"&gt;Left Sidebar&lt;/div&gt;
&lt;/div&gt;
&lt;style&gt;
    *{margin: 0;padding: 0;}
    #container{
        background-color:#0ff;
        overflow:hidden;
        padding-left:220px; /* 宽度大小等与边栏宽度大小*/
    }
    * html #container{
        height:1%; /* So IE plays nice */
    }
    #content{
        background-color:#0ff;
        width:100%;
        border-left:220px solid #f00;/* 宽度大小等与边栏宽度大小*/
        margin-left:-220px;/* 宽度大小等与边栏宽度大小*/
        float:right;
    }
    #sidebar{
        background-color:#f00;
        width:220px;
        float:right;
        margin-left:-220px;/* 宽度大小等与边栏宽度大小*/
    }
    #content,
    #sidebar {
        min-height: 200px;
        height: auto !important;
        height: 200px;
    }
 
&lt;/style&gt;
 
 
方法四：
&lt;div id="container2"&gt;
    &lt;div id="container1"&gt;
        &lt;div id="col1"&gt;Left Sidebar&lt;/div&gt;
        &lt;div id="col2"&gt;Main Content&lt;/div&gt;
    &lt;/div&gt;
&lt;/div&gt;
 
&lt;style&gt;
    *{padding: 0;margin:0;}
    #container2 {
        float: left;
        width: 100%;
        background: orange;
        position: relative;
        overflow: hidden;
    }
    #container1 {
        float: left;
        width: 100%;
        background: green;
        position: relative;
        left: 220px;/* 宽度大小等与边栏宽度大小*/
    }
 
    #col2 {
        position: relative;
        margin-right: 220px;/* 宽度大小等与边栏宽度大小*/
    }
 
    #col1 {
        width: 220px;
        float: left;
        position: relative;
        margin-left: -220px;/* 宽度大小等与边栏宽度大小*/
    }
 
    #col1,#col2 {
        min-height: 200px;
        height: auto !important;
        height: 200px;
    }
 
 
&lt;/style&gt;
 
方法五：
 
&lt;div id="container1"&gt;
    &lt;div id="container"&gt;
        &lt;div id="left"&gt;Left Sidebar&lt;/div&gt;
        &lt;div id="content"&gt;
            &lt;div id="contentInner"&gt;Main Content&lt;/div&gt;
        &lt;/div&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;style&gt;
 
    *{padding: 0;margin: 0;}
    #container1 {
        float: left;
        width: 100%;
        overflow: hidden;
        position: relative;
        background-color: #dbddbb;
    }
    #container {
        background-color: orange;
        width: 100%;
        float: left;
        position: relative;
        left: 220px;/* 宽度大小等与边栏宽度大小*/
    }
    #left {         
        float: left;
        margin-right: -100%;
        margin-left: -220px;/* 宽度大小等与边栏宽度大小*/
        width: 220px;
    }
    #content {
        float: left;
        width: 100%;
        margin-left: -220px;/* 宽度大小等与边栏宽度大小*/
    }
    #contentInner {         
        margin-left: 220px;/* 宽度大小等与边栏宽度大小*/
        overflow: hidden;
    }
 
    #left,
    #content {
        min-height: 200px;
        height: auto !important;
        height: 200px;
    }
&lt;/style&gt;</pre><p><br /><br /></p>', 1, '2012-11-28 22:10:57', 69, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (40, 6, 'jQuery制作遮罩层的代码片段', '', '<p>&lt;script&gt;<br /> &nbsp; &nbsp;$(&#39;&lt;div id=&quot;overlay&quot;&gt;&lt;/div&gt;&#39;)<br /> &nbsp; &nbsp;.css({<br /> &nbsp; &nbsp; &nbsp; &nbsp;position &nbsp; &nbsp;: &#39;fixed&#39;,<br /> &nbsp; &nbsp; &nbsp; &nbsp;top &nbsp; &nbsp; &nbsp; &nbsp; : 0,<br /> &nbsp; &nbsp; &nbsp; &nbsp;left &nbsp; &nbsp; &nbsp; &nbsp;: 0,<br /> &nbsp; &nbsp; &nbsp; &nbsp;right &nbsp; &nbsp; &nbsp; : 0,<br /> &nbsp; &nbsp; &nbsp; &nbsp;bottom &nbsp; &nbsp; &nbsp;: 0,<br /> &nbsp; &nbsp; &nbsp; &nbsp;opacity &nbsp; &nbsp; : 0.6,<br /> &nbsp; &nbsp; &nbsp; &nbsp;background &nbsp;: &#39;black&#39;,<br /> &nbsp; &nbsp; &nbsp; &nbsp;display &nbsp; &nbsp; : &#39;none&#39;<br /> &nbsp; &nbsp;})<br /> &nbsp; &nbsp;.appendTo(&#39;body&#39;)<br /> &nbsp; &nbsp;.fadeIn(&#39;normal&#39;)<br /> &nbsp; &nbsp;.click(function () {<br /> &nbsp; &nbsp; &nbsp; &nbsp;$(this).fadeOut(&#39;normal&#39;, function () {<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$(this).remove();<br /> &nbsp; &nbsp; &nbsp; &nbsp;})<br /> &nbsp; &nbsp;});<br />&lt;/script&gt;<br /></p>', 1, '2012-11-29 19:29:24', 70, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (41, 6, 'php进行图片裁剪及生成缩略图程序源代码', '', '<p>我们经常会遇到对图像进行裁剪动作，下面这段代码就是裁剪的源码</p><p>处理方法是:<br />1.当原图的宽或高任一比规定的尺寸小,只进行等比缩略处理,<br />2.当原图的宽与高都比规定尺寸大,先进行等比缩略处理,然后算出居中位置进行裁剪</p><pre class="brush:php;">&lt;?php 
  
/* 
 *        $o_photo 原图路径 
 *        $d_photo 处理后图片路径 
 *        $width   定义宽 
 *        $height  定义高 
 *        调用方法  cutphoto("test.jpg","temp.jpg",256,146); 
 */
  
function cutphoto($o_photo, $d_photo, $width, $height) { 
  
    $temp_img = imagecreatefromjpeg($o_photo); 
    $o_width = imagesx($temp_img);                                //取得原图宽 
    $o_height = imagesy($temp_img);                                //取得原图高 
//判断处理方法 
    if ($width &gt; $o_width || $height &gt; $o_height) {        //原图宽或高比规定的尺寸小,进行压缩 
        $newwidth = $o_width; 
        $newheight = $o_height; 
  
        if ($o_width &gt; $width) { 
            $newwidth = $width; 
            $newheight = $o_height * $width / $o_width; 
        } 
  
        if ($newheight &gt; $height) { 
            $newwidth = $newwidth * $height / $newheight; 
            $newheight = $height; 
        } 
  
        //缩略图片 
        $new_img = imagecreatetruecolor($newwidth, $newheight); 
        imagecopyresampled($new_img, $temp_img, 0, 0, 0, 0, $newwidth, $newheight, $o_width, $o_height); 
        imagejpeg($new_img, $d_photo); 
        imagedestroy($new_img); 
    } else {                                                                                //原图宽与高都比规定尺寸大,进行压缩后裁剪 
        if ($o_height * $width / $o_width &gt; $height) {        //先确定width与规定相同,如果height比规定大,则ok 
            $newwidth = $width; 
            $newheight = $o_height * $width / $o_width; 
            $x = 0; 
            $y = ($newheight - $height) / 2; 
        } else {                                                                        //否则确定height与规定相同,width自适应 
            $newwidth = $o_width * $height / $o_height; 
            $newheight = $height; 
            $x = ($newwidth - $width) / 2; 
            $y = 0; 
        } 
  
        //缩略图片 
        $new_img = imagecreatetruecolor($newwidth, $newheight); 
        imagecopyresampled($new_img, $temp_img, 0, 0, 0, 0, $newwidth, $newheight, $o_width, $o_height); 
        imagejpeg($new_img, $d_photo); 
        imagedestroy($new_img); 
  
        $temp_img = imagecreatefromjpeg($d_photo); 
        $o_width = imagesx($temp_img);                                //取得缩略图宽 
        $o_height = imagesy($temp_img);                                //取得缩略图高 
        //裁剪图片 
        $new_imgx = imagecreatetruecolor($width, $height); 
        imagecopyresampled($new_imgx, $temp_img, 0, 0, $x, $y, $width, $height, $width, $height); 
        imagejpeg($new_imgx, $d_photo); 
        imagedestroy($new_imgx); 
    } 
} 
  
cutphoto("http://tp3.sinaimg.cn/1700691210/180/1280120708/1", "temp1.jpg", 100, 100); 
cutphoto("http://hhcf.tk/img/avatar_big/1318072877.jpg", "temp2.jpg", 100, 100); 
?&gt;</pre><p> </p>', 1, '2013-04-13 04:25:03', 54, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (42, 6, 'PHP字符串截取，支持gb2312和UTF-8编码。', '', '<p>看了网上很多这样的函数但用起来效果很不理想，所以自己写了一个，初步测试gb2312和UTF8都支持的</p><p> </p><pre class="brush:php;">&lt;?php 
/** 
  +---------------------------------------------------------- 
 * 功能：字符串截取指定长度 
 * leo.li hengqin2008@qq.com 
  +---------------------------------------------------------- 
 * @param string    $string      待截取的字符串 
 * @param int       $len         截取的长度 
 * @param int       $start       从第几个字符开始截取 
 * @param boolean   $suffix      是否在截取后的字符串后跟上省略号 
  +---------------------------------------------------------- 
 * @return string               返回截取后的字符串 
  +---------------------------------------------------------- 
 */
function cutStr($string, $len=100, $start=0, $suffix=1) { 
    $strlen = mb_strlen($string); 
    while ($strlen) { 
        $array[] = mb_substr($string, 0, 1, "utf8"); 
        $string = mb_substr($string, 1, $strlen, "utf8"); 
        $strlen = mb_strlen($string); 
    } 
    $end = $len + $start; 
    $str = ''''; 
    for ($i = $start; $i &lt; $end; $i++) { 
        $str.=$array[$i]; 
    } 
    return $suffix == 1 ? $str . "..." : $str; 
} 
?&gt;</pre><p> </p>', 1, '2013-04-13 04:28:16', 58, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (43, 6, '计算两个日期相差 年 月 日', '', '<pre class="brush:php;">&lt;?php 
  
/** 
  +---------------------------------------------------------- 
 * 功能：计算两个日期相差 年 月 日 
 * leo.li hengqin2008@qq.com 
  +---------------------------------------------------------- 
 * @param  date     $date1 起始日期 
 * @param  date     $date2 截止日期日期 
  +---------------------------------------------------------- 
 * @return array              
  +---------------------------------------------------------- 
 */
function DiffDate($date1, $date2) { 
    if (strtotime($date1) &gt; strtotime($date2)) { 
        $ymd = $date2; 
        $date2 = $date1; 
        $date1 = $ymd; 
    } 
    list($y1, $m1, $d1) = explode(''-'', $date1); 
    list($y2, $m2, $d2) = explode(''-'', $date2); 
    $y = $m = $d = $_m = 0; 
    $math = ($y2 - $y1) * 12 + $m2 - $m1; 
    $y = round($math / 12); 
    $m = intval($math % 12); 
    $d = (mktime(0, 0, 0, $m2, $d2, $y2) - mktime(0, 0, 0, $m2, $d1, $y2)) / 86400; 
    if ($d &lt; 0) { 
        $m -= 1; 
        $d += date(''j'', mktime(0, 0, 0, $m2, 0, $y2)); 
    } 
    $m &lt; 0 &amp;&amp; $y -= 1; 
    return array($y, $m, $d); 
} 
?&gt;</pre><p> </p>', 1, '2013-04-13 04:29:08', 57, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (44, 6, '用php实现Google /Baidu Ping服务快速收录', '', '<p>玩过WORDPRESS的朋友应该都知道ping服务吧，通俗点讲它可以在更新文章的时候向Google、baidu及其他支持ping的搜索引擎发送指令然后招呼它们过来，不用傻等他们过来收录了，化被动为主动了。直接贴代码了，很简单的。</p><p> </p><pre class="brush:php;">/** 
  +------------------------------------------------------------------------------ 
 * 通知搜索引擎过来抓去最新发布的内容。秒收不是梦 
 * 目前仅支持Google和Baidu 
  +------------------------------------------------------------------------------ 
 */
class ping { 
    
    public $method, $callback; 
    
    public function method($site_name, $site_url, $update_url, $update_rss) { 
        $this-&gt;method = " 
  &lt;?xml version="1.0" encoding="UTF-8"?&gt; 
  &lt;methodCall&gt; 
    &lt;methodName&gt;weblogUpdates.extendedPing&lt;/methodName&gt; 
    &lt;params&gt; 
   &lt;param&gt;&lt;value&gt;{$site_name}&lt;/value&gt;&lt;/param&gt; 
   &lt;param&gt;&lt;value&gt;{$site_url}&lt;/value&gt;&lt;/param&gt; 
   &lt;param&gt;&lt;value&gt;{$update_url}&lt;/value&gt;&lt;/param&gt; 
   &lt;param&gt;&lt;value&gt;{$update_rss}&lt;/value&gt;&lt;/param&gt; 
    &lt;/params&gt; 
  &lt;/methodCall&gt;"; 
        return $this-&gt;method; 
    } 
    
    public function _post($url, $postvar) { 
        $ch = curl_init(); 
        $headers = array( 
            "POST " . $url . " HTTP/1.0", 
            "Content-type: text/xml;charset="utf-8"", 
            "Accept: text/xml", 
            "Content-length: " . strlen($postvar) 
        ); 
        curl_setopt($ch, CURLOPT_URL, $url); 
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
        curl_setopt($ch, CURLOPT_POST, 1); 
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers); 
        curl_setopt($ch, CURLOPT_POSTFIELDS, $postvar); 
        $res = curl_exec($ch); 
        curl_close($ch); 
        return $res; 
    } 
    
    public function google() { 
        $this-&gt;callback = $this-&gt;_post(''http://blogsearch.google.com/ping/RPC2'', $this-&gt;method); 
        return strpos($this-&gt;callback, "&lt;boolean&gt;0&lt;/boolean&gt;") ? true : false; 
    } 
    
    public function baidu() { 
        $this-&gt;callback = $this-&gt;_post(''http://ping.baidu.com/ping/RPC2'', $this-&gt;method); 
        return strpos($this-&gt;callback, "&lt;int&gt;0&lt;/int&gt;") ? true : false; 
    } 
    
}</pre><p> </p>', 1, '2013-04-13 04:31:24', 62, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (45, 6, '专业的身份证验证，不用正则验证身份证', '', '<p>专业的身份证验证，不用正则验证身份证</p><p>具体代码：</p><pre class="brush:php;">&lt;?php 
$IDCard = new IDCard(); 
var_dump($IDCard::isCard($_GET[''card''])); 
  
/** 
 * 身份证处理类 
 */
class IDCard { 
  
    //检证身份证是否正确 
    public static function isCard($card) { 
        $card = self::to18Card($card); 
        if (strlen($card) != 18) { 
            return false; 
        } 
  
        $cardBase = substr($card, 0, 17); 
  
        return (self::getVerifyNum($cardBase) == strtoupper(substr($card, 17, 1))); 
    } 
  
  
    //格式化15位身份证号码为18位 
    public static function to18Card($card) { 
        $card = trim($card); 
  
        if (strlen($card) == 18) { 
            return $card; 
        } 
  
        if (strlen($card) != 15) { 
            return false; 
        } 
  
        // 如果身份证顺序码是996 997 998 999，这些是为百岁以上老人的特殊编码 
        if (array_search(substr($card, 12, 3), array(''996'', ''997'', ''998'', ''999'')) !== false) { 
            $card = substr($card, 0, 6) . ''18'' . substr($card, 6, 9); 
        } else { 
            $card = substr($card, 0, 6) . ''19'' . substr($card, 6, 9); 
        } 
        $card = $card . self::getVerifyNum($card); 
        return $card; 
    } 
  
    // 计算身份证校验码，根据国家标准gb 11643-1999 
    private static function getVerifyNum($cardBase) { 
        if (strlen($cardBase) != 17) { 
            return false; 
        } 
        // 加权因子 
        $factor = array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2); 
  
        // 校验码对应值 
        $verify_number_list = array(''1'', ''0'', ''X'', ''9'', ''8'', ''7'', ''6'', ''5'', ''4'', ''3'', ''2''); 
  
        $checksum = 0; 
        for ($i = 0; $i &lt; strlen($cardBase); $i++) { 
            $checksum += substr($cardBase, $i, 1) * $factor[$i]; 
        } 
  
        $mod = $checksum % 11; 
        $verify_number = $verify_number_list[$mod]; 
  
        return $verify_number; 
    } 
} 
  
?&gt;</pre><p> </p>', 1, '2013-04-29 00:29:14', 52, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (46, 6, 'JSONP跨域实例', '什么是JSONP？1、一个众所周知的问题，Ajax直接请求普通文件存在跨域无权限访问的问题，甭管你是静态页面、动态网页、web服务、WCF，只要是跨域请求，一律不准； 2、不过我们又发现，Web页面上调用js文件时则不受是否跨域的影响（不仅如此，我们...', '<h3>
	什么是JSONP？
</h3>
<p>
	<p class="p0" style="text-align:left;background:#FFFFFF;">
		<span style="color:#000000;font-size:10.5000pt;font-family:''Verdana'';">1<span>、一个众所周知的问题，</span><span>Ajax</span><span>直接请求普通文件存在跨域无权限访问的问题，甭管你是静态页面、动态网页、</span><span>web</span><span>服务、</span><span>WCF</span><span>，只要是跨域请求，一律不准；</span></span><span style="color:#000000;font-size:9.0000pt;font-family:''Verdana'';"></span>
	</p>
	<p class="p0" style="text-align:left;background:#FFFFFF;">
		<span style="color:#000000;font-size:10.5000pt;font-family:''Verdana'';">2<span>、不过我们又发现，</span><span>Web</span><span>页面上调用</span><span>js</span><span>文件时则不受是否跨域的影响（不仅如此，我们还发现凡是拥有</span><span>"src"</span><span>这个属性的标签都拥有跨域的能力，比如</span><span>&lt;script&gt;</span><span>、</span><span>&lt;img&gt;</span><span>、</span><span>&lt;iframe&gt;</span><span>）；</span></span><span style="color:#000000;font-size:9.0000pt;font-family:''Verdana'';"></span>
	</p>
	<p class="p0" style="text-align:left;background:#FFFFFF;">
		<span style="color:#000000;font-size:10.5000pt;font-family:''Verdana'';">3<span>、于是可以判断，当前阶段如果想通过纯</span><span>web</span><span>端（</span><span>ActiveX</span><span>控件、服务端代理、属于未来的</span><span>HTML5</span><span>之</span><span>Websocket</span><span>等方式不算）跨域访问数据就只有一种可能，那就是在远程服务器上设法把数据装进</span><span>js</span><span>格式的文件里，供客户端调用和进一步处理；</span></span><span style="color:#000000;font-size:9.0000pt;font-family:''Verdana'';"></span>
	</p>
	<p class="p0" style="text-align:left;background:#FFFFFF;">
		<span style="color:#000000;font-size:10.5000pt;font-family:''Verdana'';">4<span>、恰巧我们已经知道有一种叫做</span><span>JSON</span><span>的纯字符数据格式可以简洁的描述复杂数据，更妙的是</span><span>JSON</span><span>还被</span><span>js</span><span>原生支持，所以在客户端几乎可以随心所欲的处理这种格式的数据；</span></span><span style="color:#000000;font-size:9.0000pt;font-family:''Verdana'';"></span>
	</p>
	<p class="p0" style="text-align:left;background:#FFFFFF;">
		<span style="color:#000000;font-size:10.5000pt;font-family:''Verdana'';">5<span>、这样子解决方案就呼之欲出了，</span><span>web</span><span>客户端通过与调用脚本一模一样的方式，来调用跨域服务器上动态生成的</span><span>js</span><span>格式文件（一般以</span><span>JSON</span><span>为后缀），显而易见，服务器之所以要动态生成</span><span>JSON</span><span>文件，目的就在于把客户端需要的数据装入进去。</span></span><span style="color:#000000;font-size:9.0000pt;font-family:''Verdana'';"></span>
	</p>
	<p class="p0" style="text-align:left;background:#FFFFFF;">
		<span style="color:#000000;font-size:10.5000pt;font-family:''Verdana'';">6<span>、客户端在对</span><span>JSON</span><span>文件调用成功之后，也就获得了自己所需的数据，剩下的就是按照自己需求进行处理和展现了，这种获取远程数据的方式看起来非常像</span><span>AJAX</span><span>，但其实并不一样。</span></span><span style="color:#000000;font-size:9.0000pt;font-family:''Verdana'';"></span>
	</p>
	<p class="p0" style="text-align:left;background:#FFFFFF;">
		<span style="color:#000000;font-size:10.5000pt;font-family:''Verdana'';">7<span>、为了便于客户端使用数据，逐渐形成了一种非正式传输协议，人们把它称作</span><span>JSONP</span><span>，该协议的一个要点就是允许用户传递一个</span><span>callback</span><span>参数给服务端，然后服务端返回数据时会将这个</span><span>callback</span><span>参数作为函数名来包裹住</span><span>JSON</span><span>数据，这样客户端就可以随意定制自己的函数来自动处理返回数据了。</span></span><span style="color:#000000;font-size:9.0000pt;font-family:''Verdana'';"></span>
	</p>
</p>
<p>
<pre class="brush:html">&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt;
&lt;html xmlns="http://www.w3.org/1999/xhtml" &gt;
    &lt;head&gt;
        &lt;title&gt;Untitled Page&lt;/title&gt;
        &lt;script type="text/javascript" src="jquery-1.9.1.min.js"&gt;&lt;/script&gt;
    &lt;/head&gt;
    &lt;body&gt;
        &lt;input type="text" name="name" value="" /&gt;
        &lt;input type="button" name="btn" value="提交" /&gt;
        &lt;script type="text/javascript"&gt;
            jQuery(document).ready(function(){
                $("input[name=''btn'']").on(''click'',function(){
                    $.ajax({
                        type: "get",
                        async: false,
                        url: "http://h.me/data.php",
                        data:{name:$("input[name=''name'']").val()},
                        dataType: "jsonp",
                        jsonp: "callback",//传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
                        jsonpCallback:"returnRes",//自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
                        success: function(json){
                            alert(json);
                        },
                        error: function(){
                            alert(''fail'');
                        }
                    });
                });
            });
        &lt;/script&gt;
    &lt;/body&gt;
&lt;/html&gt;</pre>
<img data-original="/Public/Upload/image/20130517/20130517101208_39113.jpg" src="/Public/Upload/image/20130517/20130517101208_39113.jpg" alt="" height="258" width="293" /><img data-original="/Public/Upload/image/20130517/20130517101209_89002.jpg" src="/Public/Upload/image/20130517/20130517101209_89002.jpg" alt="" height="258" width="293" />
</p>
<p>
	<br />
</p>
<p>
	后台代码：
</p>
<p>
<pre class="brush:php">&lt;?php

$name = $_GET[''name''];
$data = returnRes($name);
exit($_GET[''callback''] . ''('' . json_encode($data) . '')'');

//这里定义一个函数处理内容让callback调用
function returnRes($name) {
    if ($name === ''honoer.com'') {
        $_SESSION[''name''] = $name;
        $_SESSION[''time''] = time();
        $str = ''你已在'' . $_SERVER["HTTP_HOST"] . ''下登录成功！'';
    } else {
        $str = ''用户名错误！'';
    }
    return $str;
}
?&gt;</pre>
<img data-original="/Public/Upload/image/20130517/20130517101210_31971.jpg" src="/Public/Upload/image/20130517/20130517101210_31971.jpg" alt="" />
</p>', 1, '2013-05-16 16:59:39', 86, 0, '/Public/Upload/thumb_51959281bca73.jpg', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (47, 6, '彻底理解PHP的SESSION机制 ', 'session.save_handler = files1.session_start()是session机制的开始，它有一定概率开启垃圾回收,因为session是存放在文件中，PHP自身的垃圾回收是无效的，SESSION的回收是要删文件的，这个概...', '<p>session.save_handler = files<br /><br /><strong>1.</strong>session_start()是session机制的开始，它有一定概率开启垃圾回收,因为session是存放在文件中，<br />PHP自身的垃圾回收是无效的，SESSION的回收是要删文件的，这个概率是根据php.ini的配置决定的，<br />但是有的系统是 session.gc_probability = 0，这也就是说概率是0，而是通过cron脚本来实现垃圾回收。<br /><br />session.gc_probability = 1<br />session.gc_divisor = 1000<br />session.gc_maxlifetime = 1440//过期时间 默认24分钟<br />//概率是 session.gc_probability/session.gc_divisor 结果 1/1000, <br />//不建议设置过小，因为session的垃圾回收，是需要检查每个文件是否过期的。<br />session.save_path = //好像不同的系统默认不一样，有一种设置是 &quot;N;/path&quot;<br />//这是随机分级存储，这个样的话，垃圾回收将不起作用，需要自己写脚本<br /><br /><strong>2. </strong>session会判断当前是否有$_COOKIE[session_name()];<br />session_name()返回保存session_id的COOKIE键值，<br />这个值可以从php.ini找到<br /><br />session.name = PHPSESSID //默认值PHPSESSID<br /><br /><br /><strong>3. </strong>如果不存在会生成一个session_id, 然后把生成的session_id作为COOKIE的值传递到客户端.<br />相当于执行了下面COOKIE 操作，注意的是，这一步执行了setcookie()操作，COOKIE是在header头中发送的，<br />这之前是不能有输出的，PHP有另外一个函数 session_regenerate_id() 如果使用这个函数，这之前也是不能有输出的。<br /><br />setcookie(<br />session_name(),<br /> session_id(),<br /> session.cookie_lifetime, //默认0<br />//session.cookie_path,//默认&#39;/&#39;当前程序跟目录下都有效<br />//session.cookie_domain,//默认为空<br />)<br /><br /><strong>4.</strong> 如果存在那么session_id = $_COOKIE[session_name];<br />然后去session.save_path指定的文件夹里去找名字为&#39;SESS_&#39;.session_id()的文件.<br />读取文件的内容反序列化，然后放到$_SESSION中<br /><br />*2. 为$_SESSION赋值<br />比如新添加一个值$_SESSION[&#39;test&#39;] = &#39;blah&#39;;<br />那么这个$_SESSION只会维护在内存中，当脚本执行结束的时候，<br />用把$_SESSION的值写入到session_id指定的文件夹中，然后关闭相关资源. 这个阶段有可能执行更改session_id的操作，<br />比如销毁一个旧的的session_id，生成一个全新的session_id.一半用在自定义 session操作，角色的转换上，<br />比如Drupal.Drupal的匿名用户有一个SESSION的，当它登录后需要换用新的session_id<br /><br />if (isset($_COOKIE[session_name()])) {<br />setcookie(session_name(), &#39;&#39;, time() - 42000, &#39;/&#39;); //旧session cookie过期<br />}<br />session_regenerate_id(); //这一步会生成新的session_id<br />//session_id()返回的是新的值<br /><br />3.写入SESSION操作<br />在脚本结束的时候会执行SESSION写入操作，把$_SESSION中值写入到session_id命名的文件中，可能已经存在，<br />可能需要创建新的文件。<br /><br />*4. 销毁SESSION<br />SESSION发出去的COOKIE一般属于即时COOKIE，保存在内存中，当浏览器关闭后，才会过期，假如需要人为强制过期，<br />比如 退出登录，而不是关闭浏览器，那么就需要在代码里销毁SESSION，方法有很多，<br />o 1.setcookie(session_name(), session_id(), time() -8000000, ..); //退出登录前执行<br />o 2. usset($_SESSION); //这会删除所有的$_SESSION数据，刷新后，有COOKIE传过来，但是没有数据。<br />o 3.session_destroy(); //这个作用更彻底，删除$_SESSION 删除session文件，和session_id<br /><br />当不关闭浏览器的情况下，再次刷新，2和3都会有COOKIE传过来，但是找不到数据<br /><br />2.session.save_handler = user<br />用户自定义session处理机制，更加直观<br />* session_set_save_handler(&#39;open&#39;, &#39;close&#39;, &#39;read&#39;, &#39;write&#39;, &#39;destroy&#39;, &#39;gc&#39;);<br />1.session_start(),<br /> 执行open($save_path, $session_name)打开session操作句柄<br />$save_path 在session.save_handler = files的情况下它就是session.save_path，<br />但是如果用户自定的话，这个两个参数都用不上，直接返回TRUE<br /><br />执行read($id)从中读取数据.//这个参数是自动传递的就是session_id(),可以通过这个值进行操作。<br />*2.脚本执行结束<br />执行write($id, $sess_data) //两个参数，很简单<br />*3.假如用户需要session_destroy()<br />先执行destroy.在执行第2步<br /><br />一个实际例子：<br /><br />//SESSION初始化的时候调用<br /></p><p><br /></p><pre class="brush:php;toolbar:false;">function open($save_path, $session_name) {
    global$sess_save_path;
    $sess_save_path = $save_path;
    return(true);
}
//关闭的时候调用
function close() {
    return(true);
}
function read($id) {
    global$sess_save_path;
    $sess_file = "$sess_save_path/sess_$id";
    return (string) @file_get_contents($sess_file);
}
//脚本执行结束之前，执行写入操作
function write($id, $sess_data) {
    echo"sdfsf";
    global$sess_save_path;
    $sess_file = "$sess_save_path/sess_$id";
    if ($fp = @fopen($sess_file, "w")) {
        $return = fwrite($fp, $sess_data);
        fclose($fp);
        return$return;
    } else {
        return(false);
    }
}
function destroy($id) {
    global$sess_save_path;
    $sess_file = "$sess_save_path/sess_$id";
    return(@unlink($sess_file));
}
function gc($maxlifetime) {
    global$sess_save_path;
    foreach (glob("$sess_save_path/sess_*") as $filename) {
        if (filemtime($filename) + $maxlifetime &lt; time()) {
            @unlink($filename);
        }
    }
    return true;
}</pre>', 1, '2013-06-04 18:09:54', 61, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (48, 6, '让PHP更快的提供文件下载', '一般来说, 我们可以通过直接让URL指向一个位于Document Root下面的文件, 来引导用户下载文件.但是, 这样做, 就没办法做一些统计, 权限检查, 等等的工作. 于是, 很多时候, 我们采用让PHP来做转发, 为用户提供文件下载
', '<p>
	一般来说, 我们可以通过直接让URL指向一个位于Document Root下面的文件, 来引导用户下载文件.但是, 这样做, 就没办法做一些统计, 权限检查, 等等的工作. 于是, 很多时候, 我们采用让PHP来做转发, 为用户提供文件下载
</p>
<pre class="brush:php;toolbar:true;">$file = "/tmp/dummy.tar.gz";
header("Content-type: application/octet-stream");
header(''Content-Disposition: attachment; filename="'' . basename($file) . ''"'');
header("Content-Length: ". filesize($file));
readfile($file);
</pre>
<p>
	但是这个有一个问题, 就是如果文件是中文名的话, 有的用户可能下载后的文件名是乱码.
</p>
<p>
	于是, 我们做一下修改(参考: :
</p>
<pre class="brush:php;toolbar:true;">$file = "/tmp/中文名.tar.gz";
                
    $filename = basename($file);
                
    header("Content-type: application/octet-stream");
                
    //处理中文文件名
    $ua = $_SERVER["HTTP_USER_AGENT"];
    $encoded_filename = rawurlencode($filename);
    //$encoded_filename = str_replace("+", "%20", $encoded_filename);
    if (preg_match("/MSIE/", $ua)) {
     header(''Content-Disposition: attachment; filename="'' . $encoded_filename . ''"'');
    } else if (preg_match("/Firefox/", $ua)) {
     header("Content-Disposition: attachment; filename*=\"utf8''''" . $filename . ''"'');
    } else {
     header(''Content-Disposition: attachment; filename="'' . $filename . ''"'');
    }
                
    header(''Content-Disposition: attachment; filename="'' . $filename . ''"'');
    header("Content-Length: ". filesize($file));
    readfile($file);
</pre>
<p>
	现在看起来好多了, 不过还有一个问题, 那就是readfile, 虽然PHP的readfile尝试实现的尽量高效, 不占用PHP本身的内存, 但是实际上它还是需要采用MMAP(如果支持), 或者是一个固定的buffer去循环读取文件, 直接输出.
</p>
<p>
	输出的时候, 如果是Apache + PHP mod, 那么还需要发送到Apache的输出缓冲区. 最后才发送给用户. 而对于Nginx + fpm如果他们分开部署的话, 那还会带来额外的网络IO.
</p>
<p>
	那么, 能不能不经过PHP这层, 直接让Webserver直接把文件发送给用户呢?
</p>
<p>
	我们可以使用Apache的module mod_xsendfile, 让Apache直接发送这个文件给用户:
</p>
<pre class="brush:php;toolbar:true;">$file = "/tmp/中文名.tar.gz";
               
   $filename = basename($file);
               
   header("Content-type: application/octet-stream");
               
   //处理中文文件名
   $ua = $_SERVER["HTTP_USER_AGENT"];
   $encoded_filename = urlencode($filename);
   $encoded_filename = str_replace("+", "%20", $encoded_filename);
   if (preg_match("/MSIE/", $ua)) {
    header(''Content-Disposition: attachment; filename="'' . $encoded_filename . ''"'');
   } else if (preg_match("/Firefox/", $ua)) {
    header("Content-Disposition: attachment; filename*=\"utf8''''" . $filename . ''"'');
   } else {
    header(''Content-Disposition: attachment; filename="'' . $filename . ''"'');
   }
               
   header(''Content-Disposition: attachment; filename="'' . basename($file) . ''"'');
               
   //让Xsendfile发送文件
   header("X-Sendfile: $file");
</pre>
<p>
	X-Sendfile头将被Apache处理, 并且把响应的文件直接发送给Client.
</p>', 1, '2013-05-21 23:30:18', 79, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (49, 6, 'javascript图片预加载技术 ', '&nbsp; &nbsp; lightbox类效果为了让图片居中显示而使用预加载，需要等待完全加载完毕才能显示，体验不佳（如filick相册的全屏效果）。javascript无法获取img文件头数据，真的是这样吗？本文...', '<p> &nbsp; &nbsp; lightbox类效果为了让图片居中显示而使用预加载，需要等待完全加载完毕才能显示，体验不佳（如filick相册的全屏效果）。javascript无法获取img文件头数据，真的是这样吗？本文通过一个巧妙的方法让javascript获取它。</p><p><br /></p><p>这是大部分人使用预加载获取图片大小的例子：</p><pre class="brush:js;toolbar:false;">var imgLoad = function (url, callback) {
    var img = new Image();
    img.src = url;
    if (img.complete) {
        callback(img.width, img.height);
    } else {
        img.onload = function () {
            callback(img.width, img.height);
            img.onload = null;
        };
    };
};</pre><p><br /></p><p>可以看到上面必须等待图片加载完毕才能获取尺寸，其速度不敢恭维，我们需要改进。</p><p><br /></p><p>web应用程序区别于桌面应用程序，响应速度才是最好的用户体验。如果想要速度与优雅兼得，那就必须提前获得图片尺寸，如何在图片没有加载完毕就能获取图片尺寸？</p><p><br /></p><p>十多年的上网经验告诉我：浏览器在加载图片的时候你会看到图片会先占用一块地然后才慢慢加载完毕，并且不需要预设width与height属性，因为浏览器能够获取图片的头部数据。基于此，只需要使用javascript定时侦测图片的尺寸状态便可得知图片尺寸就绪的状态。</p><p><br /></p><p>当然实际中会有一些兼容陷阱，如width与height检测各个浏览器的不一致，还有webkit new Image()建立的图片会受以处在加载进程中同url图片影响，经过反复测试后的最佳处理方式：</p><pre class="brush:js;toolbar:false;">// 更新：
// 05.27: 1、保证回调执行顺序：error &gt; ready &gt; load；2、回调函数this指向img本身
// 04-02: 1、增加图片完全加载后的回调 2、提高性能
/**
 * 图片头数据加载就绪事件 - 更快获取图片尺寸
 * @version 2011.05.27
 * @author  TangBin
 * @see     http://www.planeart.cn/?p=1121
 * @param   {String}    图片路径
 * @param   {Function}  尺寸就绪
 * @param   {Function}  加载完毕 (可选)
 * @param   {Function}  加载错误 (可选)
 * @example imgReady(''http://www.google.com.hk/intl/zh-CN/images/logo_cn.png'', function () {
        alert(''size ready: width='' + this.width + ''; height='' + this.height);
    });
 */
var imgReady = (function () {
    var list = [], intervalId = null,
    // 用来执行队列
    tick = function () {
        var i = 0;
        for (; i &lt; list.length; i++) {
            list[i].end ? list.splice(i--, 1) : list[i]();
        };
        !list.length &amp;&amp; stop();
    },
    // 停止所有定时器队列
    stop = function () {
        clearInterval(intervalId);
        intervalId = null;
    };
    return function (url, ready, load, error) {
        var onready, width, height, newWidth, newHeight,
            img = new Image();
                                                                        
        img.src = url;
        // 如果图片被缓存，则直接返回缓存数据
        if (img.complete) {
            ready.call(img);
            load &amp;&amp; load.call(img);
            return;
        };
                                                                        
        width = img.width;
        height = img.height;
                                                                        
        // 加载错误后的事件
        img.onerror = function () {
            error &amp;&amp; error.call(img);
            onready.end = true;
            img = img.onload = img.onerror = null;
        };
                                                                        
        // 图片尺寸就绪
        onready = function () {
            newWidth = img.width;
            newHeight = img.height;
            if (newWidth !== width || newHeight !== height ||
                // 如果图片已经在其他地方加载可使用面积检测
                newWidth * newHeight &gt; 1024
            ) {
                ready.call(img);
                onready.end = true;
            };
        };
        onready();
                                                                        
        // 完全加载完毕的事件
        img.onload = function () {
            // onload在定时器时间差范围内可能比onready快
            // 这里进行检查并保证onready优先执行
            !onready.end &amp;&amp; onready();
                                                                        
            load &amp;&amp; load.call(img);
                                                                            
            // IE gif动画会循环执行onload，置空onload即可
            img = img.onload = img.onerror = null;
        };
        // 加入队列中定期执行
        if (!onready.end) {
            list.push(onready);
            // 无论何时只允许出现一个定时器，减少浏览器性能损耗
            if (intervalId === null) intervalId = setInterval(tick, 40);
        };
    };
})();</pre><p><br /></p><p>调用例子：</p><pre class="brush:js;toolbar:false;">imgReady(''http://www.google.com.hk/intl/zh-CN/images/logo_cn.png'', function () {
    alert(''size ready: width='' + this.width + ''; height='' + this.height);
});</pre><p> &nbsp; &nbsp;</p><p> &nbsp; &nbsp;是不是很简单？这样的方式获取摄影级别照片尺寸的速度往往是onload方式的几十多倍，而对于web普通(800×600内)浏览级别的图片能达到秒杀效果。看了这个再回忆一下你见过的web相册，是否绝大部分都可以重构一下呢？好了，请观赏令人愉悦的 <br /></p><p>DEMO ：<a href="http://www.planeart.cn/demo/imgReady/" target="_blank">http://www.planeart.cn/demo/imgReady/</a></p><p><a href="http://www.planeart.cn/demo/imgReady/" target="_blank"><br /></a></p><p>（通过测试的浏览器：Chrome、Firefox、Safari、Opera、IE6、IE7、IE8）</p><p style="text-align:right">planeArt.cn原创文章，原文地址：<a href="http://www.planeart.cn/?p=1121">http://www.planeart.cn/?p=1121</a></p><p><br /></p>', 1, '2013-06-04 18:26:37', 63, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (50, 6, '总结下PHP中的魔术方法', '从PHP 5以后的版本，PHP中的类就可以使用魔术方法了。其规定以两个下划线（__）开头的方法都保留为魔术方法，所以建议大家函数名最好不用__开头，除非是为了重载已有的魔术方法1、__get、__s...', '<p>从<strong>PHP 5</strong>以后的版本，PHP中的类就可以使用魔术方法了。其规定以两个下划线（__）开头的方法都保留为魔术方法，所以建议大家函数名最好不用__开头，除非是为了重载已有的魔术方法</p><p><br /></p><p><strong>1、__get、__set</strong></p><p><strong><br /></strong></p><p>这两个方法是为在类和他们的父类中没有声明的属性而设计的。</p><p>◆__get( $property ) 当调用一个未定义的属性时，此方法会被触发，传递的参数是被访问的属性名。</p><p>◆__set( $property, $value ) 给一个未定义的属性赋值时，此方法会被触发，传递的参数是被设置的属性名和值。</p><p>这里的没有声明包括当使用对象调用时，访问控制为proteced,private的属性（即没有权限访问的属性）。</p><p><br /></p><p><strong>2、__isset、__unset</strong></p><p><br /></p><p>◆__isset( $property ) 当在一个未定义的属性上调用isset()函数时调用此方法。</p><p>◆__unset( $property ) 当在一个未定义的属性上调用unset()函数时调用此方法。</p><p>与__get方法和__set方法相同，这里的没有声明包括当使用对象调用时，访问控制为proteced,private的属性（即没有权限访问的属性）。</p><p><br /></p><p><strong>3、__call</strong></p><p><br /></p><p>__call( $method, $arg_array ) 当调用一个未定义的方法是调用此方法。</p><p>这里的未定义的方法包括没有权限访问的方法；如果方法不存在就去父类中找这个方法，如果父类中也不存在就去调用本类的__call()方法，如果本类中不存在__call()方法就去找父类中的__call()方法。</p><p><br /></p><p><strong>4、__autoload</strong></p><p><br /></p><p>__autoload 函数，它会在试图使用尚未被定义的类时自动调用。通过调用此函数，脚本引擎在 PHP 出错失败前有了最后一个机会加载所需的类。<br style="clear:both;width:0px;height:0px;" />如果要定义一个全局的自动加载类，则必须用spl_autoload_register()方法将处理类注册到PHP标准库：</p><p><br /></p><p>注意: 在 __autoload 函数中抛出的异常不能被 catch 语句块捕获并导致致命错误，所以应该在函数本身做捕获。</p><p><br /></p><pre class="brush:php;toolbar:false;">&lt;?php
class Loader {
    static function autoload_class($class_name) {
        //寻找正确的$class_name类，并引入，没有则抛出异常    
    }
}
/**
 *  设置对象的自动载入   
 *  spl_autoload_register — Register given function as __autoload() implementation   
 */
spl_autoload_register(array(''Loader'', ''autoload_class''));
$a = new Test(); //Test没用require就实例化，实现自动加载，很多框架就用这种方法自动加载类
?&gt;</pre><p><br /></p><p><strong>5、__construct、__destruct</strong></p><p><strong><br /></strong></p><p>◆__construct 构造方法，当一个对象创建时调用此方法，相对于PHP4使用此方法的好处是：可以使构造方法有一个独一无二的名称,无论它所在的类的名称是什么.这样你在改变类的名称时,就不需要改变构造方法的名称。</p><p>◆__destruct 析构方法，PHP将在对象被销毁前（即从内存中清除前）调用这个方法。默认情况下,PHP仅仅释放对象属性所占用的内存并销毁对象相关的资源，析构函数允许你在使用一个对象之后执行任意代码来清除内存。当PHP决定你的脚本不再与对象相关时,析构函数将被调用。</p><p>在一个函数的命名空间内，这会发生在函数return的时候。对于全局变量,这发生于脚本结束的时候。如果你想明确地销毁一个对象,你可以给指向该对象的变量分配任何其它值.通常将变量赋值勤为NULL或者调用unset。</p><p><br /></p><p><strong>6、__clone</strong></p><p><br /></p><p>PHP 5中的对象赋值是使用的引用赋值，如果想复制一个对象则需要使用clone方法，在调用此方法是对象会自动调用__clone魔术方法，如果在对象复制需要执行某些初始化操作，可以在__clone方法实现。</p><p><br /></p><p><strong>7、__toString</strong></p><p><br /></p><p>__toString方法在将一个对象转化成字符串时自动调用，比如使用echo打印对象时。</p><p>如果类没有实现此方法，则无法通过echo打印对象，否则会显示：Catchable fatal error: Object of class test could not be converted to string in，此方法必须返回一个字符串。</p><p>在PHP 5.2.0之前，__toString方法只有结合使用echo() 或 print()时 才能生效。PHP 5.2.0之后，则可以在任何字符串环境生效（例如通过printf()，使用%s修饰符），但 不能用于非字符串环境（如使用%d修饰符）。从PHP 5.2.0，如果将一个未定义__toString方法的对象 转换为字符串，会报出一个E_RECOVERABLE_ERROR错误。</p><p><br /></p><p><strong>8、__sleep、__wakeup</strong></p><p><br /></p><p>◆__sleep 串行化的时候用</p><p><br /></p><p>◆__wakeup 反串行化的时候调用</p><p><br /></p><p>serialize() 检查类中是否有魔术名称__sleep 的函数。如果这样，该函数将在任何序列化之前运行。它可以清除对象并应该返回一个包含有该对象中应被序列化的所有变量名的数组。</p><p>使用__sleep 的目的是关闭对象可能具有的任何数据库连接，提交等待中的数据或进行类似的清除任务。此外，如果有非常大的对象而并不需要完全储存下来时此函数也很有用。</p><p>相反地，unserialize() 检查具有魔术名称 __wakeup 的函数的存在。如果存在，此函数可以重建对象可能具有的任何资源。使用 __wakeup 的目的是重建在序列化中可能丢失的任何数据库连接以及处理其它重新初始化的任务。</p><p><br /></p><p><strong>9、__set_state</strong></p><p><br /></p><p>当调用var_export()时，这个静态 方法会被调用（自PHP 5.1.0起有效）。<br style="clear:both;width:0px;height:0px;" />本方法的唯一参数是一个数组，其中包含按array(’property’ =&gt; value, …)格式排列的类属性。</p><p><br /></p><p><strong>10、__invoke（PHP 5.3.0以上版本有效）</strong></p><p><br /></p><p>当尝试以调用函数的方式调用一个对象时，__invoke 方法会被自动调用。</p><p><br /></p><p><strong>11、__callStatic（PHP 5.3.0以上版本有效）</strong></p><p><br /></p><p>它的工作方式类似于__call() 魔术方法，__callStatic() 是为了处理静态方法调用。</p><p>PHP 确实加强了对 __callStatic() 方法的定义；它必须是公共的，并且必须被声明为静态的。同样，__call() 魔术方法必须被定义为公共的，所有其他魔术方法都必须如此。</p><p><br /><code class="php plain"></code><br /></p>', 1, '2013-06-09 13:37:22', 58, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (51, 6, 'php经典算法', 'php经典算法1.冒泡算法排序算法，由于在排序过程中总是小数往前放，大数往后放，相当于气泡往上升，所以称作冒泡排序$array = array(a, f, c, b, e, h, j, i, g);function maopao_fun($array...', '<p>php经典算法<br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" /><br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" /><wbr><strong>1.冒泡算法</strong></wbr></p><p>排序算法，由于在排序过程中总是小数往前放，大数往后放，相当于气泡往上升，所以称作冒泡排序<br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" /><br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" /></p><pre class="brush:php;toolbar:false;">$array = array(a, f, c, b, e, h, j, i, g);
function maopao_fun($array) {
    if ($len &lt;= 1) {
        return $arr;
    }
    $count = count($array);
    for ($i = 0; $i &lt; $count; $i++) {
        for ($j = $count - 1; $j &gt; $i; $j--) {
            if ($array[$j] &gt; $array[$j - 1]) {
                $tmp = $array[$j];
                $array[$j] = $array[$j - 1];
                $array[$j - 1] = $tmp;
            }
        }
    }
    return $array;
}</pre><p><br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" /><strong>2.快速排序</strong><br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" />快速排序（Quicksort）是对冒泡排序的一种改进。<br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" />由C. A. R. Hoare在1962年提出。它的基本思想是：通过一趟排序将要排序的数据分割成独立的两部分，<br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" />其中一部分的所有数据都比另外一部分的所有数据都要小，然后再按此方法对这两部分数据分别进行快速排序，<br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" />整个排序过程可以递归进行，以此达到整个数据变成有序序列。<br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" /><br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" /></p><pre class="brush:php;toolbar:false;">function quickSort($arr) {
    $len = count($arr);
    if ($len &lt;= 1) {
        return $arr;
    }
    $key = $arr[0];
    $left_arr = array();
    $right_arr = array();
    for ($i = 1; $i &lt; $len; $i++) {
        if ($arr[$i] &lt;= $key) {
            $left_arr[] = $arr[$i];
        } else {
            $right_arr[] = $arr[$i];
        }
    }
    $left_arr = quickSort($left_arr);
    $right_arr = quickSort($right_arr);
    return array_merge($left_arr, array($key), $right_arr);
}</pre><p><br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" /><br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" /><strong>3.选择排序</strong><br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" />每一趟从待排序的数据元素中选出最小（或最大）的一个元素，<br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" />顺序放在已排好序的数列的最后，直到全部待排序的数据元素排完。 选择排序是不稳定的排序方法<br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" /><br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" /></p><pre class="brush:php;toolbar:false;">function select_sort($arr) {
    $count = count($arr);
    for ($i = 0; $i &lt; $count; $i++) {
        for ($j = $i + 1; $j &lt; $count; $j++) {
            if ($arr[$i] &gt; $arr[$j]) {
                $tmp = $arr[$i];
                $arr[$i] = $arr[$j];
                $arr[$j] = $tmp;
            }
        }
    }
    return $arr;
}</pre><p><br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" /><strong>4.插入排序</strong><br style="color:#404040;font-family:simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:21px;orphans:2;text-align:left;text-indent:0px;text-transform:none;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;background-color:#877b10;" />从第一个元素开始，该元素可以认为已经被排序取出下一个元素，在已经排序的元素序列中从后向前扫描如果该元素（已排序）大于新元素，将该元素移到下一位置重复步骤3，直到找到已排序的元素小于或者等于新元素的位置将新元素插到下一位置中重复步骤2</p><p><br /></p><pre class="brush:php;toolbar:false;">function insert_sort($arr) {
    $count = count($arr);
    for ($i = 1; $i &lt; $count; $i++) {
        $tmp = $arr[$i];
        $j = $i - 1;
        while ($arr[$j] &gt; $tmp) {
            $arr[$j + 1] = $arr[$j];
            $arr[$j] = $tmp;
            $j--;
        }
    }
    return $arr;
}
$arr = array(49, 38, 65, 97, 76, 13, 27);
print_r(insert_sort($arr));</pre><p><br /></p>', 1, '2013-06-09 17:04:19', 75, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (52, 6, '对二维数组以某一键名进行分组相加', '如题，如果是从数据库里取数据的时候大可以SELECT SUM(t_value),t_id FROM t_table GROUP BY t_id但是如果是在php程序中处理类似的问题就稍微麻烦点了，这里给个函数就是处理类似的问题&lt;?...', '<p>如题，如果是从数据库里取数据的时候大可以</p><blockquote><p>SELECT SUM(t_value),t_id FROM t_table GROUP BY t_id</p></blockquote><p>但是如果是在php程序中处理类似的问题就稍微麻烦点了，这里给个函数就是处理类似的问题</p><p><br /></p><pre class="brush:php;toolbar:false;">&lt;?php
/* 函数功能：对二维数组以某一键名进行分组相加，返回新的二维数组
 * 参数说明：$arr-源数组；$new_arr-相加后得到的新数组；$target_key-要分组的键名
 */
function add_array($arr, &amp;$new_arr, $target_key) {
    $num = count($new_arr); //计算新数组的大小，新数组也是二维的，这里计算的是第一维
    for ($i = 0; $i &lt; $num; $i++) {
        //循环新数组
        //if块主要判断当前分组的键名是否已经存在于新数组中，避免重复
        //由于该函数是被循环调用的，而新数组可能有多于1个的元素，所以必须对新数组中的每一个元素都进行比较，
        //新数组的元素是一个一维数组，$i动态的比较新的二维数组中的分组键名
        if ($arr[$target_key] != $new_arr[$i][$target_key]) {//判断新数组中的分组键名是否跟当前源数组中的分组键名相等
            $cmp_num++; //如果不相等，比较次数自增1
        } else {//如果相等，说明当前分组键名已经存在
            $tar_exist = true; //设置存在标识为true
            $tar_key = $i; //返回当前分组键名在新数组中的数字索引
            break; //跳出循环
        }
    }
    //如果比较次数跟新数组大小一样，说明当前分组键名不在新数组中，设置存在标识为false
    if ($cmp_num == $num)
        $tar_exist = false;
    if ($tar_exist) {//如果分组键名已经存在，对该分组的数组元素进行相加
        foreach ($arr as $key =&gt; $value) {
            if ($key != $target_key) {//分组键名对应的元素值不相加
                $new_arr[$tar_key][$key]+=$value; //其余的元素值进行相加
            }
        }
    } else {
        //如果分组键名不存在
        //设置新的分组键名，并对该分组的数组元素进行相加
        //新数组的第一维使用$num参数来分辨当前分组的秩序
        //由于$num实际上就是新数组中，按键名分组的个数，并且是从0开始，所以新的分组在新数组中的索引直接用$num即可，
        //而不须要$num+1
        $new_arr[$num][$target_key] = $arr[$target_key];
        foreach ($arr as $key =&gt; $value) {
            if ($key != $target_key) {//分组键名对应的元素值不相加
                $new_arr[$num][$key]+=$value; //其余的元素值进行相加
            }
        }
    }
}
$arr = array(
    array(''group_id'' =&gt; 13, ''team_price'' =&gt; 88.00, ''satopay_price'' =&gt; 85.00, ''team_id'' =&gt; 348, ''origin'' =&gt; 440, ''gain'' =&gt; 14.45, ''quantity'' =&gt; 5),
    array(''group_id'' =&gt; 13, ''team_price'' =&gt; 12.00, ''satopay_price'' =&gt; 11.00, ''team_id'' =&gt; 344, ''origin'' =&gt; 36, ''gain'' =&gt; 2.76, ''quantity'' =&gt; 3),
    array(''group_id'' =&gt; 14, ''team_price'' =&gt; 4.99, ''satopay_price'' =&gt; 4.60, ''team_id'' =&gt; 335, ''origin'' =&gt; 4.99, ''gain'' =&gt; 0.31915, ''quantity'' =&gt; 1),
    array(''group_id'' =&gt; 14, ''team_price'' =&gt; 12.00, ''satopay_price'' =&gt; 11.00, ''team_id'' =&gt; 344, ''origin'' =&gt; 24, ''gain'' =&gt; 1.84, ''quantity'' =&gt; 2),
    array(''group_id'' =&gt; 15, ''team_price'' =&gt; 13.00, ''satopay_price'' =&gt; 11.00, ''team_id'' =&gt; 344, ''origin'' =&gt; 24, ''gain'' =&gt; 1.84, ''quantity'' =&gt; 2),
);
$new_arr = array();
foreach ($arr as $key =&gt; $value) {
    add_array($value, &amp;$new_arr, ''group_id''); //这里我们按group_id进行分组相加
}
var_dump($new_arr);</pre><p><br /></p>', 1, '2013-06-13 12:25:38', 68, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (53, 6, '关于PHP中ob_flush实时输出信息的问题', '如果开启output_buffering的话，将会缓冲php程序输出的内容，到达预设的值后才会输出，包括使用 flush() 也会将输出的内容缓冲。解决办法有多种，使用ob_*系列函数控制，或者修改php配置文件...', '<p>
	如果开启output_buffering的话，将会缓冲php程序输出的内容，到达预设的值后才会输出，包括使用 flush() 也会将输出的内容缓冲。解决办法有多种，使用ob_*系列函数控制，或者修改php配置文件。通常flush() 和 ob_flush() 一起使用，其目的就是为了解决这个问题。<br />
但是一定要注意先 ob_flush() 然后 flush()，大家有兴趣的可以试试换个顺序执行。到这里为止理论是没问题了。
</p>
<p>
	关于浏览器的限制，一直没有对所有浏览器进行测试，因为同一个浏览器不同的版本限制也可能不一样，就先用我现有的浏览器测试，ie6,firefox 8.0.1<br />
ie6 下需要接收的数据到达256字节，浏览器才开始响应:
</p>
<p>
	<br />
</p>
<pre class="brush:php;toolbar:false;">//如果1024 还是不行 试下下面的代码，看下缓冲区是否设置了更大的
//echo ini_get(''output_buffering'');
error_reporting(0);
echo str_repeat(" ", 1024); //有的是256 经测试ie下是256 FF下1204 用1024两个浏览器都可以
for ($i = 0; $i &lt; 10; $i++) {
    ob_end_flush(); //关闭缓存
    echo $i . ''&lt;br&gt;'';
    ob_flush();
    flush();
    sleep(1);
}</pre>
<p>
	<br />
</p>
<p>
	还有一种方法：在个就是用ob_implicit_flush(true);//数强制每当有输出的时候，即刻把输出发送到浏览器
</p>
<p>
	<br />
</p>
<p>
<pre class="brush:php">&lt;?php
header("Content-Type:text/html; charset=UTF-8");
ob_end_flush();
ob_implicit_flush(true);


for ($i = 0; $i &lt; 10; $i++) {
    echo $i . ''&lt;br /&gt;'';
    usleep(200000); //0.2s
}

?&gt;</pre>
</p>
<p>
	<br />
</p>', 1, '2013-06-13 19:57:58', 67, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (54, 6, ' 65个职场面试经常被问到的问题', '1、请你自我介绍一下你自己？回答提示：一般人回答这个问题过于平常，只说姓名、年龄、爱好、工作经验，这些在简历上都有。其实，企业最希望知道的是求职者能否胜任工作，包括：最强的技能、...', '<p><strong>1、请你自我介绍一下你自己？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：一般人回答这个问题过于平常，只说姓名、年龄、爱好、工作经验，这些在简历上都有。其实，企业最希望知道的是求职者能否胜任工作，包括：最强的技能、最深入研究的知识领域、个性中最积极的部分、做过的最成功的事，主要的成就等，这些都可以和学习无关，也可以和学习有关，但要突出积极的个性和做事的能力，说得合情合理企业才会相信。企业很重视一个人的礼貌，求职者要尊重考官，在回答每个问题之后都说一句“谢谢”，企业喜欢有礼貌的求职者。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>2、你觉得你个性上最大的优点是什么？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：沉着冷静、条理清楚、立场坚定、顽强向上、乐于助人和关心他人、适应能力和幽默感、乐观和友爱。我在北大青鸟经过一到两年的培训及项目实战，加上实习工作，使我适合这份工作。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>3、说说你最大的缺点？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：这个问题企业问的概率很大，通常不希望听到直接回答的缺点是什么等，如果求职者说自己小心眼、爱忌妒人、非常懒、脾气大、工作效率低，企业肯定不会录用你。绝对不要自作聪明地回答“我最大的缺点是过于追求完美”，有的人以为这样回答会显得自己比较出色，但事实上，他已经岌岌可危了。企业喜欢求职者从自己的优点说起，中间加一些小缺点，最后再把问题转回到优点上，突出优点的部分，企业喜欢聪明的求职者。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>4、你对加班的看法？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：实际上好多公司问这个问题，并不证明一定要加班，只是想测试你是否愿意为公司奉献。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />回答样本：如果是工作需要我会义不容辞加班，我现在单身，没有任何家庭负担，可以全身心的投入工作。但同时，我也会提高工作效率，减少不必要的加班。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>5、你对薪资的要求？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：如果你对薪酬的要求太低，那显然贬低自己的能力；如果你对薪酬的要求太高，那又会显得你分量过重，公司受用不起。一些雇主通常都事先对求聘的职位定下开支预算，因而他们第一次提出的价钱往往是他们所能给予的最高价钱，他们问你只不过想证实一下这笔钱是否足以引起你对该工作的兴趣。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />回答样本一：我对工资没有硬性要求，我相信贵公司在处理我的问题上会友善合理。我注重的是找对工作机会，所以只要条件公平，我则不会计较太多。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />回答样本二：我受过系统的软件编程的训练，不需要进行大量的培训，而且我本人也对编程特别感兴趣。因此，我希望公司能根据我的情况和市场标准的水平，给我合理的薪水。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />回答样本三：如果你必须自己说出具体数目，请不要说一个宽泛的范围，那样你将只能得到最低限度的数字。最好给出一个具体的数字，这样表明你已经对当今的人才市场作了调查，知道像自己这样学历的雇员有什么样的价值。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>6、在五年的时间内，你的职业规划？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：这是每一个应聘者都不希望被问到的问题，但是几乎每个人都会被问到，比较多的答案是“管理者”。但是近几年来，许多公司都已经建立了专门的技术途径。这些工作地位往往被称作“顾问”、“参议技师”或“高级软件工程师”等等。当然，说出其他一些你感兴趣的职位也是可以的，比如产品销售部经理，生产部经理等一些与你的专业有相关背景的工作。要知道，考官总是喜欢有进取心的应聘者，此时如果说“不知道”，或许就会使你丧失一个好机会。最普通的回答应该是“我准备在技术领域有所作为”或“我希望能按照公司的管理思路发展”。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>7、你朋友对你的评价？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：&nbsp;想从侧面了解一下你的性格及与人相处的问题。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />回答样本一：我的朋友都说我是一个可以信赖的人。因为，我一旦答应别人的事情，就一定会做到。如果我做不到，我就不会轻易许诺。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />回答样本二：我觉的我是一个比较随和的人，与不同的人都可以友好相处。在我与人相处时，我总是能站在别人的角度考虑问题。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>8、你还有什么问题要问吗？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：企业的这个问题看上去可有可无，其实很关键，企业不喜欢说“没问题”的人，因为其很注重员工的个性和创新能力。企业不喜欢求职者问个人福利之类的问题，如果有人这样问：贵公司对新入公司的员工有没有什么培训项目，我可以参加吗？或者说贵公司的晋升机制是什么样的？企业将很欢迎，因为体现出你对学习的热情和对公司的忠诚度以及你的上进心。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>9、如果通过这次面试我们单位录用了你，但工作一段时间却发现你根本不适合这个职位，你怎么办？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：一段时间发现工作不适合我，有两种情况：1如果你确实热爱这个职业，那你就要不断学习，虚心向领导和同事学习业务知识和处事经验，了解这个职业的精神内涵和职业要求，力争减少差距；2你觉得这个职业可有可无，那还是趁早换个职业，去发现适合你的，你热爱的职业，那样你的发展前途也会大点，对单位和个人都有好处。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>10、在完成某项工作时，你认为领导要求的方式不是最好的，自己还有更好的方法，你应该怎么做？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：1.原则上我会尊重和服从领导的工作安排，同时私底下找机会以请教的口吻，婉转地表达自己的想法，看看领导是否能改变想法。2如果领导没有采纳我的建议，我也同样会按领导的要求认真地去完成这项工作。3.还有一种情况，假如领导要求的方式违背原则，我会坚决提出反对意见，如领导仍固执己见，我会毫不犹豫地再向上级领导反映。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>11、如果你的工作出现失误，给本公司造成经济损失，你认为该怎么办？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：1我本意是为公司努力工作，如果造成经济损失，我认为首要的问题是想方设法去弥补或挽回经济损失。如果我无能力负责，希望单位帮助解决。2分清责任，各负其责，如果是我的责任，我甘愿受罚；如果是一个我负责的团队中别人的失误，也不能幸灾乐祸，作为一个团队，需要互相提携共同完成工作，安慰同事并且帮助同事查找原因总结经验。3总结经验教训，一个人的一生不可能不犯错误，重要的是能从自己的或者是别人的错误中吸取经验教训，并在今后的工作中避免发生同类的错误。检讨自己的工作方法、分析问题的深度和力度是否不够，以致出现了本可以避免的错误。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>12、如果你做的一项工作受到上级领导的表扬，但你主管领导却说是他做的，你该怎样？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：我首先不会找那位上级领导说明这件事，我会主动找我的主管领导来沟通，因为沟通是解决人际关系的最好办法，但结果会有两种：1我的主管领导认识到自己的错误，我想我会视具体情况决定是否原谅他。2他更加变本加厉的来威胁我，那我会毫不犹豫地找我的上级领导反映此事，因为他这样做会造成负面影响，对今后的工作不利。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>13、谈谈你对跳槽的看法？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：1正常的“跳槽”能促进人才合理流动，应该支持。2频繁的跳槽对单位和个人双方都不利，应该反对。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>14、工作中你难以和同事、上司相处，你该怎么办？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：1我会服从领导的指挥，配合同事的工作。2我会从自身找原因，仔细分析是不是自己工作做得不好让领导不满意，同事看不惯。还要看看是不是为人处世方面做得不好，如果是这样的话&nbsp;我会努力改正。3如果我找不到原因，我会找机会跟他们沟通，请他们指出我的不足，有问题就及时改正。4作为优秀的员工，应该时刻以大局为重，即使在一段时间内，领导和同事对我不理解，我也会做好本职工作，虚心向他们学习，我相信，他们会看见我在努力，总有一天会对我微笑的。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>15、假设你在某单位工作，成绩比较突出，得到领导的肯定。但同时你发现同事们越来越孤立你，你怎么看这个问题？你准备怎么办？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：1成绩比较突出，得到领导的肯定是件好事情，以后更加努力。2检讨一下自己是不是对工作的热心度超过同事间交往的热心了，加强同事间的交往及共同的兴趣爱好。3工作中，切勿伤害别人的自尊心4不再领导前拨弄是非。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>16、你最近是否参加了培训课程？谈谈培训课程的内容。是公司资助还是自费参加？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：自费参加，就是北大青鸟的培训课程（可以多谈谈自己学的技术）。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>17、你对于我们公司了解多少？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：在去公司面试前上网查一下该公司主营业务。如回答：贵公司有意改变策略，加强与国外大厂的OEM合作，自有品牌的部分则透过海外经销商。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>18、请说出你选择这份工作的动机？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：这是想知道面试者对这份工作的热忱及理解度，并筛选因一时兴起而来应试的人，如果是无经验者，可以强调“就算职种不同，也希望有机会发挥之前的经验”。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>19、你最擅长的技术方向是什么？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：说和你要应聘的职位相关的课程，表现一下自己的热诚没有什么坏处。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>20、你能为我们公司带来什么呢？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：1假如你可以的话，试着告诉他们你可以减低他们的费用——“我已经接受过北大青鸟近两年专业的培训，立刻就可以上岗工作”。2&nbsp;企业很想知道未来的员工能为企业做什么，求职者应再次重复自己的优势，然后说：“就我的能力，我可以做一个优秀的员工在组织中发挥能力，给组织带来高效率和更多的收益”。企业喜欢求职者就申请的职位表明自己的能力，比如申请营销之类的职位，可以说：“我可以开发大量的新客户，同时，对老客户做更全面周到的服务，开发老客户的新需求和消费。”等等。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>21、最能概括你自己的三个词是什么？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：我经常用的三个词是：适应能力强，有责任心和做事有始终，结合具体例子向主考官解释，<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>22、你的业余爱好是什么？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：找一些富于团体合作精神的，这里有一个真实的故事：有人被否决掉，因为他的爱好是深海潜水。主考官说：因为这是一项单人活动，我不敢肯定他能否适应团体工作。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>23、作为被面试者给我打一下分？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：试着列出四个优点和一个非常非常非常小的缺点（可以抱怨一下设施，没有明确责任人的缺点是不会有人介意的）。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>24、你怎么理解你应聘的职位？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：把岗位职责和任务及工作态度阐述一下。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>25、喜欢这份工作的哪一点？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：相信其实大家心中一定都有答案了吧！每个人的价值观不同，自然评断的标准也会不同，但是，在回答面试官这个问题时可不能太直接就把自己心理的话说出来，尤其是薪资方面的问题，不过一些无伤大雅的回答是不错的考虑，如交通方便，工作性质及内容颇能符合自己的兴趣等等都是不错的答案，不过如果这时自己能仔细思考出这份工作的与众不同之处，相信在面试上会大大加分。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>26、为什么要离职?<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：1回答这个问题时一定要小心，就算在前一个工作受到再大的委屈，对公司有多少的怨言，都千万不要表现出来，尤其要避免对公司本身主管的批评，避免面试官的负面情绪及印象。建议此时最好的回答方式是将问题归咎在自己身上，例如觉得工作没有学习发展的空间，自己想在面试工作的相关产业中多加学习，或是前一份工作与自己的生涯规划不合等等，回答的答案最好是积极正面的。2我希望能获得一份更好的工作，如果机会来临，我会抓住。我觉得目前的工作，已经达到顶峰，即沒有升迁机会。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>27、说说你对行业、技术发展趋势的看法？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：企业对这个问题很感兴趣，只有有备而来的求职者能够过关。求职者可以直接在网上查找对你所申请的行业部门的信息，只有深入了解才能产生独特的见解。企业认为最聪明的求职者是对所面试的公司预先了解很多，包括公司各个部门，发展情况，在面试回答问题的时候可以提到所了解的情况，企业欢迎进入企业的人是“知己”，而不是“盲人”。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>28、对工作的期望与目标何在？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：这是面试者用来评断求职者是否对自己有一定程度的期望、对这份工作是否了解的问题。对于工作有确实学习目标的人通常学习较快，对于新工作自然较容易进入状况，这时建议你，最好针对工作的性质找出一个确实的答案，如业务员的工作可以这样回答：“我的目标是能成为一个超级业务员，将公司的产品广泛的推销出去，达到最好的业绩成效；为了达到这个目标，我一定会努力学习，而我相信以我认真负责的态度，一定可以达到这个目标。”其他类的工作也可以比照这个方式来回答，只要在目标方面稍微修改一下就可以了。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>29、说你的家庭？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：企业面试时询问家庭问题不是非要知道求职者家庭的情况，探究隐私，企业不喜欢探究个人隐私，而是要了解家庭背景对求职者的塑造和影响。企业希望听到的重点也在于家庭对求职者的积极影响。企业最喜欢听到的是：我很爱我的家庭，我的家庭一向很和睦，虽然我的父亲和母亲都是普通人，但是从小，我就看到我父亲起早贪黑，每天工作特别勤劳，他的行动无形中培养了我认真负责的态度和勤劳的精神。我母亲为人善良，对人热情，特别乐于助人，所以在单位人缘很好，她的一言一行也一直在教导我做人的道理。企业相信，和睦的家庭关系对一个人的成长有潜移默化的影响。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>30、就你申请的这个职位，你认为你还欠缺什么？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：企业喜欢问求职者弱点，但精明的求职者一般不直接回答。他们希望看到这样的求职者：继续重复自己的优势，然后说：“对于这个职位和我的能力来说，我相信自己是可以胜任的，只是缺乏经验，这个问题我想我可以进入公司以后以最短的时间来解决，我的学习能力很强，我相信可以很快融入公司的企业文化，进入工作状态。”企业喜欢能够巧妙地躲过难题的求职者。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>31、你欣赏哪种性格的人？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：诚实、不死板而且容易相处的人、有“实际行动”的人。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>32、你通常如何处理別人的批评？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：1沈默是金，不必说什么，否则情况更糟，不过我会接受建设性的批评。2我会等大家冷靜下来再讨论。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>33、怎样对待自己的失敗？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：我们大家生来都不是十全十美的，我相信我有第二个机会改正我的错误。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>34、什么会让你有成就感？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：为贵公司竭力效劳，尽我所能，完成一个项目。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>35、眼下你生活中最重要的是什么？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：对我来说，能在这个领域找到工作是最重要的，能在贵公司任职对我说最重要。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>36、你为什么愿意到我们公司来工作？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：对于这个问题，你要格外小心，如果你已经对该单位作了研究，你可以回答一些详细的原因，像“公司本身的高技术开发环境很吸引我。”、“我同公司出生在同样的时代，我希望能够进入一家与我共同成长的公司。”、“你们公司一直都稳定发展，在近几年来在市场上很有竞争力。”、“我认为贵公司能够给我提供一个与众不同的发展道路。”这都显示出你已经做了一些调查，也说明你对自己的未来有了较为具体的远景规划。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>37、你和别人发生过争执吗？你是怎样解决的？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：这是面试中最险恶的问题，其实是考官布下的一个陷阱，千万不要说任何人的过错，应知成功解决矛盾是一个协作团体中成员所必备的能力。假如你工作在一个服务行业，这个问题简直成了最重要的一个环节。你是否能获得这份工作，将取决于这个问题的回答。考官希望看到你是成熟且乐于奉献的。他们通过这个问题了解你的成熟度和处世能力。在没有外界干涉的情况下，通过妥协的方式来解决才是正确答案。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>38、问题：你做过的哪件事最令自己感到骄傲？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：这是考官给你的一个机会，让你展示自己把握命运的能力。这会体现你潜在的领导能力以及你被提升的可能性。假如你应聘于一个服务性质的单位，你很可能会被邀请去午餐。记住：你的前途取决于你的知识、你的社交能力和综合表现。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>39、新到一个部门，一天一个客户来找你解决问题，你努力想让他满意，可是始终达不到群众得满意，他投诉你们部门工作效率低，你这个时候怎么作？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：(1)首先，我会保持冷静。作为一名工作人员，在工作中遇到各种各样的问题是正常的，关键是如何认识它，积极应对，妥善处理。&nbsp;(2)其次，我会反思一下客户不满意的原因。一是看是否是自己在解决问题上的确有考虑的不周到的地方，二是看是否是客户不太了解相关的服务规定而提出超出规定的要求，三是看是否是客户了解相关的规定，但是提出的要求不合理。&nbsp;(3)再次，根据原因采取相对的对策。如果是自己确有不周到的地方，按照服务规定作出合理的安排，并向客户作出解释；如果是客户不太了解政策规定而造成的误解，我会向他作出进一步的解释，消除他的误会；如果是客户提出的要求不符合政策规定，我会明确地向他指出。&nbsp;(4)再次，我会把整个事情的处理情况向领导作出说明，希望得到他的理解和支持。(5)我不会因为客户投诉了我而丧失工作的热情和积极性，而会一如既往地牢记为客户服务的宗旨，争取早日做一名领导信任、公司放心、客户满意的职员。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>40、对这项工作，你有哪些可预见的困难？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：1不宜直接说出具体的困难，否则可能令对方怀疑应聘者不行。2可以尝试迂回战术，说出应聘者对困难所持有的态度——工作中出现一些困难是正常的，也是难免的，但是只要有坚忍不拔的毅力、良好的合作精神以及事前周密而充分的准备，任何困难都是可以克服。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />分析：一般问这个问题，面试者的希望就比较大了，因为已经在谈工作细节，但常规思路中的回答，又被面试官“骗”了。当面试官询问这个问题的时候，有两个目的。第一，看看应聘者是不是在行，说出的困难是不是在这个职位中一般都不可避免的问题。第二，是想看一下应聘者解决困难的手法对不对，及公司能否提供这样的资源。而不是想了解应聘者对困难的态度。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>41、如果我录用你，你将怎样开展工作？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：&nbsp;1如果应聘者对于应聘的职位缺乏足够的了解，最好不要直接说出自己开展工作的具体办法。2可以尝试采用迂回战术来回答，如“首先听取领导的指示和要求，然后就有关情况进行了解和熟悉，接下来制定一份近期的工作计划并报领导批准，最后根据计划开展工作。”。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />分析：这个问题的主要目的也是了解应聘者的工作能力和计划性、条理性，而且重点想要知道细节。如果向思路中所讲的迂回战术，面试官会认为回避问题，如果引导了几次仍然是回避的话，此人绝对不会录用了。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>42、你希望与什么样的上级共事？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：1通过应聘者对上级的“希望”可以判断出应聘者对自我要求的意识，这既上一个陷阱，又是一次机会。2最好回避对上级具体的希望，多谈对自己的要求。3如“做为刚步入社会的新人，我应该多要求自己尽快熟悉环境、适应环境，而不应该对环境提出什么要求，只要能发挥我的专长就可以了。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />分析：这个问题比较好的回答是，希望我的上级能够在工作中对我多指导，对我工作中的错误能够立即指出。总之，从上级指导这个方面谈，不会有大的纰漏。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>43、在完成某项工作时，你认为领导要求的方式不是最好的，自己还有更好的方法，你应该怎么做？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：1.原则上我会尊重和服从领导的工作安排；同时私底下找机会以请教的口吻，婉转地表达自己的想法，看看领导是否能改变想法。2如果领导没有采纳我的建议，我也同样会按领导的要求认真地去完成这项工作。3.还有一种情况，假如领导要求的方式违背原则，我会坚决提出反对意见，如领导仍固执己见，我会毫不犹豫地再向上级领导反映。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>44、与上级意见不一是，你将怎么办？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：1一般可以这样回答“我会给上级以必要的解释和提醒，在这种情况下，我会服从上级的意见。”2如果面试你的是总经理，而你所应聘的职位另有一位经理，且这位经理当时不在场，可以这样回答：“对于非原则性问题，我会服从上级的意见，对于涉及公司利益的重大问题，我希望能向更高层领导反映。”<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />分析：这个问题的标准答案是思路1，如果用2的回答，必死无疑。你没有摸清楚改公司的内部情况，先想打小报告，这样的人没有人敢要。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>45、你工作经验欠缺，如何能胜任这项工作？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>常规思路：1如果招聘单位对应届毕业生的应聘者提出这个问题，说明招聘公司并不真正在乎“经验”，关键看应聘者怎样回答。2对这个问题的回答最好要体现出应聘者的诚恳、机智、果敢及敬业。3如“作为应届毕业生，在工作经验方面的确会有所欠缺，因此在读书期间我一直利用各种机会在这个行业里做兼职。我也发现，实际工作远比书本知识丰富、复杂。但我有较强的责任心、适应能力和学习能力，而且比较勤奋，所以在兼职中均能圆满完成各项工作，从中获取的经验也令我受益非浅。请贵公司放心，学校所学及兼职的工作经验使我一定能胜任这个职位。”点评：这个问题思路中的答案尚可，突出自己的吃苦能力和适应性以及学习能力（不是学习成绩）为好。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>46、您在前一家公司的离职原因是什么？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：1最重要的是：应聘者要使找招聘单位相信，应聘者在过往的单位的“离职原因”在此家招聘单位里不存在。2避免把“离职原因”说得太详细、太具体。3不能掺杂主观的负面感受，如“太辛苦”、“人际关系复杂”、“管理太混乱”、“公司不重视人才”、“公司排斥我们某某的员工”等。4但也不能躲闪、回避，如“想换换环境”、“个人原因”等。5不能涉及自己负面的人格特征，如不诚实、懒惰、缺乏责任感、不随和等。6尽量使解释的理由为应聘者个人形象添彩。7相关例子：如“我离职是因为这家公司倒闭；我在公司工作了三年多，有较深的感情；从去年始，由于市场形势突变，公司的局面急转直下；到眼下这一步我觉得很遗憾，但还要面对显示，重新寻找能发挥我能力的舞台。”同一个面试问题并非只有一个答案，而同一个答案并不是在任何面试场合都有效，关键在应聘者掌握了规律后，对面试的具体情况进行把握，有意识地揣摩面试官提出问题的心理背景，然后投其所好。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />分析：除非是薪资太低，或者是最初的工作，否则不要用薪资作为理由。“求发展”也被考官听得太多，离职理由要根据每个人的真实离职理由来设计，但是在回答时一定要表现得真诚。实在想不出来的时候，家在外地可以说是因为家中有事，须请假几个月，公司又不可能准假，所以辞职，这个答案一般面试官还能接受。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>47、你工作经验欠缺，如何能胜任这项工作？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：1如果招聘单位对应届毕业生的应聘者提出这个问题，说明招聘公司并不真正在乎“经验”，关键看应聘者怎样回答。2对这个问题的回答最好要体现出应聘者的诚恳、机智、果敢及敬业。3如“作为应届毕业生，在工作经验方面的确会有所欠缺，因此在读书期间我一直利用各种机会在这个行业里做兼职。我也发现，实际工作远比书本知识丰富、复杂。但我有较强的责任心、适应能力和学习能力，而且比较勤奋，所以在兼职中均能圆满完成各项工作，从中获取的经验也令我受益非浅。请贵公司放心，学校所学及兼职的工作经验使我一定能胜任这个职位。”<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />分析：这个问题思路中的答案尚可。突出自己的吃苦能力和适应性以及学习能力（不是学习成绩）为好。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>48、为了做好你工作份外之事，你该怎样获得他人的支持和帮助？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：每个公司都在不断变化发展的过程中，你当然希望你的员工也是这样。你希望得到那些希望并欢迎变化的人，因为这些人明白，为了公司的发展，变化是公司日常生活中重要组成部分。这样的员工往往很容易适应公司的变化，并会对变化做出积极的响应。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>49、果你在这次面试中没有被录用，你怎么打算？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：现在的社会是一个竞争的社会，从这次面试中也可看出这一点，有竞争就必然有优劣，有成功必定就会有失败。往往成功的背后有许多的困难和挫折，如果这次失败了也仅仅是一次而已，只有经过经验经历的积累才能塑造出一个完全的成功者。我会从以下几个方面来正确看待这次失败：1要敢于面对，面对这次失败不气馁，接受已经失去了这次机会就不会回头这个现实，从心理意志和精神上体现出对这次失败的抵抗力。要有自信，相信自己经历了这次之后经过努力一定能行，能够超越自我。2善于反思，对于这次面试经验要认真总结，思考剖析，能够从自身的角度找差距。正确对待自己，实事求是地评价自己，辩证的看待自己的长短得失，做一个明白人。3走出阴影，要克服这一次失败带给自己的心理压力，时刻牢记自己弱点，防患于未然，加强学习，提高自身素质。4认真工作，回到原单位岗位上后，要实实在在、踏踏实实地工作，三十六行、行行出状元，争取在本岗位上做出一定的成绩。5再接再厉，成为国家公务员一直是我的梦想，以后如果有机会我仍然后再次参加竞争。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>50、假如你晚上要去送一个出国的同学去机场，可单位临时有事非你办不可，你怎么办？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：我觉得工作是第一位的，但朋友间的情谊也是不能偏废的，这个问题我觉得要按照当时具体的情况来决定。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />1如果我的朋友晚上9点中的飞机，而我的加班八点就能够完成的话，那就最理想了，干完工作去机场，皆大欢喜。2如果说工作不是很紧急，加班仅仅是为了明天上班的时候能把报告交到办公室，那完全可以跟领导打声招呼，先去机场然后回来加班，晚点睡就是了。3如果工作很紧急，两者不可能兼顾的情况下，我觉得可以由两种选择。（1）如果不是全单位都加班的话，是不是可以要其他同事来代替以下工作，自己去机场，哪怕就是代替你离开的那一会儿。（2）如果连这一点都做不到的话，那只好忠义不能两全了，打电话给朋友解释一下，相信他会理解，毕竟工作做完了就完了，朋友还是可以再见面的。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>51、谈谈你过去做过的成功案例？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：举一个你最有把握的例子，把来龙去脉说清楚，而不要说了很多却没有重点。切忌夸大其词，把别人的功劳到说成自己的，很多主管为了确保要用的人是最适合的，会打电话向你的前一个主管征询对你的看法及意见，所以如果说谎，是很容易穿梆的。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>52、谈谈你过去的工作经验中，最令你挫折的事情？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：曾经接触过一个客户，原本就有耳闻他们以挑剔出名，所以事前的准备功夫做得十分充分，也投入了相当多的时间与精力，最后客户虽然并没有照单全收，但是接受的程度已经出乎我们意料之外了。原以为从此可以合作愉快，却得知客户最后因为预算关系选择了另一家代理商，之前的努力因而付诸流水。尽管如此，我还是从这次的经验学到很多，如对该产业的了解，整个team的默契也更好了。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />分析：借此了解你对挫折的容忍度及调解方式。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>53、如何安排自己的时间？会不会排斥加班？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：基本上，如果上班工作有效率，工作量合理的话，应该不太需要加班。可是我也知道有时候很难避免加班，加上现在工作都采用责任制，所以我会调配自己的时间，全力配合。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />分析：虽然不会有人心甘情愿的加班，但依旧要表现出高配合度的诚意。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>54、为什么我们要在众多的面试者中选择你？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：根据我对贵公司的了解，以及我在这份工作上所累积的专业、经验及人脉，相信正是贵公司所找寻的人才。而我在工作态度、ＥＱ上，也有圆融、成熟的一面，和主管、同事都能合作愉快。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />分析：别过度吹嘘自己的能力，或信口开河地乱开支票，例如一定会为该公司带来多少钱的业务等，这样很容易给人一种爱说大话、不切实际的感觉。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>55、这个职务的期许？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：希望能借此发挥我的所学及专长，同时也吸收贵公司在这方面的经验，就公司、我个人而言，缔造“双赢”的局面。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />分析：回答前不妨先询问该公司对这项职务的责任认定及归属，因为每一家公司的状况不尽相同，以免说了一堆理想抱负却发现牛头不对马嘴。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>56、为什么选择这个职务？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：这一直是我的兴趣和专长，经过这几年的磨练，也累积了一定的经验及人脉，相信我一定能胜任这个职务的。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />分析：适时举出过去的“丰功伟业”，表现出你对这份职务的熟稔度，但避免过于夸张的形容或流于炫耀。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>57、什么选择我们这家公司？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：曾经在报章杂志看过关于贵公司的报道，与自己所追求的理念有志一同。而贵公司在业界的成绩也是有目共睹的，而且对员工的教育训练、升迁等也都很有制度。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" />分析：去面试前先做功课，了解一下该公司的背景，让对方觉得你真的很有心想得到这份工作，而不只是探探路。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>58、认为你在学校属于好学生吗？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：企业的招聘者很精明，问这个问题可以试探出很多问题：如果求职者学习成绩好，就会说：“是的，我的成绩很好，所有的成绩都很优异。当然，判断一个学生是不是好学生有很多标准，在学校期间我认为成绩是重要的，其他方面包括思想道德、实践经验、团队精神、沟通能力也都是很重要的，我在这些方面也做得很好，应该说我是一个全面发展的学生。”如果求职者成绩不尽理想，便会说：“我认为是不是一个好学生的标准是多元化的，我的学习成绩还可以，在其他方面我的表现也很突出，比如我去很多地方实习过，我很喜欢在快节奏和压力下工作，我在学生会组织过&nbsp;××活动，锻炼了我的团队合作精神和组织能力。”&nbsp;有经验的招聘者一听就会明白，企业喜欢诚实的求职者。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>59、谈谈如何适应办公室工作的新环境？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示1办公室里每个人有各自的岗位与职责，不得擅离岗位。2根据领导指示和工作安排，制定工作计划，提前预备，并按计划完成。3多请示并及时汇报，遇到不明白的要虚心请教。4抓间隙时间，多学习，努力提高自己的政治素质和业务水平。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>60、工作中学习到了些什么？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：这是针对转职者提出的问题，建议此时可以配合面试工作的特点作为主要依据来回答，如业务工作需要与人沟通，便可举出之前工作与人沟通的例子，经历了哪些困难，学习到哪些经验，把握这些要点做陈述，就可以轻易过关了。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>61、想过创业吗？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：这个问题可以显示你的冲劲，但如果你的回答是“有”的话，千万小心，下一个问题可能就是：那么为什么你不这样做呢？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>62、除了本公司外，还应聘了哪些公司？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：很奇怪，这是相当多公司会问的问题，其用意是要概略知道应徵者的求职志向，所以这并非绝对是负面答案，就算不便说出公司名称，也应回答“销售同种产品的公司”，如果应聘的其他公司是不同业界，容易让人产生无法信任的感觉。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>63、何时可以到职？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：大多数企业会关心就职时间，最好是回答“如果被录用的话，到职日可按公司规定上班”，但如果还未辞去上一个工作、上班时间又太近，似乎有些强人所难，因为交接至少要一个月的时间，应进一步说明原因，录取公司应该会通融的。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>64、你并非毕业于名牌院校？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：是否毕业于名牌院校不重要，重要的是有能力完成您交给我的工作，我接受了北大青鸟的职业培训，掌握的技能完全可以胜任贵公司现在工作，而且我比一些名牌院校的应届毕业生的动手能力还要强，我想我更适合贵公司这个职位。<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /><strong>65、怎样看待学历和能力？<br style="text-align:left;widows:2;text-transform:none;background-color:#FFFFFF;text-indent:0px;font:14px/22px 宋体, arial, helvetica, san-serif;orphans:2;letter-spacing:normal;color:#000000;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px" /></strong>回答提示：学历我想只要是大学专科的学历，就表明觉得我具备了根本的学习能力。剩下的，你是学士也好，还是博士也好，对于这一点的讨论，不是看你学了多少知识，而是看你在这个领域上发挥了什么，也就是所说的能力问题。一个人工作能力的高低直接决定其职场命运，而学历的高低只是进入一个企业的敲门砖，如果贵公司把学历卡在博士上，我就无法进入贵公司，当然这不一定只是我个人的损失，如果一个专科生都能完成的工作，您又何必非要招聘一位博士生呢？</p>', 1, '2013-06-24 14:29:14', 55, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (55, 6, '通过淘宝IP接口获取地理信息', '&nbsp; &nbsp;代码很简单，分为两段，首先获取用户的真实的IP地址，然后根据淘宝的IP接口查询出该地址的相信信息 &lt;?php$ip = ''116.21.37.227'';var_dump(getIP());var_dump(getCity($ip)...', '<p> &nbsp; &nbsp;代码很简单，分为两段，首先获取用户的真实的IP地址，然后根据淘宝的IP接口查询出该</p><p>地址的相信信息 <br /></p><pre class="brush:php;toolbar:false;">&lt;?php
$ip = ''116.21.37.227'';
var_dump(getIP());
var_dump(getCity($ip));
/**
 * 获取用户真实 IP
 */
function getIP() {
    static $realip;
    if (isset($_SERVER)) {
        if (isset($_SERVER["HTTP_X_FORWARDED_FOR"])) {
            $realip = $_SERVER["HTTP_X_FORWARDED_FOR"];
        } else if (isset($_SERVER["HTTP_CLIENT_IP"])) {
            $realip = $_SERVER["HTTP_CLIENT_IP"];
        } else {
            $realip = $_SERVER["REMOTE_ADDR"];
        }
    } else {
        if (getenv("HTTP_X_FORWARDED_FOR")) {
            $realip = getenv("HTTP_X_FORWARDED_FOR");
        } else if (getenv("HTTP_CLIENT_IP")) {
            $realip = getenv("HTTP_CLIENT_IP");
        } else {
            $realip = getenv("REMOTE_ADDR");
        }
    }
    return $realip;
}
/**
 * 获取 IP  地理位置
 * 淘宝IP接口
 * @return: array
 */
function getCity($ip) {
    $url = "http://ip.taobao.com/service/getIpInfo.php?ip=" . $ip;
    $ip = json_decode(file_get_contents($url));
    if ((string) $ip-&gt;code == ''1'') {
        return false;
    }
    $data = (array) $ip-&gt;data;
    return $data;
}</pre><p><br /></p>', 1, '2013-06-27 17:39:13', 52, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (56, 6, '获取数据库随机记录的高效方法', 'MySQL很多时候需要获取随机数据，举个例子，要从tablename表中随机提取一条记录，大家一般的写法就是：SELECT * FROM tablename ORDER BY RAND() LIMIT 1但是，后来我查了一下MYSQL的官方手册...', '<p>MySQL很多时候需要获取随机数据，举个例子，要从tablename表中随机提取一条记录，大家一般的写法就是：</p><p><br /></p><pre class="brush:sql;toolbar:false;">SELECT * FROM tablename ORDER BY RAND() LIMIT 1</pre><p><br /></p><p>但是，后来我查了一下MYSQL的官方手册，里面针对RAND()的提示大概意思就是，在ORDER BY从句里面不能使用RAND()函数，因为这样会导致数据列被多次扫描。但是在MYSQL 3.23版本中，仍然可以通过ORDER BY RAND()来实现随机。</p><p><br /></p><p>测试一下才发现这样效率非常低。一个15万余条的库，查询5条数据，居然要8秒以上。查看官方手册，也说rand()放在ORDER BY 子句中会被执行多次，自然效率及很低。</p><blockquote><p>You cannot use a column with RAND() values in an ORDER BY clause, because ORDER BY would evaluate the column multiple times.</p><p><br /></p></blockquote><p>搜索Google，网上基本上都是查询max(id) * rand()来随机获取数据。</p><p><br /></p><pre class="brush:sql;toolbar:false;">SELECT *
FROM ''table'' AS t1 JOIN (SELECT ROUND(RAND() * (SELECT MAX(id) FROM ''table'')) AS id) AS t2
WHERE t1.id &gt;= t2.id
ORDER BY t1.id ASC LIMIT 5;</pre><p><br /></p><p>但是这样会产生连续的5条记录。解决办法只能是每次查询一条，查询5次。即便如此也值得，因为15万条的表，查询只需要0.01秒不到。</p><p><br /></p><p>下面的语句采用的是JOIN，mysql的论坛上有人使用：</p><p><br /></p><pre class="brush:sql;toolbar:false;">SELECT *
FROM ''table''
WHERE id &gt;= (SELECT FLOOR( MAX(id) * RAND()) FROM ''table'' )
ORDER BY id LIMIT 1;</pre><p><br /></p><p>我测试了一下，需要0.5秒，速度也不错，但是跟上面的语句还是有很大差距。总觉有什么地方不正常。</p><p><br /></p><p>于是把语句改写了一下。</p><p><br /></p><pre class="brush:sql;toolbar:false;">SELECT * FROM ''table''
WHERE id &gt;= (SELECT floor(RAND() * (SELECT MAX(id) FROM ''table'')))　
ORDER BY id LIMIT 1;</pre><p><br /></p><p>这下，效率又提高了，查询时间只有0.01秒。</p><p><br /></p><p>最后，再把语句完善一下，加上MIN(id)的判断。我在最开始测试的时候，就是因为没有加上MIN(id)的判断，结果有一半的时间总是查询到表中的前面几行。</p><p><br /></p><p>完整查询语句是：</p><p><br /></p><pre class="brush:sql;toolbar:false;">SELECT * FROM ''table'' WHERE id &gt;= (
SELECT floor(
RAND() * ((SELECT MAX(id) FROM ''table'')-(SELECT MIN(id) FROM ''table''))
+ (SELECT MIN(id) FROM ''table'')
)
)　
ORDER BY id LIMIT 1;</pre><p><br /></p><pre class="brush:sql;toolbar:false;">SELECT * FROM ''table'' AS t1 JOIN (
SELECT ROUND(
# 最小值 + (1 至 最小与最大值差)
RAND() * (
(SELECT MAX(id) FROM ''table'')-(SELECT MIN(id) FROM ''table'')
)
+(SELECT MIN(id) FROM ''table'')
) AS id
) AS t2
WHERE t1.id &gt;= t2.id
ORDER BY t1.id LIMIT 1;</pre><p><br /></p><p>最后在php中对这两个语句进行分别查询10次，前者花费时间 0.147433 秒，后者花费时间 0.015130 秒。看来采用JOIN的语法比直接在WHERE中使用函数效率还要高很多。</p><p><br /></p>', 1, '2013-07-09 16:57:57', 64, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (57, 6, '利用Google QR Code生成二维码', '最近很流行二维码下面&nbsp;利用Google QR Code生成二维码header(''Content-type=text/html;charset=utf-8'');$url = "https://chart.googleapis.com/chart?"; //Google QR Code API$parma...', '<p>
	最近很流行二维码
</p>
<p>
	下面&nbsp;利用Google QR Code生成二维码
</p>
<p>
	<br />
</p>
<p>
<pre class="brush:php">header(''Content-type=text/html;charset=utf-8'');
$url = "https://chart.googleapis.com/chart?"; //Google QR Code API

$parma = array(
    ''cht'' =&gt; ''qr'',  //二维码
    ''chs'' =&gt; ''200x200'', //图片的宽高
    ''choe'' =&gt; ''UTF-8'', //编码 (默认)
    ''chld'' =&gt; ''H|1'', //识别能力|留白
    ''chl'' =&gt; ''http://www.honoer.com/'', //内容
);

$url.=http_build_query($parma);
echo ''&lt;img src="'' . $url . ''" width=200 height=200/&gt;'';</pre>
</p>
<p>
	详细参见：<a href="https://developers.google.com/chart/infographics/docs/qr_codes" target="_blank">Google API</a>
</p>', 1, '2013-08-01 17:32:21', 13, 0, 'Public/Upload/thumb_51fa2b279a1b3.jpg', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (58, 6, '防止SQL注入的方法', '一、在服务器端配置安全，PHP代码编写是一方面，PHP的配置更是非常关键。我们php手手工安装的，php的默认配置文件在 /usr/local/apache2/conf/php.ini，我们最主要就是要配置php.ini中的内容...', '<p style="text-indent:2em;">
	<strong>一、在服务器端配置</strong>
</p>
<p style="text-indent:2em;">
	安全，PHP代码编写是一方面，PHP的配置更是非常关键。<br />
<br />
我们php手手工安装的，php的默认配置文件在 /usr/local/apache2/conf/php.ini，我们最主要就是要配置php.ini中的内容，让我们执行 php能够更安全。整个PHP中的安全设置主要是为了防止phpshell和SQL Injection的攻击，一下我们慢慢探讨。我们先使用任何编辑工具打开 /etc/local/apache2/conf/php.ini，如果你是采用其他方式安装，配置文件可能不在该目录。<br />
<br />
(1) 打开php的安全模式<br />
<br />
php的安全模式是个非常重要的内嵌的安全机制，能够控制一些php中的函数，比如system()，<br />
<br />
同时把很多文件操作函数进行了权限控制，也不允许对某些关键文件的文件，比如/etc/passwd，<br />
<br />
但是默认的php.ini是没有打开安全模式的，我们把它打开：<br />
<br />
safe_mode = on<br />
<br />
(2) 用户组安全<br />
<br />
当safe_mode打开时，safe_mode_gid被关闭，那么php脚本能够对文件进行访问，而且相同<br />
<br />
组的用户也能够对文件进行访问。<br />
<br />
建议设置为：<br />
<br />
safe_mode_gid = off<br />
<br />
如果不进行设置，可能我们无法对我们服务器网站目录下的文件进行操作了，比如我们需要<br />
<br />
对文件进行操作的时候。<br />
<br />
(3) 安全模式下执行程序主目录<br />
<br />
如果安全模式打开了，但是却是要执行某些程序的时候，可以指定要执行程序的主目录：<br />
<br />
safe_mode_exec_dir = D:/usr/bin<br />
<br />
一般情况下是不需要执行什么程序的，所以推荐不要执行系统程序目录，可以指向一个目录，<br />
<br />
然后把需要执行的程序拷贝过去，比如：<br />
<br />
safe_mode_exec_dir = D:/tmp/cmd<br />
<br />
但是，我更推荐不要执行任何程序，那么就可以指向我们网页目录：<br />
<br />
safe_mode_exec_dir = D:/usr/www<br />
<br />
(4) 安全模式下包含文件<br />
<br />
如果要在安全模式下包含某些公共文件，那么就修改一下选项：<br />
<br />
safe_mode_include_dir = D:/usr/www/include/<br />
<br />
其实一般php脚本中包含文件都是在程序自己已经写好了，这个可以根据具体需要设置。<br />
<br />
(5) 控制php脚本能访问的目录<br />
<br />
使用open_basedir选项能够控制PHP脚本只能访问指定的目录，这样能够避免PHP脚本访问<br />
<br />
不应该访问的文件，一定程度上限制了phpshell的危害，我们一般可以设置为只能访问网站目录：<br />
<br />
open_basedir = D:/usr/www<br />
<br />
(6) 关闭危险函数<br />
<br />
如果打开了安全模式，那么函数禁止是可以不需要的，但是我们为了安全还是考虑进去。比如，<br />
<br />
我们觉得不希望执行包括system()等在那的能够执行命令的php函数，或者能够查看php信息的<br />
<br />
phpinfo()等函数，那么我们就可以禁止它们：<br />
<br />
disable_functions = system,passthru,exec,shell_exec,popen,phpinfo<br />
<br />
如果你要禁止任何文件和目录的操作，那么可以关闭很多文件操作<br />
<br />
disable_functions = chdir,chroot,dir,getcwd,opendir,readdir,scandir,fopen,unlink,delete,copy,mkdir, rmdir,rename,file,file_get_contents,fputs,fwrite,chgrp,chmod,chown<br />
<br />
以上只是列了部分不叫常用的文件处理函数，你也可以把上面执行命令函数和这个函数结合，<br />
<br />
就能够抵制大部分的phpshell了。<br />
<br />
(7) 关闭PHP版本信息在http头中的泄漏<br />
<br />
我们为了防止黑客获取服务器中php版本的信息，可以关闭该信息斜路在http头中：<br />
<br />
expose_php = Off<br />
<br />
比如黑客在 telnet www.12345.com 80 的时候，那么将无法看到PHP的信息。<br />
<br />
(8) 关闭注册全局变量<br />
<br />
在PHP中提交的变量，包括使用POST或者GET提交的变量，都将自动注册为全局变量，能够直接访问，<br />
<br />
这是对服务器非常不安全的，所以我们不能让它注册为全局变量，就把注册全局变量选项关闭：<br />
<br />
register_globals = Off<br />
<br />
当然，如果这样设置了，那么获取对应变量的时候就要采用合理方式，比如获取GET提交的变量var，<br />
<br />
那么就要用$_GET[''var'']来进行获取，这个php程序员要注意。<br />
<br />
(9) 打开magic_quotes_gpc来防止SQL注入<br />
<br />
SQL注入是非常危险的问题，小则网站后台被入侵，重则整个服务器沦陷，<br />
<br />
所以一定要小心。php.ini中有一个设置：<br />
<br />
magic_quotes_gpc = Off<br />
<br />
这个默认是关闭的，如果它打开后将自动把用户提交对sql的查询进行转换，<br />
<br />
比如把 '' 转为 \''等，这对防止sql注射有重大作用。所以我们推荐设置为：<br />
<br />
magic_quotes_gpc = On<br />
<br />
(10) 错误信息控制<br />
<br />
一般php在没有连接到数据库或者其他情况下会有提示错误，一般错误信息中会包含php脚本当<br />
<br />
前的路径信息或者查询的SQL语句等信息，这类信息提供给黑客后，是不安全的，所以一般服务器建议禁止错误提示：<br />
<br />
display_errors = Off<br />
<br />
如果你却是是要显示错误信息，一定要设置显示错误的级别，比如只显示警告以上的信息：<br />
<br />
error_reporting = E_WARNING &amp; E_ERROR<br />
<br />
当然，我还是建议关闭错误提示。<br />
<br />
(11) 错误日志<br />
<br />
建议在关闭display_errors后能够把错误信息记录下来，便于查找服务器运行的原因：<br />
<br />
log_errors = On<br />
<br />
同时也要设置错误日志存放的目录，建议根apache的日志存在一起：<br />
<br />
error_log = D:/usr/local/apache2/logs/php_error.log<br />
<br />
注意：给文件必须允许apache用户的和组具有写的权限。<br />
<br />
MYSQL的降权运行<br />
<br />
新建立一个用户比如mysqlstart<br />
<br />
net user mysqlstart fuckmicrosoft /add<br />
<br />
net localgroup users mysqlstart /del<br />
<br />
不属于任何组<br />
<br />
如果MYSQL装在d:\mysql ，那么，给 mysqlstart 完全控制 的权限<br />
<br />
然后在系统服务中设置，MYSQL的服务属性，在登录属性当中，选择此用户 mysqlstart 然后输入密码，确定。<br />
<br />
重新启动 MYSQL服务，然后MYSQL就运行在低权限下了。<br />
<br />
如果是在windos平台下搭建的apache我们还需要注意一点，apache默认运行是system权限，<br />
<br />
这很恐怖，这让人感觉很不爽.那我们就给apache降降权限吧。<br />
<br />
net user apache fuckmicrosoft /add<br />
<br />
net localgroup users apache /del<br />
<br />
ok.我们建立了一个不属于任何组的用户apche。<br />
<br />
我们打开计算机管理器，选服务，点apache服务的属性，我们选择log on，选择this account，我们填入上面所建立的账户和密码，<br />
<br />
重启apache服务，ok，apache运行在低权限下了。<br />
<br />
实际上我们还可以通过设置各个文件夹的权限，来让apache用户只能执行我们想让它能干的事情，给每一个目录建立一个单独能读写的用户。<br />
<br />
这也是当前很多虚拟主机提供商的流行配置方法哦，不过这种方法用于防止这里就显的有点大材小用了。&nbsp;
</p>
<p style="text-indent:2em;">
	<br />
<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二、在PHP代码编写</strong>
</p>
<p style="text-indent:2em;">
	虽然国内很多PHP程序员仍在依靠addslashes防止SQL注入，还是建议大家加强中文防止SQL注入的检查。addslashes的问题在于黑客可以用0xbf27来代替单引号，而addslashes只是将0xbf27修改为0xbf5c27，成为一个有效的多字节字符，其中的0xbf5c仍会被看作是单引号，所以addslashes无法成功拦截。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 当然addslashes也不是毫无用处，它是用于单字节字符串的处理，多字节字符还是用mysql_real_escape_string吧。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 另外对于php手册中get_magic_quotes_gpc的举例：<br />
<pre class="brush:php">&lt;?php
if (!get_magic_quotes_gpc()) {
    $lastname = addslashes($_POST[‘lastname’]);
} else {
    $lastname = $_POST[‘lastname’];
}
?&gt;</pre>
</p>
<p style="text-indent:2em;">
	最好对magic_quotes_gpc已经开放的情况下，还是对$_POST[’lastname’]进行检查一下。<br />
再说下mysql_real_escape_string和mysql_escape_string这2个函数的区别：<br />
mysql_real_escape_string 必须在(PHP 4 &gt;= 4.3.0, PHP 5)的情况下才能使用。否则只能用 mysql_escape_string ，两者的区别是：mysql_real_escape_string 考虑到连接的<br />
当前字符集，而mysql_escape_string 不考虑。<br />
总结一下：<br />
* addslashes() 是强行加\；<br />
* mysql_real_escape_string()&nbsp; 会判断字符集，但是对PHP版本有要求；<br />
* mysql_escape_string不考虑连接的当前字符集。
</p>
<p style="text-indent:2em;">
	<br />
</p>
<hr style="page-break-after:always;" class="ke-pagebreak" />
<p>
	<br />
</p>
<p style="text-indent:2em;">
	<br />
</p>
<p style="text-indent:2em;">
	<br />
<br />
在PHP编码的时候，如果考虑到一些比较基本的安全问题，首先一点：<br />
1. 初始化你的变量<br />
为什么这么说呢？我们看下面的代码：<br />
PHP代码&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;
</p>
<pre class="brush:php">&lt;?php
if ($admin) {
    echo ''登陆成功！'';
    include(''admin.php'');
} else {
    echo ''你不是管理员，无法进行管理！'';
}
?&gt;</pre>
<br />
&nbsp;&nbsp;&nbsp;&nbsp; 好，我们看上面的代码好像是能正常运行，没有问题，那么加入我提交一个非法的参数过去呢，那么效果会如何呢？比如我们的这个页是http://daybook.diandian.com/login.php，那么我们提交：http://daybook.diandian.com/login.php?admin=1，呵呵，你想一些，我们是不是直接就是管理员了，直接进行管理。<br />
&nbsp;&nbsp;&nbsp;&nbsp; 当然，可能我们不会犯这么简单错的错误，那么一些很隐秘的错误也可能导致这个问题，比如phpwind论坛有个漏洞，导致能够直接拿到管理员权限，就是因为有个$skin变量没有初始化，导致了后面一系列问题。那么我们如何避免上面的问题呢？首先，从php.ini入手，把php.ini里面的register_global =off，就是不是所有的注册变量为全局，那么就能避免了。但是，我们不是服务器管理员，只能从代码上改进了，那么我们如何改进上面的代码呢？我们改写如下：<br />
PHP代码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;
<pre class="brush:php">&lt;?php
$admin = 0; // 初始化变量     
if ($_POST[''admin_user''] &amp;&amp; $_POST[''admin_pass'']) {
    // 判断提交的管理员用户名和密码是不是对的相应的处理代码     
    // ...     
    $admin = 1;
} else {
    $admin = 0;
}
if ($admin) {
    echo ''登陆成功！'';
    include(''admin.php'');
} else {
    echo ''你不是管理员，无法进行管理！'';
}
?&gt;</pre>
<br />
&nbsp;&nbsp;&nbsp; 那么这时候你再提交http://daybook.diandian.com/login.php?admin=1就不好使了，因为我们在一开始就把变量初始化为 $admin = 0 了，那么你就无法通过这个漏洞获取管理员权限。<br />
2. 防止SQL Injection (sql注射)<br />
&nbsp;&nbsp;&nbsp; SQL 注射应该是目前程序危害最大的了，包括最早从asp到php，基本上都是国内这两年流行的技术，基本原理就是通过对提交变量的不过滤形成注入点然后使恶意用户能够提交一些sql查询语句，导致重要数据被窃取、数据丢失或者损坏，或者被入侵到后台管理。<br />
&nbsp;&nbsp;&nbsp; 那么我们既然了解了基本的注射入侵的方式，那么我们如何去防范呢？这个就应该我们从代码去入手了。<br />
&nbsp;&nbsp; 我们知道Web上提交数据有两种方式，一种是get、一种是post，那么很多常见的sql注射就是从get方式入手的，而且注射的语句里面一定是包含一些sql语句的，因为没有sql语句，那么如何进行，sql语句有四大句：select 、update、delete、insert，那么我们如果在我们提交的数据中进行过滤是不是能够避免这些问题呢？<br />
于是我们使用正则就构建如下函数：<br />
PHP代码<br />
&nbsp;&nbsp;&nbsp;
<pre class="brush:php">&lt;?php

function inject_check($sql_str) {
    return eregi(''select|insert|update|delete|'');
}

function verify_id($id = null) {
    if (!$id) {
        exit(''没有提交参数！'');
    } // 是否为空判断     
    elseif (inject_check($id)) {
        exit(''提交的参数非法！'');
    } // 注射判断     
    elseif (!is_numeric($id)) {
        exit(''提交的参数非法！'');
    } // 数字判断     
    $id = intval($id); // 整型化          
    return $id;
}
?&gt;</pre>
<br />
&nbsp;&nbsp;&nbsp;&nbsp; 呵呵，那么我们就能够进行校验了，于是我们上面的程序代码就变成了下面的：<br />
PHP代码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
<pre class="brush:php">&lt;?php
if (inject_check($_GET[''id''])) {
    exit(''你提交的数据非法，请检查后重新提交！'');
} else {
    $id = verify_id($_GET[''id'']); // 这里引用了我们的过滤函数，对$id进行过滤     
    echo ''提交的数据合法，请继续！'';
}
?&gt;</pre>
<br />
&nbsp;&nbsp;&nbsp; 好，问题到这里似乎都解决了，但是我们有没有考虑过post提交的数据，大批量的数据呢？<br />
比如一些字符可能会对数据库造成危害，比如 '' _ '', '' %''，这些字符都有特殊意义，那么我们如果进行控制呢？还有一点，就是当我们的php.ini里面的magic_quotes_gpc = off的时候，那么提交的不符合数据库规则的数据都是不会自动在前面加'' ''的，那么我们要控制这些问题，于是构建如下函数：<br />
PHP代码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;
<pre class="brush:php">&lt;?php

function str_check($str) {
    if (!get_magic_quotes_gpc()) { // 判断magic_quotes_gpc是否打开     
        $str = addslashes($str); // 进行过滤     
    }
    $str = str_replace("_", "\_", $str); // 把 ''_''过滤掉     
    $str = str_replace("%", "\%", $str); // 把'' % ''过滤掉     

    return $str;
}
?&gt;</pre>
<br />
&nbsp;&nbsp;&nbsp; 我们又一次的避免了服务器被沦陷的危险。<br />
&nbsp;&nbsp;&nbsp; 最后，再考虑提交一些大批量数据的情况，比如发贴，或者写文章、新闻，我们需要一些函数来帮我们过滤和进行转换，再上面函数的基础上，我们构建如下函数：<br />
PHP代码&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; if (!get_magic_quotes_gpc()) // 判断magic_quotes_gpc是否为打开&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; ?&gt;<br />
&nbsp;&nbsp;&nbsp; 呵呵，基本到这里，我们把一些情况都说了一遍，其实我觉得自己讲的东西还很少，至少我才只讲了两方面，再整个安全中是很少的内容了，考虑下一次讲更多，包括php安全配置，apache安全等等，让我们的安全正的是一个整体，作到最安全。<br />
&nbsp;&nbsp;&nbsp; 最后在告诉你上面表达的：1. 初始化你的变量 2. 一定记得要过滤你的变量
<p>
	<br />
</p>
<pre class="brush:php">&lt;?php

function post_check($post) {
    if (!get_magic_quotes_gpc()) { // 判断magic_quotes_gpc是否为打开     
        $post = addslashes($post); // 进行magic_quotes_gpc没有打开的情况对提交数据的过滤     
    }
    $post = str_replace("_", "\_", $post); // 把 ''_''过滤掉     
    $post = str_replace("%", "\%", $post); // 把'' % ''过滤掉     
    $post = nl2br($post); // 回车转换     
    $post = htmlspecialchars($post); // html标记转换         
    return $post;
}
?&gt;</pre>
<p style="text-indent:2em;">
	<br />
</p>
<p style="text-indent:2em;">
	<br />
</p>', 1, '2013-08-06 19:48:46', 5, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (59, 6, 'CURL模拟登陆', '要模拟浏览器访问网站，首选要学会观察浏览器是如何发送http报文的，以及网站服务器返回给浏览器 是什么样的内容。我推荐安装一个国外人开发的httpwatch的软件，最好搞个破解的版本，否则有些...', '<p style="text-indent:2em;">
	<br />
</p>
<p style="text-indent:2em;">
	要模拟浏览器访问网站，首选要学会观察浏览器是如何发送http报文的，以及网站服务器返回给浏览器 是什么样的内容。我推荐安装一个国外人开发的httpwatch的软件，最好搞个破解的版本，否则有些功能是使用不了的。这个软件安装完成之后是嵌入在 IE里的，启动Record，在地址栏输入网址后回车，它就会将浏览器和服务器之间的所有通讯扫描出来，让你一览无遗。关于这个软件的使用在本文不做介 绍。
</p>
<p style="text-indent:2em;">
	模拟浏览器登陆应用开发，最关键的地方是突破登陆验证。CURL技术不只支持http，还支持https。区别就在多了一层SSL加密传输。如果是要登陆 https网站，php记得要支持openssl。还是先拿一个例子来分析。
</p>
<p style="text-indent:2em;">
<pre class="brush:php">&lt;?php
$discuz_url = ''http://127.0.0.1/discuz/''; //论坛地址
$login_url = $discuz_url . ''logging.php?action=login''; //登录页地址

$post_fields = array();
//以下两项不需要修改
$post_fields[''loginfield''] = ''username'';
$post_fields[''loginsubmit''] = ''true'';
//用户名和密码，必须填写
$post_fields[''username''] = ''tianxin'';
$post_fields[''password''] = ''111111'';
//安全提问
$post_fields[''questionid''] = 0;
$post_fields[''answer''] = '''';
//@todo验证码
$post_fields[''seccodeverify''] = '''';

//获取表单FORMHASH
$ch = curl_init($login_url);
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$contents = curl_exec($ch);
curl_close($ch);
preg_match(''/&lt;input\s*type="hidden"\s*name="formhash"\s*value="(.*?)"\s*\/&gt;/i'', $contents, $matches);
if (!empty($matches)) {
    $formhash = $matches[1];
} else {
    die(''Not found the forumhash.'');
}

//POST数据，获取COOKIE,cookie文件放在网站的temp目录下
$cookie_file = tempnam(''./temp'', ''cookie'');

$ch = curl_init($login_url);
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $post_fields);
curl_setopt($ch, CURLOPT_COOKIEJAR, $cookie_file);
curl_exec($ch);
curl_close($ch);

//取到了关键的cookie文件就可以带着cookie文件去模拟发帖,fid为论坛的栏目ID
$send_url = $discuz_url . "post.php?action=newthread&amp;fid=2";


$ch = curl_init($send_url);
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
$contents = curl_exec($ch);
curl_close($ch);

//这里的hash码和登陆窗口的hash码的正则不太一样，这里的hidden多了一个id属性
preg_match(''/&lt;input\s*type="hidden"\s*name="formhash"\s*id="formhash"\s*value="(.*?)"\s*\/&gt;/i'', $contents, $matches);
if (!empty($matches)) {
    $formhash = $matches[1];
} else {
    die(''Not found the forumhash.'');
}


$post_data = array();
//帖子标题
$post_data[''subject''] = ''test2'';
//帖子内容
$post_data[''message''] = ''test2'';
$post_data[''topicsubmit''] = "yes";
$post_data[''extra''] = '''';
//帖子标签
$post_data[''tags''] = ''test'';
//帖子的hash码，这个非常关键！假如缺少这个hash码，discuz会警告你来路的页面不正确
$post_data[''formhash''] = $formhash;


$ch = curl_init($send_url);
curl_setopt($ch, CURLOPT_REFERER, $send_url);       //伪装REFERER
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 0);
curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data);
$contents = curl_exec($ch);
curl_close($ch);

//清理cookie文件
unlink($cookie_file);
?&gt;</pre>
</p>
<p style="text-indent:2em;">
	<br />
</p>', 1, '2013-08-07 10:44:16', 5, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (60, 6, '解密PHP Curl多线程', '相信许多人对php手册中语焉不详的curl_multi一族的函数头疼不已，它们文档少，给的例子 更是简单的让你无从借鉴，我也曾经找了许多网页，都没见一个完整的应用例子。curl_multi_add_handlecu...', '<p>
	相信许多人对php手册中语焉不详的curl_multi一族的函数头疼不已，它们文档少，给的例子 
更是简单的让你无从借鉴，我也曾经找了许多网页，都没见一个完整的应用例子。
</p>
<p>
	<br />
</p>
<ul>
	<li>
		curl_multi_add_handle
	</li>
	<li>
		curl_multi_close
	</li>
	<li>
		curl_multi_exec
	</li>
	<li>
		curl_multi_getcontent
	</li>
	<li>
		curl_multi_info_read
	</li>
	<li>
		curl_multi_init
	</li>
	<li>
		curl_multi_remove_handle
	</li>
	<li>
		curl_multi_select
	</li>
</ul>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	一般来说，想到要用这些函数时，目的显然应该是要同时请求多个url，而不是一个一个依次请求，否则不如自己循环去调curl_exec好了。
</p>
<p>
	步骤总结如下：
</p>
<blockquote>
	第一步：调用curl_multi_init<br />
第二步：循环调用curl_multi_add_handle<br />
这一步需要注意的是，curl_multi_add_handle的第二个参数是由curl_init而来的子handle。<br />
第三步：持续调用curl_multi_exec<br />
第四步：根据需要循环调用curl_multi_getcontent获取结果<br />
第五步：调用curl_multi_remove_handle，并为每个字handle调用curl_close<br />
第六步：调用curl_multi_close
</blockquote>
<p>
	这里有PHP手册上的例子：
</p>
<p>
	<br />
</p>
<pre class="brush:php">&lt;?php
// 创建一对cURL资源
$ch1 = curl_init();
$ch2 = curl_init();

// 设置URL和相应的选项
curl_setopt($ch1, CURLOPT_URL, "http://lxr.php.net/");
curl_setopt($ch1, CURLOPT_HEADER, 0);
curl_setopt($ch2, CURLOPT_URL, "http://www.php.net/");
curl_setopt($ch2, CURLOPT_HEADER, 0);

// 创建批处理cURL句柄
$mh = curl_multi_init();

// 增加2个句柄
curl_multi_add_handle($mh,$ch1);
curl_multi_add_handle($mh,$ch2);

$active = null;
// 执行批处理句柄
do {
    $mrc = curl_multi_exec($mh, $active);
} while ($mrc == CURLM_CALL_MULTI_PERFORM);

while ($active &amp;&amp; $mrc == CURLM_OK) {
    if (curl_multi_select($mh) != -1) {
        do {
            $mrc = curl_multi_exec($mh, $active);
        } while ($mrc == CURLM_CALL_MULTI_PERFORM);
    }
}

// 关闭全部句柄
curl_multi_remove_handle($mh, $ch1);
curl_multi_remove_handle($mh, $ch2);
curl_multi_close($mh);

?&gt; 
</pre>
<p>
	整个使用过程差不多就是这样，但是，这个简单代码有个致命弱点，就是在do循环的那段，在整个url请求期间是个死循环，它会轻易导致CPU占用100%。
</p>
<p>
	现在我们来改进它，这里要用到一个几乎没有任何文档的函数curl_multi_select了，虽然C的curl库对select有说明，但是，php里的接口和用法确与C中有不同。
</p>
<p>
	把上面do的那段改成下面这样：
</p>
<p>
<pre class="brush:php">do {
                        $mrc = curl_multi_exec($mh,$active);
                 } while ($mrc == CURLM_CALL_MULTI_PERFORM);
                while ($active and $mrc == CURLM_OK) {
                        if (curl_multi_select($mh) != -1) {
                                do {
                                        $mrc = curl_multi_exec($mh, $active);
                                 } while ($mrc == CURLM_CALL_MULTI_PERFORM);
                         }
                 }</pre>
	<p>
		因为$active要等全部url数据接受完毕才变成false，所以这里用到了curl_multi_exec的返回值判断是否还有数据，当有数据的时候就不停调用curl_multi_exec，暂时没有数据就进入select阶段，新数据一来就可以被唤醒继续执行。这里的好处就是CPU的无谓消耗没有了。
	</p>
	<p>
		另外：还有一些细节的地方可能有时候要遇到：
	</p>
	<p>
		控制每一个请求的超时时间，在curl_multi_add_handle之前通过curl_setopt去做：<br />
curl_setopt($ch, 
CURLOPT_TIMEOUT, $timeout);
	</p>
	<p>
		判断是否超时了或者其他错误，在curl_multi_getcontent之前用：curl_error($conn[$i]);
	</p>
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>', 1, '2013-08-09 11:00:18', 3, 0, '', '', '');
INSERT INTO "app_honoer"."yii_article" VALUES (61, 6, '21332222改了', 213, '<p>
	21332222改了21332222改了21332222改了21332222改了21332222改了
</p>
<p>
	21332222改了
</p>
<p>
	21332222改了
</p>
<p>
	21332222改了21332222改了21332222改了
</p>', 1, '2013-08-14 15:54:55', 1, 0, '', '', '');

-- ----------------------------
-- Table structure for yii_category
-- ----------------------------
DROP TABLE IF EXISTS "app_honoer"."yii_category";
CREATE TABLE "yii_category" (
"category_id"  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"category_pid"  INTEGER NOT NULL DEFAULT 0,
"category_name"  TEXT(100) NOT NULL DEFAULT '',
"category_module"  TEXT,
"category_path"  TEXT,
"category_url"  TEXT(100) NOT NULL DEFAULT '',
"category_is_nav"  INTEGER NOT NULL DEFAULT 0,
"category_order"  INTEGER
);

-- ----------------------------
-- Records of yii_category
-- ----------------------------
INSERT INTO "app_honoer"."yii_category" VALUES (1, 0, '首页', 'home', 0, 'site/index', 1, 1);
INSERT INTO "app_honoer"."yii_category" VALUES (2, 0, '关于我们', 'about', 0, '/site/page/view/about', 1, 2);
INSERT INTO "app_honoer"."yii_category" VALUES (3, 0, '产品介绍', 'product', 0, 'product/index', 1, 3);
INSERT INTO "app_honoer"."yii_category" VALUES (4, 0, '公司动态', 'article', 0, 'article/index', 1, 4);
INSERT INTO "app_honoer"."yii_category" VALUES (5, 4, '公司新闻', 'article', '0-4', 'article/index/id/5', 0, null);
INSERT INTO "app_honoer"."yii_category" VALUES (6, 4, '行业新闻', 'article', '0-4', 'article/index/id/6', 0, null);
INSERT INTO "app_honoer"."yii_category" VALUES (7, 3, '电视机', 'product', '0-3', 'product/index/id/7', 0, null);
INSERT INTO "app_honoer"."yii_category" VALUES (8, 3, '手机', 'product', '0-3', 'product/index/id/8', 0, null);
INSERT INTO "app_honoer"."yii_category" VALUES (9, 3, '女式衣服', 'product', '0-3', 'product/index/id/9', 0, null);
INSERT INTO "app_honoer"."yii_category" VALUES (10, 9, '裙子23213', 'product', '0-3-9', 'http://jody410.taobao.com', 1, 5);
INSERT INTO "app_honoer"."yii_category" VALUES (11, 2, '公司介绍', 'about', '0-2', '/site/page/view/introduction', 0, null);
INSERT INTO "app_honoer"."yii_category" VALUES (12, 2, '联系我们', 'about', '0-2', '/site/page/view/contact', 0, null);

-- ----------------------------
-- Table structure for yii_logs
-- ----------------------------
DROP TABLE IF EXISTS "app_honoer"."yii_logs";
CREATE TABLE "yii_logs" (
"log_id"  INTEGER NOT NULL,
"log_type"  INTEGER,
"log_remark"  TEXT,
"log_create_time"  TEXT,
"user_id"  INTEGER
);

-- ----------------------------
-- Records of yii_logs
-- ----------------------------

-- ----------------------------
-- Table structure for yii_picture
-- ----------------------------
DROP TABLE IF EXISTS "app_honoer"."yii_picture";
CREATE TABLE "yii_picture" (
"pic_id"  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"pic_alt"  TEXT,
"pic_path"  TEXT,
"pic_module"  TEXT,
"pic_foreign_id"  TEXT,
"pic_create_time"  TEXT
);

-- ----------------------------
-- Records of yii_picture
-- ----------------------------
INSERT INTO "app_honoer"."yii_picture" VALUES (1, 'qq', 'uploads/20130901/1378013107_i67843.jpg', 'category', 1, '2013-09-01 13:25:07');
INSERT INTO "app_honoer"."yii_picture" VALUES (2, 23123, '/uploads/images/20130901/1378017233_76546.jpg', 'category', 1, '2013-09-01 14:33:53');
INSERT INTO "app_honoer"."yii_picture" VALUES (3, '人人为我', 'uploads/images/20130904/bs-docs-responsive-illustrations.png', 'product', 1, '2013-09-06 14:33:53');
INSERT INTO "app_honoer"."yii_picture" VALUES (4, '任何人都可以使用', 'uploads/images/20130904/bs-docs-twitter-github.png', 'product', 1, '2013-09-06 14:33:53');
INSERT INTO "app_honoer"."yii_picture" VALUES (5, 213213, 'uploads/images/20131204/1386129840_10147.png', 'categary', null, '2013-12-04 12:04:00');
INSERT INTO "app_honoer"."yii_picture" VALUES (6, 2222, 'uploads/images/20131206/1386327720_26625.jpg', 'categary', null, '2013-12-06 19:02:00');

-- ----------------------------
-- Table structure for yii_product
-- ----------------------------
DROP TABLE IF EXISTS "app_honoer"."yii_product";
CREATE TABLE "yii_product" (
"product_id"  INTEGER PRIMARY KEY AUTOINCREMENT,
"category_id"  INTEGER,
"product_name"  TEXT,
"product_introduce"  TEXT,
"product_picture"  TEXT,
"product_create_time"  TEXT,
"user_id"  INTEGER,
"product_keys"  TEXT,
"product_content"  TEXT
);

-- ----------------------------
-- Records of yii_product
-- ----------------------------
INSERT INTO "app_honoer"."yii_product" VALUES (1, 7, '人人为我，我为人人', '由@mdo 和 @fat 在Twitter工作时创建，Bootstrap使用 LESS CSS 并用 Node 编译，托管在 GitHub 上，方便大家使用这一框架构建更好的web应用。', 'uploads/images/20130904/bs-docs-responsive-illustrations.png', '2013-9-5 18:03:33', 1, null, '<p>在实际项目或者自己编写小工具(比如新闻聚合,商品价格监控,比价)的过程中, 通常需要从第3方网站或者API接口获取数据, 在需要处理1个URL队列时, 为了提高性能, 可以采用cURL提供的curl_multi_*族函数实现简单的并发.<br /><br />本文将探讨两种具体的实现方法, 并对不同的方法做简单的性能对比.<br />1. 经典cURL并发机制及其存在的问题<br /><br />经典的cURL实现机制在网上很容易找到, 比如参考PHP在线手册的如下实现方式: <br /><br /></p><pre class="brush:php;">function classic_curl($urls, $delay) { 
    $queue = curl_multi_init(); 
    $map = array(); 
   
    foreach ($urls as $url) { 
        // create cURL resources 
        $ch = curl_init(); 
   
        // set URL and other appropriate options 
        curl_setopt($ch, CURLOPT_URL, $url); 
   
        curl_setopt($ch, CURLOPT_TIMEOUT, 1); 
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
        curl_setopt($ch, CURLOPT_HEADER, 0); 
        curl_setopt($ch, CURLOPT_NOSIGNAL, true); 
   
        // add handle 
        curl_multi_add_handle($queue, $ch); 
        $map[$url] = $ch; 
    } 
   
    $active = null; 
   
    // execute the handles 
    do { 
        $mrc = curl_multi_exec($queue, $active); 
    } while ($mrc == CURLM_CALL_MULTI_PERFORM); 
   
    while ($active &gt; 0 &amp;&amp; $mrc == CURLM_OK) { 
        if (curl_multi_select($queue, 0.5) != -1) { 
            do { 
                $mrc = curl_multi_exec($queue, $active); 
            } while ($mrc == CURLM_CALL_MULTI_PERFORM); 
        } 
    } 
   
    $responses = array(); 
    foreach ($map as $url=&gt;$ch) { 
        $responses[$url] = callback(curl_multi_getcontent($ch), $delay); 
        curl_multi_remove_handle($queue, $ch); 
        curl_close($ch); 
    } 
   
    curl_multi_close($queue); 
    return $responses; 
}</pre><p> </p><p>首先将所有的URL压入并发队列, 然后执行并发过程, 等待所有请求接收完之后进行数据的解析等后续处理. 在实际的处理过程中, 受网络传输的影响, 部分URL的内容会优先于其他URL返回, 但是经典cURL并发必须等待最慢的那个URL返回之后才开始处理, 等待也就意味着CPU的空闲和浪费. 如果URL队列很短, 这种空闲和浪费还处在可接受的范围, 但如果队列很长, 这种等待和浪费将变得不可接受.<br />2. 改进的Rolling cURL并发方式<br /><br />仔细分析不难发现经典cURL并发还存在优化的空间, 优化的方式时当某个URL请求完毕之后尽可能快的去处理它, 边处理边等待其他的URL返回, 而不是等待那个最慢的接口返回之后才开始处理等工作, 从而避免CPU的空闲和浪费. 闲话不多说, 下面贴上具体的实现:<br />3. 两种并发实现的性能对比<br /></p><pre class="brush:php;">function rolling_curl($urls, $delay) { 
    $queue = curl_multi_init(); 
    $map = array(); 
   
    foreach ($urls as $url) { 
        $ch = curl_init(); 
   
        curl_setopt($ch, CURLOPT_URL, $url); 
        curl_setopt($ch, CURLOPT_TIMEOUT, 1); 
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
        curl_setopt($ch, CURLOPT_HEADER, 0); 
        curl_setopt($ch, CURLOPT_NOSIGNAL, true); 
   
        curl_multi_add_handle($queue, $ch); 
        $map[(string) $ch] = $url; 
    } 
   
    $responses = array(); 
    do { 
        while (($code = curl_multi_exec($queue, $active)) == CURLM_CALL_MULTI_PERFORM) ; 
   
        if ($code != CURLM_OK) { break; } 
   
        // a request was just completed -- find out which one 
        while ($done = curl_multi_info_read($queue)) { 
   
            // get the info and content returned on the request 
            $info = curl_getinfo($done[''handle'']); 
            $error = curl_error($done[''handle'']); 
            $results = callback(curl_multi_getcontent($done[''handle'']), $delay); 
            $responses[$map[(string) $done[''handle'']]] = compact(''info'', ''error'', ''results''); 
   
            // remove the curl handle that just completed 
            curl_multi_remove_handle($queue, $done[''handle'']); 
            curl_close($done[''handle'']); 
        } 
   
        // Block for data in / output; error handling is done by curl_multi_exec 
        if ($active &gt; 0) { 
            curl_multi_select($queue, 0.5); 
        } 
   
    } while ($active); 
   
    curl_multi_close($queue); 
    return $responses; 
}</pre><p> </p><p><br />改进前后的性能对比试验在LINUX主机上进行, 测试时使用的并发队列如下:<br /><br /> &nbsp; &nbsp;http://item.taobao.com/item.htm?id=14392877692<br /> &nbsp; &nbsp;http://item.taobao.com/item.htm?id=16231676302<br /> &nbsp; &nbsp;http://item.taobao.com/item.htm?id=17037160462<br /> &nbsp; &nbsp;http://item.taobao.com/item.htm?id=5522416710<br /> &nbsp; &nbsp;http://item.taobao.com/item.htm?id=16551116403<br /> &nbsp; &nbsp;http://item.taobao.com/item.htm?id=14088310973<br /><br />简要说明下实验设计的原则和性能测试结果的格式: 为保证结果的可靠, 每组实验重复20次, 在单次实验中, 给定相同的接口URL集合, 分别测量 Classic(指经典的并发机制)和Rolling(指改进后的并发机制)两种并发机制的耗时(秒为单位), 耗时短者胜出(Winner), 并计算节省的时间(Excellence, 秒为单位)以及性能提升比例(Excel. %). 为了尽量贴近真实的请求而又保持实验的简单, 在对返回结果的处理上只是做了简单的正则表达式匹配, 而没有进行其他复杂的操作. 另外, 为了确定结果处理回调对性能对比测试结果的影响, 可以使用usleep模拟现实中比较负责的数据处理逻辑(如提取, 分词, 写入文件或数据库等).<br /><br />性能测试中用到的回调函数为:<br /></p><pre class="brush:php;">function callback($data, $delay) { 
    preg_match_all(''/&lt;h3&gt;(.+)&lt;\/h3&gt;/iU'', $data, $matches); ');
INSERT INTO "app_honoer"."yii_product" VALUES (2, 8, '任何人都可以使用。', 'Bootstrap不光为了看起来好看，而且在现代的桌面浏览器上有极佳的表现(包括IE7！)。在平板电脑和智能手机上面还有 响应式CSS 可以使用。', 'uploads/images/20130904/bs-docs-twitter-github.png', '2013-9-5 18:04:13', 1, null, null);
INSERT INTO "app_honoer"."yii_product" VALUES (3, 9, '丰富的特色。', '2列的响应式栅格结构、丰富的组件、JavaScript插件、排版、表单控件，还有 基于web的定制工具。', 'uploads/images/20130904/bs-docs-twitter-github.png', '2013-9-5 18:04:36', 1, null, null);
INSERT INTO "app_honoer"."yii_product" VALUES (4, 7, 2132131, 3123123213, 'uploads/images/20130904/bs-docs-responsive-illustrations.png', '2013-9-5 18:03:33', 1, null, null);
INSERT INTO "app_honoer"."yii_product" VALUES (5, 7, 231231, 23232313, 'uploads/images/20130904/bs-docs-twitter-github.png', '2013-9-5 18:03:33', 1, null, null);
INSERT INTO "app_honoer"."yii_product" VALUES (6, 7, 2312321313, 312321312313, 'uploads/images/20130904/bs-docs-twitter-github.png', null, null, null, null);

-- ----------------------------
-- Table structure for yii_user
-- ----------------------------
DROP TABLE IF EXISTS "app_honoer"."yii_user";
CREATE TABLE "yii_user" (
"user_id"  INTEGER,
"username"  TEXT,
"password"  TEXT,
"nickname"  TEXT,
"create_time"  TEXT,
"last_login_time"  TEXT,
PRIMARY KEY ("user_id" ASC)
);

-- ----------------------------
-- Records of yii_user
-- ----------------------------
INSERT INTO "app_honoer"."yii_user" VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'guanliyuan', null, '2013-12-09 14:12:16');

-- ----------------------------
-- Table structure for yii_widgets
-- ----------------------------
DROP TABLE IF EXISTS "app_honoer"."yii_widgets";
CREATE TABLE "yii_widgets" (
"widget_id"  INTEGER,
"widget_name"  TEXT,
"widget_desc"  TEXT,
"widget_content"  TEXT,
PRIMARY KEY ("widget_id" ASC)
);

-- ----------------------------
-- Records of yii_widgets
-- ----------------------------
INSERT INTO "app_honoer"."yii_widgets" VALUES (1, '导航菜单', '应用于头部', '<?php $this->widget(''admin.widgets.MenuWidget'', array(''style'' => ''top'')); ?>');
INSERT INTO "app_honoer"."yii_widgets" VALUES (2, '导航菜单', '应用于侧边栏', '<?php $this->widget(''admin.widgets.MenuWidget'', array(''style'' => ''side'')); ?>');
INSERT INTO "app_honoer"."yii_widgets" VALUES (3, '服务器信息', '显示服务器信息', '<?php $this->widget(''admin.widgets.ServiceWidget'');?>');
