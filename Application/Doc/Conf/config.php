<?php
return array(
	//'配置项'=>'配置值'           
        
    //'DB_SQL_BUILD_CACHE' => true, // sql 缓存
    //'DB_SQL_BUILD_QUEUE' => 'File', // 文件缓存
   // 'DB_SQL_BUILD_LENGTH' => 200, // SQL缓存的队列长度
    //'DATA_CACHE_TIME' => 60,
   // 'DATA_CACHE_TYPE' =>  'File', 
    'LOAD_EXT_CONFIG' => 'table,html',	// 加载其他自定义配置文件 html.php
    'URL_HTML_SUFFIX'       =>  'html',
    'HTML_CACHE_ON'     =>    true, // 开启静态缓存   
    'HTML_CACHE_TIME'   =>    60,   // 全局静态缓存有效期（秒）
    'HTML_FILE_SUFFIX'  =>    '.html', // 设置静态缓存文件后缀
    'HTML_CACHE_RULES'  =>     array(  // 定义静态缓存规则
    
        'Index:index'=>array('{:module}_{:controller}_{:action}_{developer}',TPSHOP_CACHE_TIME),  // 列表页静态缓存 3秒钟
        'Index:article'=>array('{:module}_{:controller}_{:action}_{id}_{developer}',TPSHOP_CACHE_TIME),  // 列表页静态缓存 3秒钟
       
        //http://www.tpshop.com/Doc/Index/article/id/168/developer/phper.html
    ), 
    
    //默认错误跳转对应的模板文件
    'TMPL_ACTION_ERROR' => 'Public:dispatch_jump',
    //默认成功跳转对应的模板文件
    'TMPL_ACTION_SUCCESS' => 'Public:dispatch_jump',
        
);