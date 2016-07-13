
/* Alter table in target */
ALTER TABLE `__PREFIX__config` 
	CHANGE `name` `name` varchar(64)  COLLATE utf8_general_ci NULL COMMENT '���õ�key����' after `id` , 
	CHANGE `inc_type` `inc_type` varchar(64)  COLLATE utf8_general_ci NULL COMMENT '���÷���' after `value` ; 

/* Alter table in target */
ALTER TABLE `__PREFIX__goods` 
	ADD COLUMN `extend_cat_id` smallint(2)   NULL DEFAULT 0 COMMENT '��չ����id' after `cat_id` , 
	CHANGE `goods_sn` `goods_sn` varchar(60)  COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '��Ʒ���' after `extend_cat_id` , 
	CHANGE `goods_name` `goods_name` varchar(120)  COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '��Ʒ����' after `goods_sn` , 
	CHANGE `click_count` `click_count` int(10) unsigned   NOT NULL DEFAULT 0 COMMENT '�����' after `goods_name` , 
	CHANGE `brand_id` `brand_id` smallint(5) unsigned   NOT NULL DEFAULT 0 COMMENT 'Ʒ��id' after `click_count` , 
	CHANGE `store_count` `store_count` smallint(5) unsigned   NOT NULL DEFAULT 10 COMMENT '�������' after `brand_id` , 
	CHANGE `comment_count` `comment_count` smallint(5)   NULL DEFAULT 0 COMMENT '��Ʒ������' after `store_count` , 
	CHANGE `weight` `weight` int(11) unsigned   NOT NULL DEFAULT 0 COMMENT '��Ʒ������Ϊ��λ' after `comment_count` , 
	CHANGE `market_price` `market_price` decimal(10,2) unsigned   NOT NULL DEFAULT 0.00 COMMENT '�г���' after `weight` , 
	CHANGE `shop_price` `shop_price` decimal(10,2) unsigned   NOT NULL DEFAULT 0.00 COMMENT '�����' after `market_price` , 
	CHANGE `cost_price` `cost_price` decimal(10,2)   NULL DEFAULT 0.00 COMMENT '��Ʒ�ɱ���' after `shop_price` , 
	CHANGE `keywords` `keywords` varchar(255)  COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '��Ʒ�ؼ���' after `cost_price` , 
	CHANGE `goods_remark` `goods_remark` varchar(255)  COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '��Ʒ������' after `keywords` , 
	CHANGE `goods_content` `goods_content` text  COLLATE utf8_general_ci NULL COMMENT '��Ʒ��ϸ����' after `goods_remark` , 
	CHANGE `original_img` `original_img` varchar(255)  COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '��Ʒ�ϴ�ԭʼͼ' after `goods_content` , 
	CHANGE `is_real` `is_real` tinyint(3) unsigned   NOT NULL DEFAULT 1 COMMENT '�Ƿ�Ϊʵ��' after `original_img` , 
	CHANGE `is_on_sale` `is_on_sale` tinyint(1) unsigned   NOT NULL DEFAULT 1 COMMENT '�Ƿ��ϼ�' after `is_real` , 
	CHANGE `is_free_shipping` `is_free_shipping` tinyint(1) unsigned   NOT NULL DEFAULT 0 COMMENT '�Ƿ����0��1��' after `is_on_sale` , 
	CHANGE `on_time` `on_time` int(10) unsigned   NOT NULL DEFAULT 0 COMMENT '��Ʒ�ϼ�ʱ��' after `is_free_shipping` , 
	CHANGE `sort` `sort` smallint(4) unsigned   NOT NULL DEFAULT 50 COMMENT '��Ʒ����' after `on_time` , 
	CHANGE `is_recommend` `is_recommend` tinyint(1) unsigned   NOT NULL DEFAULT 0 COMMENT '�Ƿ��Ƽ�' after `sort` , 
	CHANGE `is_new` `is_new` tinyint(1) unsigned   NOT NULL DEFAULT 0 COMMENT '�Ƿ���Ʒ' after `is_recommend` , 
	CHANGE `is_hot` `is_hot` tinyint(1)   NULL DEFAULT 0 COMMENT '�Ƿ�����' after `is_new` , 
	CHANGE `last_update` `last_update` int(10) unsigned   NOT NULL DEFAULT 0 COMMENT '������ʱ��' after `is_hot` , 
	CHANGE `goods_type` `goods_type` smallint(5) unsigned   NOT NULL DEFAULT 0 COMMENT '��Ʒ��������id��ȡֵ��goods_type��cat_id' after `last_update` , 
	CHANGE `spec_type` `spec_type` smallint(5)   NULL DEFAULT 0 COMMENT '��Ʒ������ͣ�ȡֵ��goods_type��cat_id' after `goods_type` , 
	CHANGE `give_integral` `give_integral` mediumint(8)   NULL DEFAULT 0 COMMENT '������Ʒ���ͻ���' after `spec_type` , 
	CHANGE `sales_sum` `sales_sum` int(11)   NULL DEFAULT 0 COMMENT '��Ʒ����' after `give_integral` , 
	CHANGE `prom_type` `prom_type` tinyint(1)   NULL DEFAULT 0 COMMENT '0 ��ͨ����,1 ��ʱ����, 2 �Ź� , 3 �����Ż�' after `sales_sum` , 
	CHANGE `prom_id` `prom_id` int(11)   NULL DEFAULT 0 COMMENT '�Żݻid' after `prom_type` , 
	ADD COLUMN `commission` decimal(10,2)   NULL DEFAULT 0.00 COMMENT 'Ӷ�����ڷ����ֳ�' after `prom_id` ; 


