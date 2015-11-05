//
//  HeroDetailModel.m
//  BaseProject
//
//  Created by apple-jd09 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "HeroDetailModel.h"

@implementation HeroDetailModel


+ (NSDictionary *)objectClassInArray{
    return @{@"like" : [HeroDetailLikeModel class], @"hate" : [HeroDetailHateModel class]};
}
+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"ID":@"id",@"desc":@"description"};
}
@end
@implementation HeroDetailBraumQModel
+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"ID":@"id",@"desc":@"description"};
}
@end


@implementation HeroDetailBraumRModel
+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"ID":@"id",@"desc":@"description"};
}
@end


@implementation HeroDetailBraumWModel
+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"ID":@"id",@"desc":@"description"};
}
@end


@implementation HeroDetailBraumBModel
+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"ID":@"id",@"desc":@"description"};
}
@end


@implementation HeroDetailBraumEModel
+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"ID":@"id",@"desc":@"description"};
}
@end


@implementation HeroDetailLikeModel

@end


@implementation HeroDetailHateModel

@end


