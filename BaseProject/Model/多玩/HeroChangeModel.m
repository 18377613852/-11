//
//  HeroChangeModel.m
//  BaseProject
//
//  Created by apple-jd09 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "HeroChangeModel.h"

@implementation HeroChangeModel


+ (NSDictionary *)objectClassInArray{
    return @{@"changeLog" : [HeroChangelogModel class]};
}
@end
@implementation HeroChangelogModel

@end


