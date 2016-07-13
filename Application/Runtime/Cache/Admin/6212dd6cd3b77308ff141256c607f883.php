<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>tpshop管理后台</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.4 -->
    <link href="/Public/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- FontAwesome 4.3.0 -->
 	<link href="/Public/bootstrap/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons 2.0.0 --
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="/Public/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
    	folder instead of downloading all of them to reduce the load. -->
    <link href="/Public/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="/Public/plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />   
    <!-- jQuery 2.1.4 -->
    <script src="/Public/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script src="/Public/js/global.js"></script>
    <script src="/Public/js/myFormValidate.js"></script>    
    <script src="/Public/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/Public/js/layer/layer-min.js"></script><!-- 弹窗js 参考文档 http://layer.layui.com/-->
    <script src="/Public/js/myAjax.js"></script>
    <script type="text/javascript">
    function delfunc(obj){
    	layer.confirm('确认删除？', {
    		  btn: ['确定','取消'] //按钮
    		}, function(){
    		    // 确定
   				$.ajax({
   					type : 'post',
   					url : $(obj).attr('data-url'),
   					data : {act:'del',del_id:$(obj).attr('data-id')},
   					dataType : 'json',
   					success : function(data){
   						if(data==1){
   							layer.msg('操作成功', {icon: 1});
   							$(obj).parent().parent().remove();
   						}else{
   							layer.msg(data, {icon: 2,time: 2000});
   						}
   						layer.closeAll();
   					}
   				})
    		}, function(index){
    			layer.close(index);
    			return false;// 取消
    		}
    	);
    }
    
    function selectAll(name,obj){
    	$('input[name*='+name+']').prop('checked', $(obj).checked);
    }    
    </script>        
  </head>
  <body style="background-color:#ecf0f5;">
 


<script type="text/javascript">
    window.UEDITOR_Admin_URL = "/Public/plugins/Ueditor/";
    var URL_upload = "<?php echo ($URL_upload); ?>";
    var URL_fileUp = "<?php echo ($URL_fileUp); ?>";
    var URL_scrawlUp = "<?php echo ($URL_scrawlUp); ?>";
    var URL_getRemoteImage = "<?php echo ($URL_getRemoteImage); ?>";
    var URL_imageManager = "<?php echo ($URL_imageManager); ?>";
    var URL_imageUp = "<?php echo ($URL_imageUp); ?>";
    var URL_getMovie = "<?php echo ($URL_getMovie); ?>";
    var URL_home = "<?php echo ($URL_home); ?>";    
</script>

<script type="text/javascript" src="/Public/plugins/Ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="/Public/plugins/Ueditor/ueditor.all.js"></script>

<link href="/Public/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
<script src="/Public/plugins/daterangepicker/moment.min.js" type="text/javascript"></script>
<script src="/Public/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>

<div class="wrapper">
    <div class="breadcrumbs" id="breadcrumbs">
	<ol class="breadcrumb">
	<?php if(is_array($navigate_admin)): foreach($navigate_admin as $k=>$v): if($k == '后台首页'): ?><li><a href="<?php echo ($v); ?>"><i class="fa fa-home"></i>&nbsp;&nbsp;<?php echo ($k); ?></a></li>
	    <?php else: ?>    
	        <li><a href="<?php echo ($v); ?>"><?php echo ($k); ?></a></li><?php endif; endforeach; endif; ?>          
	</ol>
