//
//  DuoWanNetManager.h
//  BaseProject
//
//  Created by apple-jd09 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "FreeHeroModel.h"
#import "AllHeroModel.h"
#import "HeroSkinModel.h"
#import "HeroVideoModel.h"
#import "HeroCZModel.h"
#import "HeroDetailModel.h"
#import "HeroTFFWModel.h"
#import "HeroChangeModel.h"
#import "WeekDataModel.h"
#import "GameEncyclopediaModel.h"
#import "EquitmentCategoryModel.h"
#import "MEquitmentCategoryModel.h"
#import "EquitmentDetailModel.h"
#import "TFModel.h"
#import "FWListModel.h"
#import "HeroSkillListModel.h"
#import "BestGroupModel.h"
@interface DuoWanNetManager : BaseNetManager
//免费英雄
+(id)getFreeHeroCompletionHandle:(void(^)(FreeHeroModel *model,NSError *error))completionHandle;
//全部英雄
+(id)getAllHeroCompletionHandle:(void(^)(AllHeroModel *model,NSError *error))completionHandle;
//英雄头像

//英雄技能图标

//英雄皮肤
+(id)getHeroSkinName:(NSString *)name CompletionHandle:(void(^)(NSArray *model,NSError *error))completionHandle;
//英雄配音
+(id)getHeroSoundsHeroName:(NSString *)heroName CompletionHandle:(void(^)(NSArray *model,NSError *error))completionHandle;

//英雄视频
+(id)getHeroVideoName:(NSString *)name CompletionHandle:(void(^)(NSArray *model,NSError *error))completionHandle;
//英雄出装
//http://db.duowan.com/lolcz/img/ku11/api/lolcz.php?v=140&OSType=iOS9.1&championName=Braum&limit=7
+(id)getHeroCZName:(NSString *)name CompletionHandle:(void(^)(NSArray *model, NSError *error))completionHandle;
//英雄资料
//http://lolbox.duowan.com/phone/apiHeroDetail.php?OSType=iOS9.1&heroName=Braum&v=140
+(id)getHeroDetailName:(NSString *)name CompletionHandle:(void(^)(HeroDetailModel *model, NSError *error))completionHandle;
//英雄排行
//http://lolbox.duowan.com/phone/heroTop10PlayersNew.php?hero=Braum

//天赋符文
//http://box.dwstatic.com/apiHeroSuggestedGiftAndRun.php?hero=Braum&v=140&OSType=iOS9.1
+(id)getHeroTFFWName:(NSString *)name CompletionHandle:(void(^)(NSArray *model, NSError *error))completionHandle;
//评论
//http://comment3.duowan.com/index.php?r=phone/index&domain=lolbox.duowan.com&url=/heroDetail/Braum&assest

//查战绩
//http://lolbox.duowan.com/phone/playerSearchNew.php?lolboxAction=toInternalWebView

//英雄改动
//http://db.duowan.com/boxnews/heroinfo.php?name=Skarner&v=140&OSType=iOS9.1
+(id)getHeroChangeName:(NSString *)name CompletionHandle:(void(^)(HeroChangeModel *model, NSError *error))completionHandle;
//一周数据
//http://183.61.12.108/apiHeroWeekData.php?heroId=72
+(id)getWeekDataHeroId:(NSInteger)heroId CompletionHandle:(void(^)(WeekDataModel *model, NSError *error))completionHandle;

//游戏百科————————
//
//游戏百科列表
//http://box.dwstatic.com/apiToolMenu.php?category=database&v=140&OSType=iOS9.1&versionName=2.4.0
+(id)getGameEncyclopediaCompletionHandle:(void(^)(NSArray *model,NSError *error))completionHandle;

//装备分类
//http://lolbox.duowan.com/phone/apiZBCategory.php?v=140&OSType=iOS9.1&versionName=2.4.0
+(id)getEquitmentCategoryCompletionHandle:(void(^)(NSArray *model,NSError *error))completionHandle;

//某分类装备列表
//http://lolbox.duowan.com/phone/apiZBItemList.php?tag=consumable&v=140&OSType=iOS9.1&versionName=2.4.0
+(id)getMEquitmentCategoryTag:(NSString *)tag CompletionHandle:(void(^)(NSArray *model, NSError *error))completionHandle;

//装备详情
//http://lolbox.duowan.com/phone/apiItemDetail.php?id=3004&v=140&OSType=iOS9.1
+(id)getEquitmentDetailId:(NSInteger)Id CompletionHandle:(void(^)(EquitmentDetailModel *model,NSError *error))completionHandle;
//天赋
//http://lolbox.duowan.com/phone/apiGift.php?v=140&OSType=iOS9.1
+(id)getTFCompletionHandle:(void(^)(TFModel *model, NSError *error))completionHandle;

//符文列表
//http://lolbox.duowan.com/phone/apiRunes.php?v=140&OSType=iOS9.1
+(id)getFWListCompletionHandle:(void(^)(FWListModel *model,NSError *error))completionHandle;

//召唤师技能列表
//http://lolbox.duowan.com/phone/apiSumAbility.php?v=140&OSType=iOS9.1
+(id)getHeroSkillListCompletionHandle:(void(^)(NSArray *model, NSError *error))completionHandle;

//最佳阵容
//http://box.dwstatic.com/apiHeroBestGroup.php?v=140&OSType=iOS9.1
+(id)getBestGroupCompletionHandle:(void(^)(NSArray *model,NSError *error))completionHandle;

//LOL个性关键词查询
//http://service.mbox.duowan.com/index.php?r=tags/index

//LOL小说
//http://m.ouj.com/box?channel=baike
@end


















