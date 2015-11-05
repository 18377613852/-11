//
//  DuoWanNetManager.m
//  BaseProject
//
//  Created by apple-jd09 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "DuoWanNetManager.h"

//很多具有共同点的东西，可以统一定义，比如
//凡是自己写的宏定义， 都需要用K开头，这是编码习惯
#define kOSType     @"OSType":[@"iOS" stringByAppendingString\
:[UIDevice currentDevice].systemVersion]
//把path写到文件头部，使用宏定义形式，方便后期维护
#define kHeroPath @"http://lolbox.duowan.com/phone/apiHeroes.php"//免费英雄，全部英雄
//英雄皮肤
#define kHeroSkinPath @"http://box.dwstatic.com/apiHeroSkin.php"
//英雄配音
#define kHeroSoundsPath @"http://box.dwstatic.com/apiHeroSound.php"
//英雄视频
#define kHeroVideoPath @"http://box.dwstatic.com/apiVideoesNormalDuowan.php"

#define kSystemVersion  [UIDevice currentDevice].systemVersion
//英雄出装
#define kHeroCZPath @"http://db.duowan.com/lolcz/img/ku11/api/lolcz.php"
//英雄资料
#define kHeroDetailPath @"http://lolbox.duowan.com/phone/apiHeroDetail.php"
//天赋符文
#define kHeroTFFWPath @"http://box.dwstatic.com/apiHeroSuggestedGiftAndRun.php"
//英雄改动
#define kHeroChangePath @"http://db.duowan.com/boxnews/heroinfo.php"
//一周数据
#define kWeekDataPath @"http://183.61.12.108/apiHeroWeekData.php"
//游戏百科列表
#define kGameEncyclopediaPath @"http://box.dwstatic.com/apiToolMenu.php"
//装备分类
#define kEquitmentCategoryPath @"http://lolbox.duowan.com/phone/apiZBCategory.php"
//某分类装备列表
#define kMEquitmentCategoryPath @"http://lolbox.duowan.com/phone/apiZBItemList.php"
//装备详情
#define kEquitmentDetailPath @"http://lolbox.duowan.com/phone/apiItemDetail.php"
//天赋
#define kTFPath @"http://lolbox.duowan.com/phone/apiGift.php"
//符文列表
#define kFWListPath @"http://lolbox.duowan.com/phone/apiRunes.php"
//召唤师技能列表
#define kHeroSkillListPath @"http://lolbox.duowan.com/phone/apiSumAbility.php"
//最佳阵容
#define kBestGroupPath @"http://box.dwstatic.com/apiHeroBestGroup.php"

@implementation DuoWanNetManager
//免费英雄
+(id)getFreeHeroCompletionHandle:(void(^)(FreeHeroModel *model,NSError *error))completionHandle{
    
//    NSString *systemVersion = [UIDevice currentDevice].systemVersion;
    
//    NSString *path = [NSString stringWithFormat:@"%@?type=free&v=140&OSType=iOS%@",kHeroPath,systemVersion];
    NSDictionary *parameters = @{@"type":@"free",@"v":@140,kOSType};
    return [self GET:kHeroPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([FreeHeroModel objectWithKeyValues:responseObj],error);
    }];
}
//全部英雄
+(id)getAllHeroCompletionHandle:(void(^)(AllHeroModel *model,NSError *error))completionHandle{
//    http://lolbox.duowan.com/phone/apiHeroes.php?type=all&v=140&OSType=iOS9.1
    NSDictionary *parameters = @{@"type":@"all",@"v":@140,kOSType};
    return [self GET:kHeroPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([AllHeroModel objectWithKeyValues:responseObj],error);
    }];
}

//英雄头像

//英雄技能图标