</div>

   	<section class="content">
       <div class="row">
			<div class="col-md-12">
			
			<div class="box box-info">
                <div class="box-header with-border">
                  <h3 class="box-title">添加黑名单</h3>
                </div>
                <form class="form-horizontal" action="<?php echo U('Admin/heiid/heiidHandle');?>" id="add_post" method="post">
                  <div class="box-body">
                    <div class="form-group">
                      <label for="inputEmail3" class="col-sm-2 control-label">被黑标题</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control" value="<?php echo ($info["title"]); ?>" name="title" >
                      </div>
                    </div>

                    <div class="form-group">
                    	<label for="text" class="col-sm-2 control-label">证据封面图</label>
                    	<div class="col-sm-8"><input type="text" id="imagetext" name="imgs" value="<?php echo ($info["imgs"]); ?>"><input type="button" class="button" onClick="GetUploadify(1,'imagetext','article','')"  value="上传图片"/></div>
                    </div>
                      <div class="form-group">
                          <label for="inputEmail3" class="col-sm-2 control-label">被黑类别</label>
                          <div class="col-sm-2">
                              <input type="hidden" class="form-control" value="<?php echo ($info["type"]); ?>" name="type" id="types">
                             <button class="btn btn-default" type="button" id="gerenbtn">个人</button> <button class="btn btn-default" type="button" id="qiyebtn">企业</button>
                          </div>
                      </div>
                      <div class="form-group">
                          <label for="inputEmail3" class="col-sm-2 control-label">黑名单标签</label>
                          <div class="col-sm-8">
                              <button class="btn btn-default" type="button" id="chengxin">诚信</button>
                              <button class="btn btn-default" type="button" id="zhaopin">招聘</button>
                              <button class="btn btn-default" type="button" id="gouwu">购物</button>
                              <button class="btn btn-default" type="button" id="hetong">合同</button>
                              <button class="btn btn-default" type="button" id="jiaoyou">交友</button>
                              <button class="btn btn-default" type="button" id="shangpin">商品</button>
                          </div>
                      </div>
                      <div id="geren" style="display: none">
                          <div class="form-group">
                              <label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control" value="<?php echo ($info["name"]); ?>" name="name" >
                              </div>
                          </div>

                          <div class="form-group">
                              <label for="inputEmail3" class="col-sm-2 control-label">手机</label>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control" value="<?php echo ($info["phone"]); ?>" name="phone" >
                              </div>
                          </div>
                          <div class="form-group">
                              <label for="inputEmail3" class="col-sm-2 control-label">QQ</label>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control" value="<?php echo ($info["qq"]); ?>" name="qq" >
                              </div>
                          </div>
                          <div class="form-group">
                              <label for="inputEmail3" class="col-sm-2 control-label">微信</label>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control" value="<?php echo ($info["weixin"]); ?>" name="weixin" >
                              </div>
                          </div>
                          <div class="form-group">
                              <label for="inputEmail3" class="col-sm-2 control-label">地址</label>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control" value="<?php echo ($info["address"]); ?>" name="address" >
                              </div>
                          </div>
                          <div class="form-group">
                              <label for="inputEmail3" class="col-sm-2 control-label">身份证</label>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control" value="<?php echo ($info["idcard"]); ?>" name="idcard" >
                              </div>
                          </div>
                      </div>
                      <div class="form-group">
                          <label for="inputEmail3" class="col-sm-2 control-label">区域</label>
                          <div class="col-sm-2">
                              <input type="text" class="form-control" value="<?php echo ($info["area"]); ?>" name="area" >
                          </div>
                      </div>
                      <div class="form-group">
                          <label for="inputEmail3" class="col-sm-2 control-label">损失</label>
                          <div class="col-sm-2">
                              <input type="text" class="form-control" value="<?php echo ($info["lost"]); ?>" name="lost" >
                          </div>
                      </div>
<div id="qiye" style="display: none">
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">企业名称</label>
        <div class="col-sm-2">
            <input type="text" class="form-control" value="<?php echo ($info["qyname"]); ?>" name="qyname" >
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">营业执照</label>
        <div class="col-sm-2">
            <input type="text" class="form-control" value="<?php echo ($info["businessid"]); ?>" name="businessid" >
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">电话</label>
        <div class="col-sm-2">
            <input type="text" class="form-control" value="<?php echo ($info["tel"]); ?>" name="tel" >
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">地址</label>
        <div class="col-sm-2">
            <input type="text" class="form-control" value="<?php echo ($info["address"]); ?>" name="qyaddress" >
        </div>
    </div>
