//
//  FWListModel.m
//  BaseProject
//
//  Created by apple-jd09 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "FWListModel.h"

@implementation FWListModel


+ (NSDictionary *)objectClassInArray{
    return @{@"Purple" : [FWListPurpleModel class], @"Yellow" : [FWListYellowModel class], @"Blue" : [FWListBlueModel class], @"Red" : [FWListRedModel class]};
}
@end
@implementation FWListPurpleModel

@end


@implementation FWListYellowModel

@end


@implementation FWListBlueModel

@end


@implementation FWListRedModel

@end