/* Alter table in target */
ALTER TABLE `__PREFIX__goods_category` 
	ADD COLUMN `commission_rate` tinyint(1)   NULL DEFAULT 0 COMMENT '��Ӷ����' after `cat_group` ; 


/* Alter table in target */
ALTER TABLE `__PREFIX__order` 
	CHANGE `coupon_price` `coupon_price` decimal(10,2)   NULL DEFAULT 0.00 COMMENT '�Ż�ȯ�ֿ�' after `user_money` , 
	ADD COLUMN `shipping_time` int(11)   NULL DEFAULT 0 COMMENT '����·���ʱ��' after `add_time` , 
	CHANGE `confirm_time` `confirm_time` int(10)   NULL DEFAULT 0 COMMENT '�ջ�ȷ��ʱ��' after `shipping_time` , 
	CHANGE `pay_time` `pay_time` int(10) unsigned   NOT NULL DEFAULT 0 COMMENT '֧��ʱ��' after `confirm_time` , 
	CHANGE `order_prom_id` `order_prom_id` smallint(6)   NOT NULL DEFAULT 0 COMMENT '�id' after `pay_time` , 
	CHANGE `order_prom_amount` `order_prom_amount` decimal(10,2)   NOT NULL DEFAULT 0.00 COMMENT '��Żݽ��' after `order_prom_id` , 
	CHANGE `discount` `discount` decimal(10,2)   NOT NULL DEFAULT 0.00 COMMENT '�۸����' after `order_prom_amount` , 
	CHANGE `user_note` `user_note` varchar(255)  COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '�û���ע' after `discount` , 
	CHANGE `admin_note` `admin_note` varchar(255)  COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '����Ա��ע' after `user_note` , 
	CHANGE `parent_sn` `parent_sn` varchar(100)  COLLATE utf8_general_ci NULL COMMENT '��������' after `admin_note` , 
	ADD COLUMN `is_distribut` tinyint(1)   NULL DEFAULT 0 COMMENT '�Ƿ��ѷֳ�0δ�ֳ�1�ѷֳ�' after `parent_sn` ; 

/* Alter table in target */
ALTER TABLE `__PREFIX__order_action` 
	CHANGE `action_user` `action_user` int(11)   NULL DEFAULT 0 COMMENT '������ 0 Ϊ����Ա����' after `order_id` ; 