</div>
                      <div id="shangpinbtn" style="display: none">
                          <div class="form-group">
                              <label for="inputEmail3" class="col-sm-2 control-label">店铺名称</label>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control" value="<?php echo ($info["taobao"]); ?>" name="taobao" >
                              </div>
                          </div>
                          <div class="form-group">
                              <label for="inputEmail3" class="col-sm-2 control-label">商品价格</label>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control" value="<?php echo ($info["price"]); ?>" name="price" >
                              </div>
                          </div>
                      </div>
                    <div class="form-group">
                      <label for="text" class="col-sm-2 control-label">被黑时间</label>
                      <div class="col-sm-8">
                            <div class="input-prepend input-group">
                                    <span class="add-on input-group-addon">
                                            <i class="glyphicon glyphicon-calendar fa fa-calendar">
                                            </i>
                                    </span>
                                <input type="text" class="form-control" id ="publish_time" name="heiid_time"  value="<?php echo (date("Y-m-d",$info["heiid_time"])); ?>">
                            </div>                        
                      </div>
                    </div>
                      <input type="hidden" id="action" class="form-control" value="<?php echo ($info["action"]); ?>" name="action" >

                    <div class="form-group">
	                    <label class="control-label col-sm-2">被黑经历</label>
	                    <div class="col-sm-8">
				        <textarea class="span12 ckeditor" id="post_content" name="content" title="">
				            <?php echo ($info["content"]); ?>
				        </textarea>
	                    </div>
                    </div>
                    <div class="form-group">
                    	<label class="control-label col-sm-2">              
                    		<input type="hidden" name="act" value="<?php echo ($act); ?>">
	                  	 	<input type="hidden" name="id" value="<?php echo ($info["id"]); ?>"></label>
                    	 <div class="col-sm-8">
                    	 	<button type="submit" class="btn btn-default">重置</button>
                    	  	<button type="submit" class="btn btn-info pull-right">提交</button>
                    	 </div>
                    </div>
                  </div>
                  <div class="box-footer row">

                  </div>
                </form>
              </div>

          </div>
	   </div>
	</section>
</div>