//英雄皮肤
+(id)getHeroSkinName:(NSString *)name CompletionHandle:(void(^)(NSArray *model,NSError *error))completionHandle{
//   @" http://box.dwstatic.com/apiHeroSkin.php?hero=Braum&v=140&OSType=iOS9.1&versionName=2.4.0
    NSDictionary *parameters = @{@"hero":name,@"v":@140,kOSType,@"versionName":@"2.4.0"};
    return [self GET:kHeroSkinPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([HeroSkinModel objectArrayWithKeyValuesArray:responseObj],error);
    }];
}
//英雄配音
+(id)getHeroSoundsHeroName:(NSString *)heroName CompletionHandle:(void(^)(NSArray *model,NSError *error))completionHandle{
    NSDictionary *parameters = @{@"hero":heroName,@"v":@140,@"versionName":@"2.4.0",kOSType};
    return [self GET:kHeroSoundsPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
//        JSON数据就是标准数组，不需要解析
//        //Json数据就是标准数组，不需要解析
        completionHandle(responseObj,error);
    }];
}
//英雄视频
+(id)getHeroVideoName:(NSString *)name CompletionHandle:(void(^)(NSArray *model,NSError *error))completionHandle{
    //@"http://box.dwstatic.com/apiVideoesNormalDuowan.php?action=l&p=1&v=140&OSType=iOS9.1&tag=Braum&src=letv"
    NSDictionary *parameters = @{@"action":@"l",@"v":@140,kOSType,@"p":@1,@"tag":name,@"src":@"letv"};
    return [self GET:kHeroVideoPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        
        completionHandle([HeroVideoModel objectArrayWithKeyValuesArray:responseObj],error);
    }];
}
//英雄出装
//http://db.duowan.com/lolcz/img/ku11/api/lolcz.php?v=140&OSType=iOS9.1&championName=Braum&limit=7
+(id)getHeroCZName:(NSString *)name CompletionHandle:(void(^)(NSArray *model, NSError *error))completionHandle{
    NSDictionary *parameters = @{@"v":@140,kOSType,@"championName":name,@"limit":@7};
    return [self GET:kHeroCZPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([HeroCZModel objectArrayWithKeyValuesArray:responseObj],error);
    }];
}
//英雄资料
//http://lolbox.duowan.com/phone/apiHeroDetail.php?OSType=iOS9.1&heroName=Braum&v=140
+(id)getHeroDetailName:(NSString *)name CompletionHandle:(void(^)(HeroDetailModel *model, NSError *error))completionHandle{
    NSDictionary *parameters = @{@"v":@140,kOSType,@"heroName":name};
    return [self GET:kHeroDetailPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([HeroDetailModel objectWithKeyValues:responseObj],error);
    }];
}
//英雄排行
//http://lolbox.duowan.com/phone/heroTop10PlayersNew.php?hero=Braum

//天赋符文
//http://box.dwstatic.com/apiHeroSuggestedGiftAndRun.php?hero=Braum&v=140&OSType=iOS9.1
+(id)getHeroTFFWName:(NSString *)name CompletionHandle:(void(^)(NSArray *model, NSError *error))completionHandle{
    NSDictionary *parameters = @{@"v":@140,kOSType,@"hero":name};
    return [self GET:kHeroTFFWPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([HeroTFFWModel objectArrayWithKeyValuesArray:responseObj],error);
    }];
}
//评论
//http://comment3.duowan.com/index.php?r=phone/index&domain=lolbox.duowan.com&url=/heroDetail/Braum&assest

//查战绩
//http://lolbox.duowan.com/phone/playerSearchNew.php?lolboxAction=toInternalWebView

//英雄改动
//http://db.duowan.com/boxnews/heroinfo.php?name=Skarner&v=140&OSType=iOS9.1
+(id)getHeroChangeName:(NSString *)name CompletionHandle:(void(^)(HeroChangeModel *model, NSError *error))completionHandle{
    NSDictionary *parameters = @{@"v":@140,kOSType,@"name":name};
    return [self GET:kHeroChangePath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([HeroChangeModel objectWithKeyValues:responseObj],error);
    }];
}
//一周数据
//http://183.61.12.108/apiHeroWeekData.php?heroId=72
+(id)getWeekDataHeroId:(NSInteger)heroId CompletionHandle:(void(^)(WeekDataModel *model, NSError *error))completionHandle{
    NSDictionary *parameters = @{@"heroId":@(heroId)};
    return [self GET:kWeekDataPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([WeekDataModel objectWithKeyValues:responseObj],error);
    }];
}

