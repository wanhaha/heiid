<?php
	namespace PHPSTORM_META {
	/** @noinspection PhpUnusedLocalVariableInspection */
	/** @noinspection PhpIllegalArrayKeyTypeInspection */
	$STATIC_METHOD_TYPES = [

		\D('') => [
			'Order' instanceof Admin\Model\OrderModel,
			'Adv' instanceof Think\Model\AdvModel,
			'Mongo' instanceof Think\Model\MongoModel,
			'View' instanceof Think\Model\ViewModel,
			'Relation' instanceof Think\Model\RelationModel,
			'Spec' instanceof Admin\Model\SpecModel,
			'GoodsAttribute' instanceof Admin\Model\GoodsAttributeModel,
			'User' instanceof Admin\Model\UserModel,
			'Goods' instanceof Admin\Model\GoodsModel,
			'Merge' instanceof Think\Model\MergeModel,
			'GoodsCategory' instanceof Admin\Model\GoodsCategoryModel,
		],
		\DL('') => [
			'ArticleCatLogic' instanceof Admin\Logic\ArticleCatLogic,
			'UserLogic' instanceof Admin\Logic\UserLogic,
			'OrderLogic' instanceof Admin\Logic\OrderLogic,
			'AdLogic' instanceof Home\Logic\AdLogic,
			'ArticleLogic' instanceof Home\Logic\ArticleLogic,
			'Jssdk' instanceof Mobile\Logic\Jssdk,
			'GoodsLogic' instanceof Mobile\Logic\GoodsLogic,
			'UsersLogic' instanceof Home\Logic\UsersLogic,
			'UpgradeLogic' instanceof Admin\Logic\UpgradeLogic,
			'CartLogic' instanceof Home\Logic\CartLogic,
		],
	];
}