/* Create table in target */
CREATE TABLE `__PREFIX__rebate_log`(
	`id` int(11) NOT NULL  auto_increment COMMENT '�ֳɼ�¼��' , 
	`user_id` int(11) NULL  DEFAULT 0 COMMENT '��Ӷ�û�' , 
	`buy_user_id` int(11) NULL  DEFAULT 0 COMMENT '������id' , 
	`nickname` varchar(32) COLLATE utf8_bin NULL  DEFAULT '' COMMENT '����������' , 
	`order_sn` varchar(32) COLLATE utf8_bin NULL  DEFAULT '' COMMENT '�������' , 
	`order_id` int(11) NULL  DEFAULT 0 COMMENT '����id' , 
	`goods_price` decimal(10,2) NULL  DEFAULT 0.00 COMMENT '������Ʒ�ܶ�' , 
	`money` decimal(10,2) NULL  DEFAULT 0.00 COMMENT '��Ӷ���' , 
	`level` tinyint(1) NULL  DEFAULT 1 COMMENT '��Ӷ�û�����' , 
	`create_time` int(11) NULL  DEFAULT 0 COMMENT '�ֳɼ�¼����ʱ��' , 
	`status` tinyint(1) NULL  DEFAULT 0 COMMENT '0δ����,1�Ѹ���, 2�ȴ��ֳ�(���ջ�) 3�ѷֳ�, 4��ȡ��' , 
	`confirm_time` int(11) NULL  DEFAULT 0 COMMENT 'ȷ���ֳɻ���ȡ��ʱ��' , 
	`remark` varchar(1024) COLLATE utf8_bin NULL  DEFAULT '' COMMENT '�����ȡ��, ��ȡ����ע' , 
	PRIMARY KEY (`id`) 
)  DEFAULT CHARSET='utf8' COLLATE='utf8_general_ci';


/* Create table in target */
CREATE TABLE `__PREFIX__remittance`(
	`id` int(11) NOT NULL  auto_increment COMMENT '�����û�ת�˼�¼��' , 
	`user_id` int(11) NULL  DEFAULT 0 COMMENT '�����û�id' , 
	`bank_name` varchar(32) COLLATE utf8_bin NULL  DEFAULT '' COMMENT '�տ���������' , 
	`account_bank` varchar(32) COLLATE utf8_bin NULL  DEFAULT '' COMMENT '�����˺�' , 
	`account_name` varchar(32) COLLATE utf8_bin NULL  DEFAULT '' COMMENT '����������' , 
	`money` decimal(10,2) NULL  DEFAULT 0.00 COMMENT '�����' , 
	`status` tinyint(1) NULL  COMMENT '0���ʧ�� 1���ɹ�' , 
	`create_time` int(11) NULL  DEFAULT 0 COMMENT '���ʱ��' , 
	`remark` varchar(1024) COLLATE utf8_bin NULL  DEFAULT '' COMMENT '��ע' , 
	`admin_id` int(11) NULL  DEFAULT 0 COMMENT '����Աid' , 
	`withdrawals_id` int(11) NULL  DEFAULT 0 COMMENT '���������id' , 
	PRIMARY KEY (`id`) 
)  DEFAULT CHARSET='utf8' COLLATE='utf8_general_ci';

/* Alter table in target */
ALTER TABLE `__PREFIX__users` 
	ADD COLUMN `distribut_money` decimal(10,2)   NULL DEFAULT 0.00 COMMENT '�ۻ���Ӷ���' after `frozen_money` , 
	CHANGE `pay_points` `pay_points` int(10) unsigned   NOT NULL DEFAULT 0 COMMENT '���ѻ���' after `distribut_money` , 
	CHANGE `address_id` `address_id` mediumint(8) unsigned   NOT NULL DEFAULT 0 COMMENT 'Ĭ���ջ���ַ' after `pay_points` , 
	CHANGE `reg_time` `reg_time` int(10) unsigned   NOT NULL DEFAULT 0 COMMENT 'ע��ʱ��' after `address_id` , 
	CHANGE `last_login` `last_login` int(11) unsigned   NOT NULL DEFAULT 0 COMMENT '����¼ʱ��' after `reg_time` , 
	CHANGE `last_ip` `last_ip` varchar(15)  COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '����¼ip' after `last_login` , 
	CHANGE `qq` `qq` varchar(20)  COLLATE utf8_general_ci NOT NULL COMMENT 'QQ' after `last_ip` , 
	CHANGE `mobile` `mobile` varchar(20)  COLLATE utf8_general_ci NOT NULL COMMENT '�ֻ�����' after `qq` , 
	CHANGE `mobile_validated` `mobile_validated` tinyint(3) unsigned   NOT NULL DEFAULT 0 COMMENT '�Ƿ���֤�ֻ�' after `mobile` , 
	CHANGE `oauth` `oauth` varchar(10)  COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '��������Դ wx weibo alipay' after `mobile_validated` , 
	CHANGE `openid` `openid` varchar(100)  COLLATE utf8_general_ci NULL COMMENT '������Ψһ��ʾ' after `oauth` , 
	CHANGE `head_pic` `head_pic` varchar(255)  COLLATE utf8_general_ci NULL COMMENT 'ͷ��' after `openid` , 
	CHANGE `province` `province` int(6)   NULL DEFAULT 0 COMMENT 'ʡ��' after `head_pic` , 
	CHANGE `city` `city` int(6)   NULL DEFAULT 0 COMMENT '����' after `province` , 
	CHANGE `district` `district` int(6)   NULL DEFAULT 0 COMMENT '��' after `city` , 
	CHANGE `email_validated` `email_validated` tinyint(1) unsigned   NOT NULL DEFAULT 0 COMMENT '�Ƿ���֤��������' after `district` , 
	CHANGE `nickname` `nickname` varchar(50)  COLLATE utf8_general_ci NULL COMMENT '�����������ǳ�' after `email_validated` , 
	CHANGE `level` `level` tinyint(1)   NULL DEFAULT 1 COMMENT '��Ա�ȼ�' after `nickname` , 
	CHANGE `discount` `discount` decimal(10,2)   NULL DEFAULT 1.00 COMMENT '��Ա�ۿۣ�Ĭ��1������' after `level` , 
	CHANGE `total_amount` `total_amount` decimal(10,2)   NULL DEFAULT 0.00 COMMENT '�����ۼƶ��' after `discount` , 
	CHANGE `is_lock` `is_lock` tinyint(1)   NULL DEFAULT 0 COMMENT '�Ƿ���������' after `total_amount` , 
	ADD COLUMN `is_distribut` tinyint(1)   NULL DEFAULT 0 COMMENT '�Ƿ�Ϊ������ 0 �� 1 ��' after `is_lock` , 
	ADD COLUMN `first_leader` int(11)   NULL DEFAULT 0 COMMENT '��һ���ϼ�' after `is_distribut` , 
	ADD COLUMN `second_leader` int(11)   NULL DEFAULT 0 COMMENT '�ڶ����ϼ�' after `first_leader` , 
	ADD COLUMN `third_leader` int(11)   NULL DEFAULT 0 COMMENT '�������ϼ�' after `second_leader` ; 

