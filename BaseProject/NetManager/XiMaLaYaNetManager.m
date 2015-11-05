//
//  XiMaLaYaNetManager.m
//  BaseProject
//
//  Created by apple-jd09 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "XiMaLaYaNetManager.h"


#define kMusicListPath @"http://mobile.ximalaya.com/mobile/discovery/v1/rankingList/album"
@implementation XiMaLaYaNetManager

+(id)getMusicListPageId:(NSInteger)pageId CompletionHandle:(void(^)(MusicListModel *model, NSError *error))completionHandle{

//    http://mobile.ximalaya.com/mobile/discovery/v1/rankingList/album?device=iPhone&key=ranking:album:played:1:2&pageId=1&pageSize=20&position=0&title=排行榜
    
//    有些服务器自带中文转码，
    NSDictionary *parameters = @{@"device":@"iPhone",@"key":@"ranking:album:played:1:2",@"pageId":@(pageId),@"pageSize":@20,@"position":@0,@"title":@"排行榜"};

    return [self GET:kMusicListPath parameters:parameters completionHandler:^(id responseObj, NSError *error) {
        completionHandle([MusicListModel objectWithKeyValues:responseObj],error);
    }];
    
}
+(id)getMusicCategoryContentID:(NSInteger)ID PageId:(NSInteger)pageId CompletionHandle:(void(^)(MusicCategoryContentModel *model, NSError *error))completionHandle{
    NSString *path = [NSString stringWithFormat:@"http://mobile.ximalaya.com/mobile/others/ca/album/track/%ld/true/%ld/20",ID,pageId];
    return [self GET:path parameters:@{@"device":@"iPhone"} completionHandler:^(id responseObj, NSError *error) {
        completionHandle([MusicCategoryContentModel objectWithKeyValues:responseObj],error);
    }];
    
}
////方法：把path和参数拼接起来，把字符串中的中文转换为  百分号 形式，因为有的服务器不接收中文编码
//+(NSString *)percentPathWithPath:(NSString *)path params:(NSDictionary *)params{
//    NSMutableString *percentPath = [NSMutableString stringWithString:path];
//    NSArray *keys = params.allKeys;
//    NSInteger count = keys.count;
//    for (int i = 0; i < count; i ++) {
//        if (i == 0) {
//            [percentPath appendFormat:@"?%@=%@",keys[i],params[keys[i]]];
//        }else{
//            [percentPath appendFormat:@"&%@=%@",keys[i],params[keys[i]]];
//        }
//    }
//    //    把字符串中的中文转为%形式
//    return [percentPath stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
//}
@end






