<?php
return array(
	//'配置项'=>'配置值'           
        
    //'DB_SQL_BUILD_CACHE' => true, // sql 缓存
    //'DB_SQL_BUILD_QUEUE' => 'File', // 文件缓存
   // 'DB_SQL_BUILD_LENGTH' => 200, // SQL缓存的队列长度
    //'DATA_CACHE_TIME' => 60,
   // 'DATA_CACHE_TYPE' =>  'File', 
    'LOAD_EXT_CONFIG' => 'html',	// 加载其他自定义配置文件 html.php
    'URL_HTML_SUFFIX'       =>  'html',
    'HTML_CACHE_ON'     =>    true, // 开启静态缓存   
    'HTML_CACHE_TIME'   =>    60,   // 全局静态缓存有效期（秒）
    'HTML_FILE_SUFFIX'  =>    '.html', // 设置静态缓存文件后缀
    'HTML_CACHE_RULES'  =>     array(  // 定义静态缓存规则
         // 定义格式1 数组方式
         //'静态地址'    =>     array('静态规则', '有效期', '附加规则'),
        'Index:index'=>array('{:module}_{:controller}_{:action}',TPSHOP_CACHE_TIME),  // 首页
        'Index:download'=>array('{:module}_{:controller}_{:action}',TPSHOP_CACHE_TIME),  // 下载页 
        'Index:product'=>array('{:module}_{:controller}_{:action}',TPSHOP_CACHE_TIME),  // 产品介绍页 
        'Index:product'=>array('{:module}_{:controller}_{:action}',TPSHOP_CACHE_TIME),  // 产品介绍页
        'Article:detail'=>array('{:module}_{:controller}_{:action}_{article_id}',TPSHOP_CACHE_TIME),  // 文章详情
        'Article:detail_xq'=>array('{:module}_{:controller}_{:action}_{article_id}',TPSHOP_CACHE_TIME),  // 相亲文章详情
        'Article:articleList'=>array('{:module}_{:controller}_{:action}_{cat_id}_{q}_{p}',TPSHOP_CACHE_TIME),  // 文章列表
    ), 
        
);
 