//游戏百科————————
//
//游戏百科列表
//http://box.dwstatic.com/apiToolMenu.php?category=database&v=140&OSType=iOS9.1&versionName=2.4.0
+(id)getGameEncyclopediaCompletionHandle:(void(^)(NSArray *model,NSError *error))completionHandle{
    NSDictionary *parameters = @{@"category":@"database",kOSType,@"v":@140,@"versionName":@"2.4.0"};
    return [self GET:kGameEncyclopediaPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([GameEncyclopediaModel objectArrayWithKeyValuesArray:responseObj],error);
    }];
}

//装备分类
//http://lolbox.duowan.com/phone/apiZBCategory.php?v=140&OSType=iOS9.1&versionName=2.4.0
+(id)getEquitmentCategoryCompletionHandle:(void(^)(NSArray *model,NSError *error))completionHandle{
    NSDictionary *parameters = @{@"v":@140,@"versionName":@"2.4.0",kOSType};
    return [self GET:kEquitmentCategoryPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([EquitmentCategoryModel objectArrayWithKeyValuesArray:responseObj],error);
    }];
}

//某分类装备列表
//http://lolbox.duowan.com/phone/apiZBItemList.php?tag=consumable&v=140&OSType=iOS9.1&versionName=2.4.0
+(id)getMEquitmentCategoryTag:(NSString *)tag CompletionHandle:(void(^)(NSArray *model, NSError *error))completionHandle{
    NSDictionary *parameters = @{@"tag":tag,@"v":@140,@"versionName":@"2.4.0",kOSType};
    return [self GET:kMEquitmentCategoryPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([MEquitmentCategoryModel objectArrayWithKeyValuesArray:responseObj],error);
    }];
}

//装备详情
//http://lolbox.duowan.com/phone/apiItemDetail.php?id=3004&v=140&OSType=iOS9.1
+(id)getEquitmentDetailId:(NSInteger)Id CompletionHandle:(void(^)(EquitmentDetailModel *model,NSError *error))completionHandle{
    NSDictionary *parameters = @{@"id":@(Id),@"v":@140,kOSType};
    return [self GET:kEquitmentDetailPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([EquitmentDetailModel objectWithKeyValues:responseObj],error);
    }];
}
//天赋
//http://lolbox.duowan.com/phone/apiGift.php?v=140&OSType=iOS9.1
+(id)getTFCompletionHandle:(void(^)(TFModel *model, NSError *error))completionHandle{
    NSDictionary *parameters = @{@"v":@140,kOSType};
    return [self GET:kTFPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([TFModel objectWithKeyValues:responseObj],error);
    }];
}

//符文列表
//http://lolbox.duowan.com/phone/apiRunes.php?v=140&OSType=iOS9.1
+(id)getFWListCompletionHandle:(void(^)(FWListModel *model,NSError *error))completionHandle{
    NSDictionary *parameters = @{@"v":@140,kOSType};
    return [self GET:kFWListPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([FWListModel objectWithKeyValues:responseObj],error);
    }];
}

//召唤师技能列表
//http://lolbox.duowan.com/phone/apiSumAbility.php?v=140&OSType=iOS9.1
+(id)getHeroSkillListCompletionHandle:(void(^)(NSArray *model, NSError *error))completionHandle{
    NSDictionary *parameters = @{@"v":@140,kOSType};
    
    return [self GET:kHeroSkillListPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([HeroSkillListModel objectArrayWithKeyValuesArray:responseObj],error);
    }];
}

//最佳阵容
//http://box.dwstatic.com/apiHeroBestGroup.php?v=140&OSType=iOS9.1
+(id)getBestGroupCompletionHandle:(void(^)(NSArray *model,NSError *error))completionHandle{
    NSDictionary *parameters = @{@"v":@140,kOSType};
    return [self GET:kBestGroupPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([BestGroupModel objectArrayWithKeyValuesArray:responseObj],error);
    }];
}

//LOL个性关键词查询
//http://service.mbox.duowan.com/index.php?r=tags/index

//LOL小说
//http://m.ouj.com/box?channel=baike
@end
