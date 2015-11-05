//
//  MusicCategoryContentModel.m
//  BaseProject
//
//  Created by apple-jd09 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MusicCategoryContentModel.h"

@implementation MusicCategoryContentModel

@end
@implementation MusicCategoryContentAlbumModel

@end


@implementation MusicCategoryContentTracksModel

+ (NSDictionary *)objectClassInArray{
    return @{@"list" : [MusicTracksListModel class]};
}

@end


@implementation MusicTracksListModel

@end


