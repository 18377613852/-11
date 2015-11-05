//
//  TuWanModel.m
//  BaseProject
//
//  Created by apple-jd09 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "TuWanModel.h"

@implementation TuWanModel

@end
@implementation TuWanDataModel

+ (NSDictionary *)objectClassInArray{
    return @{@"indexpic" : [TuWanDataIndexpicModel class], @"list" : [TuWanDataIndexpicModel class]};
}

@end


@implementation TuWanDataIndexpicModel

+ (NSDictionary *)objectClassInArray{
    return @{@"showitem" : [TuWanDataIndexPicShowitemModel class]};
}

+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"typeName":@"typename",@"desc":@"description"};
}

@end


@implementation TuWanDataIndexpicInfochildModel

@end


@implementation TuWanDataIndexPicShowitemModel

@end


@implementation TuWanDataIndexpicShowitemInfoModel

@end





