<?php
return array(
    'HTML_CACHE_ON'     =>    true, // 开启静态缓存
    'HTML_CACHE_TIME'   =>    60,   // 全局静态缓存有效期（秒）
    'HTML_FILE_SUFFIX'  =>    '.html', // 设置静态缓存文件后缀
    //'HTML_CACHE_RULES'  =>     array(  // 定义静态缓存规则
         // 定义格式1 数组方式
         //'静态地址'    =>     array('静态规则', '有效期', '附加规则'), 
      //  'index:index'=>array('{:module}_{:controller}_{:action}',2),  // 静态缓存 5秒钟       
   // ), 
    
    'VIEW_PATH'       =>'./Template/pc/', // 改变某个模块的模板文件目录        
    'DEFAULT_THEME'    =>'doc', // 模板名称              
    'TMPL_PARSE_STRING'  =>array(
//                '__PUBLIC__' => '/Common', // 更改默认的/Public 替换规则
            '__STATIC__'     => '/Template/pc/doc/static', // 增加新的image  css js  访问路径  后面给 php 改了
       ),  
    );
 
?>
