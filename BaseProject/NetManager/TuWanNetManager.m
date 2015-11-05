//
//  TuWanNetManager.m
//  BaseProject
//
//  Created by apple-jd09 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "TuWanNetManager.h"


#define kTuWanPath @"http://cache.tuwan.com/app/"
#define kAppId @"appid":@1
#define kClassMore @"classmore":@"indexpic"
#define kAppver @"appver":@2.1

@implementation TuWanNetManager

+(id)getTuWanType:(TuWanType)type Start:(NSInteger)start CompletionHandle:(void(^)(TuWanModel *model,NSError *error))completionHandle{

    NSDictionary *parameters = [NSDictionary new];
    switch (type) {
        case TuWanTypeTouTiao: {
            parameters = @{kAppId,kClassMore,kAppId,kAppver,@"start":@(start)};
            
            break;
        }
        case TuWanTypeDuJia: {
            parameters = @{kAppId,kAppId,kAppver,@"start":@(start),@"class":@"heronews",@"mod":@"八卦"};
            break;
        }
        case TuWanTypeAnHei3: {
            parameters = @{kAppId,kAppId,kAppver,@"start":@(start),kClassMore,@"dtid":@83623};
            break;
        }
        case TuWanTypeMoShou: {
            parameters = @{kAppId,kAppId,kAppver,@"start":@(start),kClassMore,@"dtid":@31537};
            break;
        }
        case TuWanTypeFengBao: {
            parameters = @{kAppId,kAppId,kAppver,@"start":@(start),kClassMore,@"dtid":@31538};
            break;
        }
        case TuWanTypeLuShi: {
            parameters = @{kAppId,kAppId,kAppver,kClassMore,@"dtid":@31528};
            break;
        }
        case TuWanTypeXingJi2: {
            parameters = @{kAppId,kAppId,kAppver,@"dtid":@91821};
            break;
        }
        case TuWanTypeShouWang: {
            parameters = @{kAppId,kAppId,kAppver,@"dtid":@57067};
            break;
        }
        case TuWanTypeTuPian: {
            parameters = @{kAppId,kAppId,kAppver,@"dtid":@"83623,31528,31537,31538,57067,91821",@"type":@"pic"};
            break;
        }
        case TuWanTypeShiPin: {
            parameters = @{kAppId,kAppId,kAppver,@"dtid":@"83623,31528,31537,31538,57067,91821",@"type":@"video"};
            break;
        }
        case TuWanTypeGongLue: {
            parameters = @{kAppId,kAppId,kAppver,@"dtid":@"83623,31528,31537,31538,57067,91821",@"type":@"guide"};
            break;
        }
        case TuWanTypeHuanHua: {
            parameters = @{kAppId,kAppId,kAppver,@"class":@"heronews",@"mod":@"幻化"};
            break;
        }
        case TuWanTypeQuWen: {
            parameters = @{kAppId,kAppId,kAppver,@"class":@"heronews",@"mod":@"趣闻",@"dtid":@0,kClassMore};
            break;
        }
        case TuWanTypeCOS: {
            parameters = @{kAppId,kAppId,kAppver,@"class":@"cos",@"mod":@"cos",@"dtid":@0,kClassMore};
            break;
        }
        case TuWanTypeMeiNv: {
            parameters = @{kAppId,kAppId,kAppver,@"class":@"heronews",@"mod":@"美女",kClassMore,@"typechild":@"cos1"};
            break;
        }
        default: {
            break;
        }
    }
    NSString *path = [self percentPathWithPath:kTuWanPath params:parameters];
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandle([TuWanModel objectWithKeyValues:responseObj],error);
    }];
}

//方法：把path和参数拼接起来，把字符串中的中文转换为  百分号 形式，因为有的服务器不接收中文编码
+(NSString *)percentPathWithPath:(NSString *)path params:(NSDictionary *)params{
    NSMutableString *percentPath = [NSMutableString stringWithString:path];
    NSArray *keys = params.allKeys;
    NSInteger count = keys.count;
    for (int i = 0; i < count; i ++) {
        if (i == 0) {
            [percentPath appendFormat:@"?%@=%@",keys[i],params[keys[i]]];
        }else{
            [percentPath appendFormat:@"&%@=%@",keys[i],params[keys[i]]];
        }
    }
    //    把字符串中的中文转为%形式
    return [percentPath stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}
@end



