<script type="text/javascript">
    $('#gerenbtn').on('click',function(){

        if($(this).hasClass('btn-info')){
            $(this).removeClass('btn-info');
            $('#geren').hide();
        }else{
            $('#geren').show();
            $('#types').val(0);
            $('#gerenbtn').addClass('btn-info');
        }

    });
    $('#qiyebtn').on('click',function(){

        if($(this).hasClass('btn-info')){
            $(this).removeClass('btn-info');
            $('#qiye').hide();
        }else{
            $('#qiye').show();
            $('#types').val(1);
            $('#qiyebtn').addClass('btn-info');
        }

    });

    $('#chengxin').on('click',function(){

        if($(this).hasClass('btn-info')){
            $(this).removeClass('btn-info');
           $('#action').val(0);
        }else{
            $('#action').val(0);
            $('#chengxin').addClass('btn-info');
        }

    });

    $('#zhaopin').on('click',function(){

        if($(this).hasClass('btn-info')){
            $(this).removeClass('btn-info');
            $('#action').val(0);
        }else{
            $('#action').val(1);
            $('#zhaopin').addClass('btn-info');
        }

    });

    $('#gouwu').on('click',function(){

        if($(this).hasClass('btn-info')){
            $(this).removeClass('btn-info');
            $('#action').val(0);
            $('#shangpinbtn').hide();
        }else{
            $('#action').val(2);
            $('#shangpinbtn').show();
            $('#gouwu').addClass('btn-info');
        }

    });

    $('#hetong').on('click',function(){

        if($(this).hasClass('btn-info')){
            $(this).removeClass('btn-info');
            $('#action').val(0);
        }else{
            $('#action').val(3);
            $('#hetong').addClass('btn-info');
        }

    });
    $('#jiaoyou').on('click',function(){

        if($(this).hasClass('btn-info')){
            $(this).removeClass('btn-info');
            $('#action').val(0);
        }else{
            $('#action').val(4);
            $('#jiaoyou').addClass('btn-info');
        }

    });
    $('#shangpin').on('click',function(){

        if($(this).hasClass('btn-info')){
            $(this).removeClass('btn-info');
            $('#action').val(0);
        }else{
            $('#action').val(5);
            $('#shangpin').addClass('btn-info');
        }

    });
    var editor;
    $(function () {
        //具体参数配置在  editor_config.js 中
        var options = {
            zIndex: 999,
            initialFrameWidth: "100%", //初化宽度
            initialFrameHeight: 400, //初化高度
            focus: false, //初始化时，是否让编辑器获得焦点true或false
            maximumWords: 99999, removeFormatAttributes: 'class,style,lang,width,height,align,hspace,valign',//允许的最大字符数 'fullscreen',
            pasteplain: true, autoHeightEnabled: true,
            autotypeset: {
                mergeEmptyline: true,        //合并空行
                removeClass: true,           //去掉冗余的class
                removeEmptyline: false,      //去掉空行
                textAlign: "left",           //段落的排版方式，可以是 left,right,center,justify 去掉这个属性表示不执行排版
                imageBlockLine: 'center',    //图片的浮动方式，独占一行剧中,左右浮动，默认: center,left,right,none 去掉这个属性表示不执行排版
                pasteFilter: false,          //根据规则过滤没事粘贴进来的内容
                clearFontSize: false,        //去掉所有的内嵌字号，使用编辑器默认的字号
                clearFontFamily: false,      //去掉所有的内嵌字体，使用编辑器默认的字体
                removeEmptyNode: false,      //去掉空节点
                                             //可以去掉的标签
                removeTagNames: {"font": 1},
                indent: false,               // 行首缩进
                indentValue: '0em'           //行首缩进的大小
            },
        	toolbars: [
                   ['fullscreen', 'source', '|', 'undo', 'redo',
                       '|', 'bold', 'italic', 'underline', 'fontborder',
                       'strikethrough', 'superscript', 'subscript',
                       'removeformat', 'formatmatch', 'autotypeset',
                       'blockquote', 'pasteplain', '|', 'forecolor',
                       'backcolor', 'insertorderedlist',
                       'insertunorderedlist', 'selectall', 'cleardoc', '|',
                       'rowspacingtop', 'rowspacingbottom', 'lineheight', '|',
                       'customstyle', 'paragraph', 'fontfamily', 'fontsize',
                       '|', 'directionalityltr', 'directionalityrtl',
                       'indent', '|', 'justifyleft', 'justifycenter',
                       'justifyright', 'justifyjustify', '|', 'touppercase',
                       'tolowercase', '|', 'link', 'unlink', 'anchor', '|',
                       'imagenone', 'imageleft', 'imageright', 'imagecenter',
                       '|', 'insertimage', 'emotion', 'insertvideo',
                       'attachment', 'map', 'gmap', 'insertframe',
                       'insertcode', 'webapp', 'pagebreak', 'template',
                       'background', '|', 'horizontal', 'date', 'time',
                       'spechars', 'wordimage', '|','inserttable', 'deletetable',
                       'insertparagraphbeforetable', 'insertrow', 'deleterow',
                       'insertcol', 'deletecol', 'mergecells', 'mergeright',
                       'mergedown', 'splittocells', 'splittorows',
                       'splittocols', '|', 'print', 'preview', 'searchreplace']
               ]
        };
        editor = new UE.ui.Editor(options);
        editor.render("post_content");

        $(".submit").click(
                function () {
                    if(editor.hasContents()){
                        editor.sync();
                    }

                    var div = $("#success");
                    if($("#post_title").val() == '' || $("#post_title").val() == '未命名' || $("#post_content").val() == '') {
                        div.fadeIn().html("标题或内容不能为空");
                        layer.alert('标题或内容不能为空', {icon: 2});  //alert('标题或内容不能为空');
                        div.fadeOut(5000);
                        return false;
                    }

                    var arr = [];

                    $("input[name='cats[]']:checked").each(function (i, o){
                          arr.push($(o).val());
                    });

                    if (arr.length == 0)
                    {
                        div.fadeIn().html("分类信息不能为空<br />请选择分类");
                        layer.alert('分类信息不能为空,请选择分类', {icon: 2});  // alert("分类信息不能为空,请选择分类");
                        div.fadeOut(5000);
                        return false;
                    }

                    var url = '<?php echo U('Admin/Article/aticleHandle');?>';
                    var formObj = $("#add_post");
                    formObj.ajaxSubmit({
                        url: url,
                        type: "POST",
                        dataType: "json",
                        success: function (data) {
                            if (data.status == 1) {
                                $(".submit").hide();
                                div.fadeIn().html(data.info);
                                div.fadeOut(5000);
                            } else {
                                div.fadeIn().html(data.info);
                                div.fadeOut(5000);
                            }
                            if (data.url && data.url != '') {
                                setTimeout(function () {
                                    top.window.location.href = data.url;
                                }, 2000);
                            }
                            if (data.url == '') {
                                setTimeout(function () {
                                   top.window.location.reload();
                                }, 2000);
                            }

                        }
                    });
               });
    });  
    
    
	$('#publish_time').daterangepicker({
		format:"YYYY-MM-DD",
		singleDatePicker: true,
		showDropdowns: true,
		minDate:'2016-01-01',
		maxDate:'2030-01-01',
		startDate:'<?php echo (date("Y-m-d",$info["publish_time"])); ?>',
	    locale : {
            applyLabel : '确定',
            cancelLabel : '取消',
            fromLabel : '起始时间',
            toLabel : '结束时间',
            customRangeLabel : '自定义',
            daysOfWeek : [ '日', '一', '二', '三', '四', '五', '六' ],
            monthNames : [ '一月', '二月', '三月', '四月', '五月', '六月','七月', '八月', '九月', '十月', '十一月', '十二月' ],
            firstDay : 1
        }
	});
</script>
</body>
</html>