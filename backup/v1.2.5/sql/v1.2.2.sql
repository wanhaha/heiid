/* Alter table in target */
ALTER TABLE `__PREFIX__order` 
	CHANGE `discount` `discount` decimal(10,2)   NOT NULL COMMENT '�۸����' after `order_prom_amount` ;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;