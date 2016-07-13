<?php
/**
 * tpshop
 * ============================================================================
 * 版权所有 2015-2027 深圳搜豹网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.tp-shop.cn
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和使用 .
 * 不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * Author: 当燃      
 * Date: 2015-09-09
 */
namespace Admin\Controller;
use Think\AjaxPage;
use Think\Model;
use Think\Page;

class PiyaoController extends BaseController {


    
    public function index(){
        $Article =  M('piyao');
        $res = $list = array();
        $p = empty($_REQUEST['p']) ? 1 : $_REQUEST['p'];
        $size = empty($_REQUEST['size']) ? 20 : $_REQUEST['size'];
        
        $where = " 1 = 1 ";
        $keywords = trim(I('keywords'));
        $keywords && $where.=" and title like '%$keywords%' ";
        $list = $Article->where($where)->order('id desc')->page("$p,$size")->select();
        $count = $Article->where($where)->count();// 查询满足要求的总记录数
        $pager = new \Think\Page($count,$size);// 实例化分页类 传入总记录数和每页显示的记录数
        $page = $pager->show();//分页显示输出

        $this->assign('list',$list);// 赋值数据集
        $this->assign('page',$page);// 赋值分页输出
        $this->display('index');
    }
    
    public function article(){

 		$act = I('GET.act','add');
        $info = array();
        $info['creat_time'] = time()+3600*24;
        if(I('GET.id')){
           $article_id = I('GET.id');
           $info = D('piyao')->where('id='.$article_id)->find();
        }

        $this->assign('act',$act);
        $this->assign('info',$info);
        $this->initEditor();
        $this->display();
    }

    //辟谣评论

    public function coment(){
        $model = M('pinglun');
        $count = $model->where(array('status'=>0))->count();
        $Page  = new Page($count,15);
        $show = $Page->show();
        $username = I('get.username');
        $username = I('get.content');
        $where = '';
        $sql = "SELECT COUNT(1) FROM __PREFIX__pinglun WHERE ";
        $comment_list = $model->where(array('status'=>0))->order('add_time DESC')->limit($Page->firstRow.','.$Page->listRows)->select();
        if(!empty($comment_list))
        {
            $goods_id_arr = get_arr_column($comment_list, 'goods_id');
            $goods_list = M('piyao')->where("id in (".  implode(',', $goods_id_arr).")")->getField("id,title");
        }

        $this->assign('goods_list',$goods_list);
        $this->assign('comment_list',$comment_list);
        $this->assign('page',$show);// 赋值分页输出
        $this->display();
    }

    
    /**
     * 初始化编辑器链接
     * @param $post_id post_id
     */
    private function initEditor()
    {
        $this->assign("URL_upload", U('Admin/Ueditor/imageUp',array('savepath'=>'article')));
        $this->assign("URL_fileUp", U('Admin/Ueditor/fileUp',array('savepath'=>'article')));
        $this->assign("URL_scrawlUp", U('Admin/Ueditor/scrawlUp',array('savepath'=>'article')));
        $this->assign("URL_getRemoteImage", U('Admin/Ueditor/getRemoteImage',array('savepath'=>'article')));
        $this->assign("URL_imageManager", U('Admin/Ueditor/imageManager',array('savepath'=>'article')));
        $this->assign("URL_imageUp", U('Admin/Ueditor/imageUp',array('savepath'=>'article')));
        $this->assign("URL_getMovie", U('Admin/Ueditor/getMovie',array('savepath'=>'article')));
        $this->assign("URL_Home", "");
    }
    

    
    public function piyaoHandle(){
        $data = I('post.');
        $data['creat_time'] = strtotime($data['creat_time']);
        //$data['content'] = htmlspecialchars(stripslashes($_POST['content']));
        if($data['act'] == 'add'){
                $data['click'] = mt_rand(1000,1300);
        	$data['add_time'] = time();

            $r = D('piyao')->add($data);
        }
        
        if($data['act'] == 'edit'){
            $r = D('piyao')->where('id='.$data['article_id'])->save($data);
        }
        
        if($data['act'] == 'del'){
        	$r = D('piyao')->where('id='.$data['article_id'])->delete();
        	if($r) exit(json_encode(1));       	
        }
        $referurl = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : U('Admin/Piyao/index');
        if($r){
            $this->success("操作成功",$referurl);
        }else{
            $this->error("操作失败",$referurl);
        }
    }
    

    

}