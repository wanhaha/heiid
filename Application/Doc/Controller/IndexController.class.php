<?php
/**
 * tpshop
 * ============================================================================
 * * 版权所有 2015-2027 深圳搜豹网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.tp-shop.cn
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和使用 .
 * 不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: IT宇宙人 2015-08-10 $
 */ 
namespace Doc\Controller;
use Think\Controller;
class IndexController extends Controller {
    
    public $manual;
    /*
     * 初始化操作
     */
    public function _initialize() {
        $this->manual = array(
            'phper'     =>array('title'=>'php开发者手册','cat_id'=>'10,11,14,15,16'),
            'android'   =>array('title'=>'android开发者手册','cat_id'=>'14,15,16'), 
            'ios'       =>array('title'=>'IOS开发者手册','cat_id'=>'14,15,16'), 
            'api'      =>array('title'=>'手机api接口手册','cat_id'=>'22,23,24,25,26,27,15,16'), 
            'user'      =>array('title'=>'用户使用手册','cat_id'=>'13,15,16,51,54'), 
            );                 
         $this->assign('manual',$this->manual); // 开发者手册
         $this->public_assign();
    }   
    
    public function public_assign()
    {
        
       $tpshop_config = array();
       $tp_config = M('config')->cache(true,TPSHOP_CACHE_TIME)->select();       
       foreach($tp_config as $k => $v)
       {
       	  if($v['name'] == 'hot_keywords'){
       	  	 $tpshop_config['hot_keywords'] = explode('|', $v['value']);
       	  }       	  
          $tpshop_config[$v['inc_type'].'_'.$v['name']] = $v['value'];
       }                                         
       $this->assign('tpshop_config', $tpshop_config);          
    }          
    
    public function index(){             
                
        //$sourch = mysql_escape_string(trim($_POST["sourch"]));
        $sourch = trim($_POST["sourch"]);
        $developer = I("developer","phper"); // 开发者  (phper  android ios user)

                
        // 用户关键词搜索
        if(!empty($sourch))
        {
            $article_id_arr = M('Article')->where("title like '%$sourch%' or content like '%$sourch%'")->getField('article_id',true);
            $this->assign('sourch',$sourch);
            $this->assign('article_id_arr',$article_id_arr);
        }
        
        $articleCat = M('ArticleCat')->where("cat_id in ({$this->manual[$developer]['cat_id']})")->order("field(cat_id,{$this->manual[$developer]['cat_id']});")->select();
        $article = M('Article')->select();        
        
        $this->assign('developer',$developer); // 当前的开发者        
        $this->assign('articleCat',$articleCat);
        $this->assign('article',$article);
        
        $this->display();
    }    
    public function article(){               
        $id = I('id');    
        $developer = I("developer","phper"); // 开发者  (phper  android ios user)
        $this->assign('developer',$developer); // 当前的开发者
        $article = M('Article')->where("article_id = ".$id)->find();

        if($article && $article['is_open'] == 0)
            exit ('文章暂时被管理员关闭');
        
        if(empty($article))
        {            
            $article['content'] = "<img src='http://www.tp-shop.cn/Template/pc/tpshop/static/images/help.jpg' />";
        }
        
        if($id == 32){
            $article['title'] = "TPshop表结构";
            $article['content'] = $this->tableComment();
        }        
        $this->assign('article',$article);        
        $this->display();
    }    
    public function xuyan(){               
        $this->display();    
    }
    
    
    
    
    /**
     * 手册列表
     */
    public function manual_list(){      
        foreach($this->manual as $key => $val)
        {
            $cat_id_arr[] = $val['cat_id']; 
        }
        $cat_id_str = implode(',', $cat_id_arr);
        $articleList = M('Article')->where("cat_id != 35")->select();
        $this->assign('articleList',$articleList);        
        $this->assign('manual_list',$manual_list); // 开发者手册列表
        $this->display();    
    }    
    /**
     * 手册
     */
    public function manual(){ 
        $id = I('id');        
        $article = M('Article')->where("article_id = ".$id)->find();
        if($id == 32){
            $article['title'] = "TPshop表结构";
            $article['content'] = $this->tableComment();
        }
  
        $this->assign('article',$article);               
        $this->display();    
    }
    
    
    // 动态显示表结构
    public function tableComment()
    {
        $model = new \Think\Model(); // 实例化一个model对象 没有对应任何数据表
        $tables = $model->query("show tables");
        
        foreach($tables as $key => $val)
        {                                    
            
           // echo "'{$val['tables_in_tpshop']}'=>'表',".PHP_EOL;
           // continue;
            $str .="<br/><p><strong>{$val['tables_in_tpshop']}</strong> -- ".C($val['tables_in_tpshop'])."</p><br/>
            <table cellspacing='0' cellpadding='0' border='1' id='{$val['tables_in_tpshop']}'>
              <tbody>
                <tr>
                  <td width='189' valign='top'><strong>字段名</strong></td>
                  <td width='189' valign='top'><strong>字段类型</strong></td>      
                  <td width='189' valign='top'><strong>默认值</strong></td>            
                  <td width='189' valign='top'><strong>描述</strong></td>                  
                </tr>";
                    $fields = $model->query("show full fields from `tpshop`.`{$val['tables_in_tpshop']}`");
                    foreach($fields as $k => $v)
                    {
                     $str .= "<tr>
                          <td width='189' valign='top'>{$v['field']}</td>
                          <td width='189' valign='top'>{$v['type']}</td>
                          <td width='189' valign='top'>{$v['default']}</td>
                          <td width='189' valign='top'>{$v['comment']}</td>                  
                        </tr>";
                    }
              $str .="</tbody>
            </table>";           
        }
        return $str; 
    }
}