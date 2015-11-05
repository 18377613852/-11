//
//  TuWanNetManager.h
//  BaseProject
//
//  Created by apple-jd09 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "TuWanModel.h"
//只要共用一个解析类的请求，就可以合起来写，只需要使用枚举变量，来决定不同的请求地址即可，可以参考汽车之家

typedef NS_ENUM(NSUInteger,TuWanType) {
    TuWanTypeTouTiao,
    TuWanTypeDuJia,
    TuWanTypeAnHei3,
    TuWanTypeMoShou,
    TuWanTypeFengBao,
    TuWanTypeLuShi,
    TuWanTypeXingJi2,
    TuWanTypeShouWang,
    TuWanTypeTuPian,
    TuWanTypeShiPin,
    TuWanTypeGongLue,
    TuWanTypeHuanHua,
    TuWanTypeQuWen,
    TuWanTypeCOS,
    TuWanTypeMeiNv,
};

@interface TuWanNetManager : BaseNetManager

+(id)getTuWanType:(TuWanType)type Start:(NSInteger)start CompletionHandle:(void(^)(TuWanModel *model,NSError *error))completionHandle;

@end