/* Create table in target */
CREATE TABLE `__PREFIX__withdrawals`(
	`id` int(11) NOT NULL  auto_increment COMMENT '���������' , 
	`user_id` int(11) NULL  DEFAULT 0 COMMENT '�û�id' , 
	`create_time` int(11) NULL  DEFAULT 0 COMMENT '��������' , 
	`money` decimal(10,2) NULL  DEFAULT 0.00 COMMENT '���ֽ��' , 
	`bank_name` varchar(32) COLLATE utf8_bin NULL  DEFAULT '' COMMENT '�������� ��֧���� ΢�� �й����� ũҵ���е�' , 
	`account_bank` varchar(32) COLLATE utf8_bin NULL  DEFAULT '' COMMENT '�����˺�' , 
	`account_name` varchar(32) COLLATE utf8_bin NULL  DEFAULT '' COMMENT '�����˻��� ������֧����������������' , 
	`remark` varchar(1024) COLLATE utf8_bin NULL  DEFAULT '' COMMENT '���ֱ�ע' , 
	`status` tinyint(1) NULL  DEFAULT 0 COMMENT '����״̬0������1����ɹ�2����ʧ��' , 
	PRIMARY KEY (`id`) 
)  DEFAULT CHARSET='utf8' COLLATE='utf8_general_ci';


alter table `__PREFIX__user_address`
change `country` `country` int(11) default 0 not null comment '����',
change `province` `province` int(11) default 0 not null comment 'ʡ��',
change `city` `city` int(11) default 0 not null comment '����',
change `district` `district` int(11) default 0 not null comment '����',
change `twon` `twon` int(11) default 0 null comment '����'; 

Alter table `__PREFIX__order`
change `country` `country` int(11) UNSIGNED DEFAULT 0 NOT NULL COMMENT '����',
change `province` `province` int(11) UNSIGNED DEFAULT 0 NOT NULL COMMENT 'ʡ��',
change `city` `city` int(11) UNSIGNED DEFAULT 0 NOT NULL COMMENT '����',
change `district` `district` int(11) UNSIGNED DEFAULT 0 NOT NULL COMMENT '����',
change `twon` `twon` int(11) DEFAULT 0 NULL COMMENT '����'; 

alter table `__PREFIX__area_region`
change `shipping_area_id` `shipping_area_id` int(11) unsigned default 0 not null comment '��������id',
change `region_id` `region_id` int(11) unsigned default 0 not null comment '����id��Ӧregion��id' ;